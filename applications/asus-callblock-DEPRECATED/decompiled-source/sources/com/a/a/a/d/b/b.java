package com.a.a.a.d.b;

import com.asus.updatesdk.BuildConfig;
import com.google.gson.annotations.SerializedName;
import com.google.gson.f;
import com.google.gson.i;
import com.google.gson.l;
import com.google.gson.n;
import com.google.gson.o;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/a/a/a/d/b/b.class */
public final class b {
    private static String a(Class cls) {
        String str;
        Field[] declaredFields = cls.getDeclaredFields();
        int length = declaredFields.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                str = BuildConfig.FLAVOR;
                break;
            }
            Field field = declaredFields[i];
            SerializedName serializedName = (SerializedName) field.getAnnotation(SerializedName.class);
            if (serializedName != null && serializedName.value().equalsIgnoreCase("id")) {
                str = serializedName.value();
                break;
            } else if (field.getName().equalsIgnoreCase("id")) {
                str = field.getName();
                break;
            } else {
                i++;
            }
        }
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> List<E> a(l lVar, f fVar, Class<E> cls) {
        ArrayList arrayList = new ArrayList();
        String a2 = a(cls);
        if (lVar instanceof i) {
            Iterator<l> it = lVar.h().iterator();
            while (it.hasNext()) {
                l next = it.next();
                a(next.g(), a2);
                arrayList.add(fVar.a(next, cls));
            }
        } else {
            if (lVar instanceof o) {
                a(lVar.g(), a2);
            }
            arrayList.add(fVar.a(lVar, cls));
        }
        return arrayList;
    }

    private static void a(o oVar, String str) {
        if (!str.equals("id") && str.length() != 0 && oVar.a("id")) {
            l b2 = oVar.b("id");
            String b3 = b2 instanceof n ? null : b2.b();
            oVar.f4554a.remove("id");
            oVar.a(str, b3);
        }
    }
}
