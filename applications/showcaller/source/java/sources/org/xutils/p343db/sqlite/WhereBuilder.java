package org.xutils.p343db.sqlite;

import android.text.TextUtils;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.xutils.p343db.table.ColumnUtils;
/* renamed from: org.xutils.db.sqlite.WhereBuilder */
/* loaded from: classes2-dex2jar.jar:org/xutils/db/sqlite/WhereBuilder.class */
public class WhereBuilder {

    /* renamed from: a */
    private final List<String> f40638a = new ArrayList();

    private WhereBuilder() {
    }

    /* renamed from: a */
    private void m230a(String str, String str2, String str3, Object obj) {
        String str4;
        ArrayList arrayList;
        ArrayList<Object> arrayList2;
        StringBuilder sb = new StringBuilder();
        if (this.f40638a.size() > 0) {
            sb.append(" ");
        }
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            sb.append(" ");
        }
        sb.append("\"");
        sb.append(str2);
        sb.append("\"");
        if ("!=".equals(str3)) {
            str4 = "<>";
        } else {
            str4 = str3;
            if ("==".equals(str3)) {
                str4 = "=";
            }
        }
        if (obj != null) {
            sb.append(" ");
            sb.append(str4);
            sb.append(" ");
            int i = 0;
            if ("IN".equalsIgnoreCase(str4)) {
                if (obj instanceof Iterable) {
                    arrayList2 = (Iterable) obj;
                } else {
                    arrayList2 = null;
                    if (obj.getClass().isArray()) {
                        int length = Array.getLength(obj);
                        ArrayList arrayList3 = new ArrayList(length);
                        while (true) {
                            arrayList2 = arrayList3;
                            if (i >= length) {
                                break;
                            }
                            arrayList3.add(Array.get(obj, i));
                            i++;
                        }
                    }
                }
                if (arrayList2 == null) {
                    throw new IllegalArgumentException("value must be an Array or an Iterable.");
                }
                StringBuilder sb2 = new StringBuilder("(");
                for (Object obj2 : arrayList2) {
                    Object convert2DbValueIfNeeded = ColumnUtils.convert2DbValueIfNeeded(obj2);
                    if (ColumnUtils.isTextColumnDbType(convert2DbValueIfNeeded)) {
                        String convert2SafeExpr = ColumnUtils.convert2SafeExpr(convert2DbValueIfNeeded);
                        sb2.append("'");
                        sb2.append(convert2SafeExpr);
                        sb2.append("'");
                    } else {
                        sb2.append(convert2DbValueIfNeeded);
                    }
                    sb2.append(",");
                }
                if (sb2.length() > 1) {
                    sb2.deleteCharAt(sb2.length() - 1);
                }
                sb2.append(")");
                sb.append(sb2.toString());
            } else if ("BETWEEN".equalsIgnoreCase(str4)) {
                if (obj instanceof Iterable) {
                    arrayList = (Iterable) obj;
                } else {
                    arrayList = null;
                    if (obj.getClass().isArray()) {
                        int length2 = Array.getLength(obj);
                        ArrayList arrayList4 = new ArrayList(length2);
                        int i2 = 0;
                        while (true) {
                            arrayList = arrayList4;
                            if (i2 >= length2) {
                                break;
                            }
                            arrayList4.add(Array.get(obj, i2));
                            i2++;
                        }
                    }
                }
                if (arrayList == null) {
                    throw new IllegalArgumentException("value must be an Array or an Iterable.");
                }
                Iterator it = arrayList.iterator();
                if (!it.hasNext()) {
                    throw new IllegalArgumentException("value must contains tow items.");
                }
                Object next = it.next();
                if (!it.hasNext()) {
                    throw new IllegalArgumentException("value must contains tow items.");
                }
                Object next2 = it.next();
                Object convert2DbValueIfNeeded2 = ColumnUtils.convert2DbValueIfNeeded(next);
                Object convert2DbValueIfNeeded3 = ColumnUtils.convert2DbValueIfNeeded(next2);
                if (ColumnUtils.isTextColumnDbType(convert2DbValueIfNeeded2)) {
                    String convert2SafeExpr2 = ColumnUtils.convert2SafeExpr(convert2DbValueIfNeeded2);
                    String convert2SafeExpr3 = ColumnUtils.convert2SafeExpr(convert2DbValueIfNeeded3);
                    sb.append("'");
                    sb.append(convert2SafeExpr2);
                    sb.append("'");
                    sb.append(" AND ");
                    sb.append("'");
                    sb.append(convert2SafeExpr3);
                    sb.append("'");
                } else {
                    sb.append(convert2DbValueIfNeeded2);
                    sb.append(" AND ");
                    sb.append(convert2DbValueIfNeeded3);
                }
            } else {
                Object convert2DbValueIfNeeded4 = ColumnUtils.convert2DbValueIfNeeded(obj);
                if (ColumnUtils.isTextColumnDbType(convert2DbValueIfNeeded4)) {
                    String convert2SafeExpr4 = ColumnUtils.convert2SafeExpr(convert2DbValueIfNeeded4);
                    sb.append("'");
                    sb.append(convert2SafeExpr4);
                    sb.append("'");
                } else {
                    sb.append(convert2DbValueIfNeeded4);
                }
            }
        } else if ("=".equals(str4)) {
            sb.append(" IS NULL");
        } else if ("<>".equals(str4)) {
            sb.append(" IS NOT NULL");
        } else {
            sb.append(" ");
            sb.append(str4);
            sb.append(" NULL");
        }
        this.f40638a.add(sb.toString());
    }

    /* renamed from: b */
    public static WhereBuilder m229b() {
        return new WhereBuilder();
    }

    /* renamed from: b */
    public static WhereBuilder m228b(String str, String str2, Object obj) {
        WhereBuilder whereBuilder = new WhereBuilder();
        whereBuilder.m230a(null, str, str2, obj);
        return whereBuilder;
    }

    public WhereBuilder and(String str, String str2, Object obj) {
        m230a(this.f40638a.size() == 0 ? null : "AND", str, str2, obj);
        return this;
    }

    public WhereBuilder and(WhereBuilder whereBuilder) {
        String str = this.f40638a.size() == 0 ? " " : "AND ";
        return expr(str + "(" + whereBuilder.toString() + ")");
    }

    public WhereBuilder expr(String str) {
        List<String> list = this.f40638a;
        list.add(" " + str);
        return this;
    }

    public int getWhereItemSize() {
        return this.f40638a.size();
    }

    /* renamed from: or */
    public WhereBuilder m227or(String str, String str2, Object obj) {
        m230a(this.f40638a.size() == 0 ? null : "OR", str, str2, obj);
        return this;
    }

    /* renamed from: or */
    public WhereBuilder m226or(WhereBuilder whereBuilder) {
        String str = this.f40638a.size() == 0 ? " " : "OR ";
        return expr(str + "(" + whereBuilder.toString() + ")");
    }

    public String toString() {
        if (this.f40638a.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (String str : this.f40638a) {
            sb.append(str);
        }
        return sb.toString();
    }
}
