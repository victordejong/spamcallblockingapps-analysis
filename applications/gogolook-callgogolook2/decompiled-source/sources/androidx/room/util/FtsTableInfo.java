package androidx.room.util;

import android.database.Cursor;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.sqlite.p008db.SupportSQLiteDatabase;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/room/util/FtsTableInfo.class */
public class FtsTableInfo {
    public static final String[] FTS_OPTIONS = {"tokenize=", "compress=", "content=", "languageid=", "matchinfo=", "notindexed=", "order=", "prefix=", "uncompress="};
    public final Set<String> columns;
    public final String name;
    public final Set<String> options;

    public FtsTableInfo(String str, Set<String> set, String str2) {
        this.name = str;
        this.columns = set;
        this.options = parseOptions(str2);
    }

    public FtsTableInfo(String str, Set<String> set, Set<String> set2) {
        this.name = str;
        this.columns = set;
        this.options = set2;
    }

    @VisibleForTesting
    public static Set<String> parseOptions(String str) {
        if (str.isEmpty()) {
            return new HashSet();
        }
        String substring = str.substring(str.indexOf(40) + 1, str.lastIndexOf(41));
        ArrayList<String> arrayList = new ArrayList();
        ArrayDeque arrayDeque = new ArrayDeque();
        int i = -1;
        for (int i2 = 0; i2 < substring.length(); i2++) {
            char charAt = substring.charAt(i2);
            if (!(charAt == '\"' || charAt == '\'')) {
                if (charAt == ',') {
                    i = i;
                    if (arrayDeque.isEmpty()) {
                        arrayList.add(substring.substring(i + 1, i2).trim());
                        i = i2;
                    }
                } else if (charAt == '[') {
                    i = i;
                    if (arrayDeque.isEmpty()) {
                        arrayDeque.push(Character.valueOf(charAt));
                        i = i;
                    }
                } else if (charAt == ']') {
                    i = i;
                    if (!arrayDeque.isEmpty()) {
                        i = i;
                        if (((Character) arrayDeque.peek()).charValue() == '[') {
                            arrayDeque.pop();
                            i = i;
                        }
                    }
                } else if (charAt != '`') {
                    i = i;
                }
            }
            if (arrayDeque.isEmpty()) {
                arrayDeque.push(Character.valueOf(charAt));
                i = i;
            } else {
                i = i;
                if (((Character) arrayDeque.peek()).charValue() == charAt) {
                    arrayDeque.pop();
                    i = i;
                }
            }
        }
        arrayList.add(substring.substring(i + 1).trim());
        HashSet hashSet = new HashSet();
        for (String str2 : arrayList) {
            for (String str3 : FTS_OPTIONS) {
                if (str2.startsWith(str3)) {
                    hashSet.add(str2);
                }
            }
        }
        return hashSet;
    }

    public static FtsTableInfo read(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        return new FtsTableInfo(str, readColumns(supportSQLiteDatabase, str), readOptions(supportSQLiteDatabase, str));
    }

    public static Set<String> readColumns(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        Cursor query = supportSQLiteDatabase.query("PRAGMA table_info(`" + str + "`)");
        HashSet hashSet = new HashSet();
        try {
            if (query.getColumnCount() > 0) {
                int columnIndex = query.getColumnIndex("name");
                while (query.moveToNext()) {
                    hashSet.add(query.getString(columnIndex));
                }
            }
            return hashSet;
        } finally {
            query.close();
        }
    }

    /* JADX WARN: Finally extract failed */
    public static Set<String> readOptions(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        Cursor query = supportSQLiteDatabase.query("SELECT * FROM sqlite_master WHERE `name` = '" + str + "'");
        try {
            String string = query.moveToFirst() ? query.getString(query.getColumnIndexOrThrow("sql")) : "";
            query.close();
            return parseOptions(string);
        } catch (Throwable th) {
            query.close();
            throw th;
        }
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || FtsTableInfo.class != obj.getClass()) {
            return false;
        }
        FtsTableInfo ftsTableInfo = (FtsTableInfo) obj;
        String str = this.name;
        if (str != null) {
            if (!str.equals(ftsTableInfo.name)) {
                return false;
            }
        } else if (ftsTableInfo.name != null) {
            return false;
        }
        Set<String> set = this.columns;
        if (set != null) {
            if (!set.equals(ftsTableInfo.columns)) {
                return false;
            }
        } else if (ftsTableInfo.columns != null) {
            return false;
        }
        Set<String> set2 = this.options;
        Set<String> set3 = ftsTableInfo.options;
        if (set2 != null) {
            z = set2.equals(set3);
        } else if (set3 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.name;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Set<String> set = this.columns;
        int hashCode2 = set != null ? set.hashCode() : 0;
        Set<String> set2 = this.options;
        if (set2 != null) {
            i = set2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        return "FtsTableInfo{name='" + this.name + "', columns=" + this.columns + ", options=" + this.options + '}';
    }
}
