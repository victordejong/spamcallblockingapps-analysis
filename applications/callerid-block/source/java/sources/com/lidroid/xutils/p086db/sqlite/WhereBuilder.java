package com.lidroid.xutils.p086db.sqlite;

import android.text.TextUtils;
import com.lidroid.xutils.p086db.converter.ColumnConverterFactory;
import com.lidroid.xutils.p086db.table.ColumnUtils;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.lidroid.xutils.db.sqlite.WhereBuilder */
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/db/sqlite/WhereBuilder.class */
public class WhereBuilder {
    private final List<String> whereItems = new ArrayList();

    private WhereBuilder() {
    }

    private void appendCondition(String str, String str2, String str3, Object obj) {
        String str4;
        Object obj2;
        StringBuilder sb;
        String str5;
        String sb2;
        ArrayList arrayList;
        ArrayList<Object> arrayList2;
        StringBuilder sb3 = new StringBuilder();
        if (this.whereItems.size() > 0) {
            sb3.append(" ");
        }
        if (!TextUtils.isEmpty(str)) {
            sb3.append(str + " ");
        }
        sb3.append(str2);
        if ("!=".equals(str3)) {
            str4 = "<>";
        } else {
            str4 = str3;
            if ("==".equals(str3)) {
                str4 = "=";
            }
        }
        if (obj != null) {
            sb3.append(" " + str4 + " ");
            int i = 0;
            if ("IN".equalsIgnoreCase(str4)) {
                if (obj instanceof Iterable) {
                    arrayList2 = (Iterable) obj;
                } else {
                    arrayList2 = null;
                    if (obj.getClass().isArray()) {
                        ArrayList arrayList3 = new ArrayList();
                        int length = Array.getLength(obj);
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
                StringBuffer stringBuffer = new StringBuffer("(");
                for (Object obj3 : arrayList2) {
                    Object convert2DbColumnValueIfNeeded = ColumnUtils.convert2DbColumnValueIfNeeded(obj3);
                    if (ColumnDbType.TEXT.equals(ColumnConverterFactory.getDbColumnType(convert2DbColumnValueIfNeeded.getClass()))) {
                        String obj4 = convert2DbColumnValueIfNeeded.toString();
                        String str6 = obj4;
                        if (obj4.indexOf(39) != -1) {
                            str6 = obj4.replace("'", "''");
                        }
                        stringBuffer.append("'" + str6 + "'");
                    } else {
                        stringBuffer.append(convert2DbColumnValueIfNeeded);
                    }
                    stringBuffer.append(",");
                }
                stringBuffer.deleteCharAt(stringBuffer.length() - 1);
                stringBuffer.append(")");
                sb2 = stringBuffer.toString();
            } else if (!"BETWEEN".equalsIgnoreCase(str4)) {
                Object convert2DbColumnValueIfNeeded2 = ColumnUtils.convert2DbColumnValueIfNeeded(obj);
                obj2 = convert2DbColumnValueIfNeeded2;
                if (ColumnDbType.TEXT.equals(ColumnConverterFactory.getDbColumnType(convert2DbColumnValueIfNeeded2.getClass()))) {
                    String obj5 = convert2DbColumnValueIfNeeded2.toString();
                    str5 = obj5;
                    if (obj5.indexOf(39) != -1) {
                        str5 = obj5.replace("'", "''");
                    }
                    sb = new StringBuilder();
                    sb.append("'");
                    sb.append(str5);
                    sb.append("'");
                    sb2 = sb.toString();
                }
                sb3.append(obj2);
                this.whereItems.add(sb3.toString());
            } else {
                if (obj instanceof Iterable) {
                    arrayList = (Iterable) obj;
                } else {
                    arrayList = null;
                    if (obj.getClass().isArray()) {
                        ArrayList arrayList4 = new ArrayList();
                        int length2 = Array.getLength(obj);
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
                    throw new IllegalArgumentException("value must have tow items.");
                }
                Object next = it.next();
                if (!it.hasNext()) {
                    throw new IllegalArgumentException("value must have tow items.");
                }
                Object next2 = it.next();
                Object convert2DbColumnValueIfNeeded3 = ColumnUtils.convert2DbColumnValueIfNeeded(next);
                obj2 = ColumnUtils.convert2DbColumnValueIfNeeded(next2);
                if (!ColumnDbType.TEXT.equals(ColumnConverterFactory.getDbColumnType(convert2DbColumnValueIfNeeded3.getClass()))) {
                    sb3.append(convert2DbColumnValueIfNeeded3);
                    sb3.append(" AND ");
                    sb3.append(obj2);
                    this.whereItems.add(sb3.toString());
                }
                String obj6 = convert2DbColumnValueIfNeeded3.toString();
                String str7 = obj6;
                if (obj6.indexOf(39) != -1) {
                    str7 = obj6.replace("'", "''");
                }
                String obj7 = obj2.toString();
                str5 = obj7;
                if (obj7.indexOf(39) != -1) {
                    str5 = obj7.replace("'", "''");
                }
                sb3.append("'" + str7 + "'");
                sb3.append(" AND ");
                sb = new StringBuilder();
                sb.append("'");
                sb.append(str5);
                sb.append("'");
                sb2 = sb.toString();
            }
        } else if ("=".equals(str4)) {
            sb2 = " IS NULL";
        } else if ("<>".equals(str4)) {
            sb2 = " IS NOT NULL";
        } else {
            sb2 = " " + str4 + " NULL";
        }
        sb3.append(sb2);
        this.whereItems.add(sb3.toString());
    }

    /* renamed from: b */
    public static WhereBuilder m2014b() {
        return new WhereBuilder();
    }

    /* renamed from: b */
    public static WhereBuilder m2013b(String str, String str2, Object obj) {
        WhereBuilder whereBuilder = new WhereBuilder();
        whereBuilder.appendCondition(null, str, str2, obj);
        return whereBuilder;
    }

    public WhereBuilder and(String str, String str2, Object obj) {
        appendCondition(this.whereItems.size() == 0 ? null : "AND", str, str2, obj);
        return this;
    }

    public WhereBuilder expr(String str) {
        List<String> list = this.whereItems;
        list.add(" " + str);
        return this;
    }

    public WhereBuilder expr(String str, String str2, Object obj) {
        appendCondition(null, str, str2, obj);
        return this;
    }

    public int getWhereItemSize() {
        return this.whereItems.size();
    }

    /* renamed from: or */
    public WhereBuilder m2012or(String str, String str2, Object obj) {
        appendCondition(this.whereItems.size() == 0 ? null : "OR", str, str2, obj);
        return this;
    }

    public String toString() {
        if (this.whereItems.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (String str : this.whereItems) {
            sb.append(str);
        }
        return sb.toString();
    }
}
