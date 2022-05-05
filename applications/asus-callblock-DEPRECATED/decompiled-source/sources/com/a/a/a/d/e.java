package com.a.a.a.d;

import android.util.Pair;
import com.a.a.a.b;
import com.a.a.a.d;
import com.google.gson.annotations.SerializedName;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/a/a/a/d/e.class */
public abstract class e implements f {

    /* renamed from: b  reason: collision with root package name */
    protected static final TreeMap<String, c> f404b;
    protected static final String c = a(c.Version);
    protected static final List<String> d;
    protected b e;
    protected String f;
    protected EnumSet<c> g = EnumSet.noneOf(c.class);
    protected EnumSet<d> h = EnumSet.noneOf(d.class);

    static {
        TreeMap<String, c> treeMap = new TreeMap<>(String.CASE_INSENSITIVE_ORDER);
        f404b = treeMap;
        treeMap.put(a(c.CreatedAt), c.CreatedAt);
        f404b.put(a(c.UpdatedAt), c.UpdatedAt);
        f404b.put(a(c.Version), c.Version);
        f404b.put(a(c.Deleted), c.Deleted);
        ArrayList arrayList = new ArrayList();
        d = arrayList;
        arrayList.add("id");
        d.add("iD");
        d.add("Id");
        d.add("ID");
    }

    public e(String str, b bVar) {
        if (str == null || str.toString().trim().length() == 0) {
            throw new IllegalArgumentException("Invalid Table Name");
        } else if (bVar == null) {
            throw new IllegalArgumentException("Invalid Mobile Service Client");
        } else {
            this.e = bVar;
            this.f = str;
        }
    }

    private static String a(c cVar) {
        String trim = cVar.toString().trim();
        return "__" + trim.toLowerCase(Locale.getDefault()).charAt(0) + trim.substring(1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <F> EnumSet<c> a(Class<F> cls) {
        Class<?> cls2;
        Field[] declaredFields;
        EnumSet<c> noneOf = EnumSet.noneOf(c.class);
        Field[] declaredFields2 = cls.getDeclaredFields();
        int length = declaredFields2.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                cls2 = null;
                break;
            }
            Field field = declaredFields2[i];
            SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
            if (serializedName != null) {
                if (d.contains(serializedName.value())) {
                    cls2 = field.getType();
                    break;
                }
                i++;
            } else if (d.contains(field.getName())) {
                cls2 = field.getType();
                break;
            } else {
                i++;
            }
        }
        if (cls2 != null) {
            if (!(cls2.equals(Integer.class) || cls2.equals(Long.class) || cls2.equals(Integer.TYPE) || cls2.equals(Long.TYPE))) {
                for (Field field2 : cls.getDeclaredFields()) {
                    SerializedName serializedName2 = (SerializedName) field2.getAnnotation(SerializedName.class);
                    if (serializedName2 != null) {
                        if (f404b.containsKey(serializedName2.value())) {
                            noneOf.add(f404b.get(serializedName2.value()));
                        }
                    } else if (f404b.containsKey(field2.getName())) {
                        noneOf.add(f404b.get(field2.getName()));
                    }
                }
            }
        }
        return noneOf;
    }

    private static String b(EnumSet<c> enumSet) {
        String str;
        if (enumSet == null || enumSet.isEmpty()) {
            str = null;
        } else if (enumSet.containsAll(EnumSet.allOf(c.class))) {
            str = "*";
        } else {
            StringBuilder sb = new StringBuilder();
            Iterator it = enumSet.iterator();
            int i = 0;
            while (it.hasNext()) {
                sb.append(a((c) it.next()));
                i++;
                if (i < enumSet.size()) {
                    sb.append(",");
                }
            }
            str = sb.toString();
        }
        return str;
    }

    @Override // com.a.a.a.d.f
    public EnumSet<c> a() {
        return this.g;
    }

    @Override // com.a.a.a.d.f
    public List<Pair<String, String>> a(EnumSet<c> enumSet, List<Pair<String, String>> list) {
        boolean z;
        String b2;
        ArrayList arrayList = new ArrayList(list != null ? list.size() : 0);
        if (list != null) {
            Iterator<Pair<String, String>> it = list.iterator();
            boolean z2 = false;
            while (true) {
                z = z2;
                if (!it.hasNext()) {
                    break;
                }
                Pair<String, String> next = it.next();
                arrayList.add(next);
                z2 = z2 || ((String) next.first).equalsIgnoreCase("__systemproperties");
            }
        } else {
            z = false;
        }
        if (!z && (b2 = b(enumSet)) != null) {
            arrayList.add(new Pair("__systemproperties", b2));
        }
        return arrayList;
    }

    public void a(EnumSet<c> enumSet) {
        this.g = enumSet;
    }
}
