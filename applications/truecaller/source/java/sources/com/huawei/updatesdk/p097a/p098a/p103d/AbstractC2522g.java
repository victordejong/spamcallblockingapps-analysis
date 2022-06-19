package com.huawei.updatesdk.p097a.p098a.p103d;

import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.a.a.d.g */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/a/d/g.class */
public abstract class AbstractC2522g {

    /* renamed from: a */
    private static final String f8190a = "g";

    /* renamed from: a */
    public static Class m36820a(Field field) {
        Class cls;
        int i;
        if (Map.class.isAssignableFrom(field.getType())) {
            i = 1;
        } else if (!List.class.isAssignableFrom(field.getType())) {
            cls = null;
            return cls;
        } else {
            i = 0;
        }
        cls = m36819a(field, i);
        return cls;
    }

    /* renamed from: a */
    private static Class m36819a(Field field, int i) {
        Class<?> cls;
        Type[] actualTypeArguments;
        Type genericType = field.getGenericType();
        if ((genericType instanceof ParameterizedType) && (actualTypeArguments = ((ParameterizedType) genericType).getActualTypeArguments()) != null && actualTypeArguments.length > i) {
            try {
                if (actualTypeArguments[i] instanceof Class) {
                    cls = (Class) actualTypeArguments[i];
                } else {
                    String obj = actualTypeArguments[i].toString();
                    int indexOf = obj.indexOf("class ");
                    int i2 = indexOf;
                    if (indexOf < 0) {
                        i2 = 0;
                    }
                    int indexOf2 = obj.indexOf("<");
                    int i3 = indexOf2;
                    if (indexOf2 < 0) {
                        i3 = obj.length();
                    }
                    cls = Class.forName(obj.substring(i2, i3));
                }
            } catch (ClassNotFoundException e) {
                String str = f8190a;
                StringBuilder m8728C = C22128a.m8728C("getType exception!");
                m8728C.append(e.getMessage());
                C2515a.m36847b(str, m8728C.toString());
            }
            return cls;
        }
        cls = null;
        return cls;
    }

    /* renamed from: a */
    public static Field[] m36821a(Class cls) {
        Field[] m36821a = cls.getSuperclass() != null ? m36821a(cls.getSuperclass()) : null;
        Field[] declaredFields = cls.getDeclaredFields();
        Field[] fieldArr = declaredFields;
        if (m36821a != null) {
            fieldArr = declaredFields;
            if (m36821a.length > 0) {
                fieldArr = new Field[declaredFields.length + m36821a.length];
                System.arraycopy(m36821a, 0, fieldArr, 0, m36821a.length);
                System.arraycopy(declaredFields, 0, fieldArr, m36821a.length, declaredFields.length);
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Field field : fieldArr) {
            if (field.getName().indexOf("$") < 0) {
                arrayList.add(field);
            }
        }
        Field[] fieldArr2 = fieldArr;
        if (arrayList.size() != fieldArr.length) {
            fieldArr2 = new Field[arrayList.size()];
            arrayList.toArray(fieldArr2);
        }
        return fieldArr2;
    }
}
