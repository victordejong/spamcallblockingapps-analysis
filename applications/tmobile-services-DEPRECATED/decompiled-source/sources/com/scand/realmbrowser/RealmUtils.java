package com.scand.realmbrowser;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.realm.Realm;
import io.realm.RealmList;
import io.realm.RealmObject;
import io.realm.RealmResults;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/RealmUtils.class */
class RealmUtils {
    RealmUtils() {
    }

    /* renamed from: a */
    private static String m7718a(String str) {
        return Character.toUpperCase(str.charAt(0)) + str.substring(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m7717b(Realm realm, Class<? extends RealmObject> cls) {
        realm.m3153d();
        realm.m3053Q0(cls).m2918E().m3099d();
        realm.m3148l();
    }

    /* renamed from: c */
    private static String m7716c(Field field) {
        String str;
        if (!field.getType().equals(Boolean.TYPE)) {
            str = "get" + m7718a(field.getName());
        } else if (field.getName().startsWith("is")) {
            str = field.getName();
        } else {
            str = "is" + m7718a(field.getName());
        }
        return str;
    }

    /* renamed from: d */
    private static String m7715d(Field field) {
        return "set" + m7718a(field.getName());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static RealmList<RealmObject> m7714e(Realm realm, Class<? extends RealmObject> cls, int i) {
        RealmObject realmObject;
        RealmList<RealmObject> realmList = new RealmList<>();
        List<Field> h = m7711h(cls);
        if (h.size() <= 0) {
            return realmList;
        }
        RealmResults E = realm.m3053Q0(cls).m2918E();
        int size = E.size();
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 < size) {
                try {
                    realmObject = (RealmObject) E.get(i2);
                    realmList.add(realmObject);
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                } catch (InstantiationException e2) {
                    e2.printStackTrace();
                }
            } else {
                RealmObject realmObject2 = (RealmObject) cls.newInstance();
                Iterator<Field> it = h.iterator();
                while (true) {
                    realmObject = realmObject2;
                    if (it.hasNext()) {
                        Field next = it.next();
                        m7703p(realmObject2, next, m7713f(realm, next, i2));
                    }
                }
                realmList.add(realmObject);
            }
        }
        realm.m3153d();
        realm.copyToRealm(realmList);
        realm.m3148l();
        return realmList;
    }

    /* renamed from: f */
    private static Object m7713f(Realm realm, Field field, int i) {
        String str;
        Class<?> type = field.getType();
        if (type == String.class) {
            str = field.getName() + " " + i;
        } else {
            boolean z = true;
            if (type == Boolean.class || type == Boolean.TYPE) {
                if (i % 2 != 0) {
                    z = false;
                }
                str = Boolean.valueOf(z);
            } else if (type == Short.class || type == Short.TYPE) {
                str = Short.valueOf(Integer.valueOf(i).shortValue());
            } else if (type == Integer.class || type == Integer.TYPE) {
                str = Integer.valueOf(i);
            } else if (type == Long.class || type == Long.TYPE) {
                str = Long.valueOf(Integer.valueOf(i).longValue());
            } else if (type == Float.class || type == Float.TYPE) {
                str = Float.valueOf(Integer.valueOf(i).floatValue());
            } else if (type == Double.class || type == Double.TYPE) {
                str = Double.valueOf(Integer.valueOf(i).doubleValue());
            } else if (type == Date.class) {
                str = new Date(i * 1000);
            } else if (type == Byte.class || type == Byte.TYPE) {
                str = Byte.valueOf(Integer.valueOf(i).byteValue());
            } else if (type == Byte[].class || type == byte[].class) {
                str = Integer.toString(i).getBytes();
            } else if (RealmObject.class.isAssignableFrom(type)) {
                RealmResults E = realm.m3053Q0(type).m2918E();
                if (E.size() > 0) {
                    str = E.get(0);
                } else {
                    RealmList<RealmObject> e = m7714e(realm, type, 1);
                    str = null;
                    if (e.size() > 0) {
                        str = e.get(0);
                    }
                }
            } else if (RealmList.class.isAssignableFrom(type)) {
                Class cls = (Class) ((ParameterizedType) field.getGenericType()).getActualTypeArguments()[0];
                RealmResults E2 = realm.m3053Q0(cls).m2918E();
                if (E2.size() < 50) {
                    str = m7714e(realm, cls, 50);
                } else {
                    RealmList realmList = new RealmList();
                    realmList.addAll(E2.subList(0, 50));
                    str = realmList;
                }
            } else {
                Log.w("GENERATE", "unknown field type");
                str = null;
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static String m7712g(@NonNull RealmObject realmObject, @NonNull Field field) {
        if (m7705n(field)) {
            return m7709j(realmObject, field);
        }
        String str = "null";
        if (m7704o(field)) {
            if (m7706m(realmObject, field) != null) {
                str = m7707l(field);
            }
            return str;
        }
        Object i = m7710i(realmObject, field);
        if (i == null || !(field.getType() == byte[].class || field.getType() == Byte[].class)) {
            if (i != null) {
                str = i.toString();
            }
            return str;
        }
        byte[] bArr = (byte[]) i;
        StringBuilder sb = new StringBuilder();
        int length = bArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            sb.append(String.format("0x%02X", Byte.valueOf(bArr[i2])));
            sb.append(" ");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static List<Field> m7711h(Class<? extends RealmObject> cls) {
        Field[] declaredFields = cls.getDeclaredFields();
        ArrayList arrayList = new ArrayList();
        for (Field field : declaredFields) {
            int modifiers = field.getModifiers();
            if (!Modifier.isStatic(modifiers) && !Modifier.isFinal(modifiers)) {
                arrayList.add(field);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static Object m7710i(@NonNull RealmObject realmObject, @NonNull Field field) {
        try {
            return realmObject.getClass().getMethod(m7716c(field), new Class[0]).invoke(realmObject, new Object[0]);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return null;
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
            return null;
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    /* renamed from: j */
    private static String m7709j(@NonNull RealmObject realmObject, @NonNull Field field) {
        ParameterizedType parameterizedType = (ParameterizedType) field.getGenericType();
        String obj = parameterizedType.getRawType().toString();
        int lastIndexOf = obj.lastIndexOf(".");
        String str = obj;
        if (lastIndexOf > 0) {
            str = obj.substring(lastIndexOf + 1);
        }
        String obj2 = parameterizedType.getActualTypeArguments()[0].toString();
        int lastIndexOf2 = obj2.lastIndexOf(".");
        String str2 = obj2;
        if (lastIndexOf2 > 0) {
            str2 = obj2.substring(lastIndexOf2 + 1);
        }
        return String.format("%s<%s> (%d)", str, str2, Integer.valueOf(m7708k(realmObject, field).size()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: k */
    public static RealmList<RealmObject> m7708k(@NonNull RealmObject realmObject, @NonNull Field field) {
        RealmList<RealmObject> realmList;
        try {
            Object invoke = realmObject.getClass().getMethod(m7716c(field), new Class[0]).invoke(realmObject, new Object[0]);
            realmList = null;
            if (invoke != null) {
                realmList = (RealmList) invoke;
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            realmList = null;
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
            realmList = null;
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            realmList = null;
        }
        return realmList;
    }

    /* renamed from: l */
    private static String m7707l(@NonNull Field field) {
        return field.getType().getSimpleName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public static RealmObject m7706m(@NonNull RealmObject realmObject, @NonNull Field field) {
        RealmObject realmObject2;
        try {
            Object invoke = realmObject.getClass().getMethod(m7716c(field), new Class[0]).invoke(realmObject, new Object[0]);
            realmObject2 = null;
            if (invoke != null) {
                realmObject2 = (RealmObject) invoke;
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            realmObject2 = null;
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
            realmObject2 = null;
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            realmObject2 = null;
        }
        return realmObject2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public static boolean m7705n(@NonNull Field field) {
        return RealmList.class.isAssignableFrom(field.getType());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public static boolean m7704o(@NonNull Field field) {
        return RealmObject.class.isAssignableFrom(field.getType());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static void m7703p(@NonNull RealmObject realmObject, @NonNull Field field, Object obj) {
        String d = m7715d(field);
        try {
            field.getType();
            realmObject.getClass().getMethod(d, field.getType()).invoke(realmObject, obj);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
    }
}
