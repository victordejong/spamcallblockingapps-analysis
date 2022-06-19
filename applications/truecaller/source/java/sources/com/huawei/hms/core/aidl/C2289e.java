package com.huawei.hms.core.aidl;

import android.os.Bundle;
import android.os.Parcelable;
import com.huawei.hms.core.aidl.annotation.Packed;
import com.huawei.hms.utils.JsonUtil;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.huawei.hms.core.aidl.e */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/core/aidl/e.class */
public class C2289e {
    /* renamed from: a */
    private Bundle m38079a(String str, Bundle bundle, Object obj) {
        Bundle bundle2 = new Bundle();
        m38078a(str, obj, bundle2);
        bundle.putBundle("_next_item_", bundle2);
        return bundle2;
    }

    /* renamed from: a */
    private Object m38076a(Field field, Bundle bundle) {
        Object obj = bundle.get(field.getName());
        if (obj instanceof Bundle) {
            try {
                Bundle bundle2 = (Bundle) obj;
                int i = bundle2.getInt(JsonUtil.VAL_TYPE, -1);
                if (i == 1) {
                    return m38075a(field.getGenericType(), bundle2);
                }
                if (i == 0) {
                    return m38082a((Bundle) obj, (IMessageEntity) field.getType().newInstance());
                }
            } catch (Exception e) {
                return null;
            }
        }
        return obj;
    }

    /* renamed from: a */
    private void m38080a(IMessageEntity iMessageEntity, Field field, Bundle bundle) throws IllegalAccessException {
        Object m38076a = m38076a(field, bundle);
        if (m38076a != null) {
            boolean isAccessible = field.isAccessible();
            field.setAccessible(true);
            field.set(iMessageEntity, m38076a);
            field.setAccessible(isAccessible);
        }
    }

    /* renamed from: b */
    private void m38074b(IMessageEntity iMessageEntity, Field field, Bundle bundle) throws IllegalAccessException {
        boolean isAccessible = field.isAccessible();
        field.setAccessible(true);
        m38078a(field.getName(), field.get(iMessageEntity), bundle);
        field.setAccessible(isAccessible);
    }

    /* renamed from: b */
    private boolean m38073b(String str, Object obj, Bundle bundle) {
        if (obj instanceof String) {
            bundle.putString(str, (String) obj);
            return true;
        } else if (obj instanceof Integer) {
            bundle.putInt(str, ((Integer) obj).intValue());
            return true;
        } else if (obj instanceof Short) {
            bundle.putShort(str, ((Short) obj).shortValue());
            return true;
        } else if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return true;
        } else if (obj instanceof Float) {
            bundle.putFloat(str, ((Float) obj).floatValue());
            return true;
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
            return true;
        } else if (!(obj instanceof Boolean)) {
            return false;
        } else {
            bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            return true;
        }
    }

    /* renamed from: a */
    public Bundle m38081a(IMessageEntity iMessageEntity, Bundle bundle) {
        Field[] declaredFields;
        Class<?> cls = iMessageEntity.getClass();
        while (true) {
            Class<?> cls2 = cls;
            if (cls2 != null) {
                for (Field field : cls2.getDeclaredFields()) {
                    if (field.isAnnotationPresent(Packed.class)) {
                        try {
                            m38074b(iMessageEntity, field, bundle);
                        } catch (IllegalAccessException | IllegalArgumentException e) {
                            field.getName();
                        }
                    }
                }
                cls = cls2.getSuperclass();
            } else {
                return bundle;
            }
        }
    }

    /* renamed from: a */
    public IMessageEntity m38082a(Bundle bundle, IMessageEntity iMessageEntity) {
        Field[] declaredFields;
        if (bundle == null) {
            return iMessageEntity;
        }
        bundle.setClassLoader(getClass().getClassLoader());
        Class<?> cls = iMessageEntity.getClass();
        while (true) {
            Class<?> cls2 = cls;
            if (cls2 == null) {
                return iMessageEntity;
            }
            for (Field field : cls2.getDeclaredFields()) {
                if (field.isAnnotationPresent(Packed.class)) {
                    try {
                        m38080a(iMessageEntity, field, bundle);
                    } catch (IllegalAccessException | IllegalArgumentException e) {
                        field.getName();
                    }
                }
            }
            cls = cls2.getSuperclass();
        }
    }

    /* renamed from: a */
    public List<Object> m38075a(Type type, Bundle bundle) throws InstantiationException, IllegalAccessException {
        ArrayList arrayList = new ArrayList();
        Bundle bundle2 = bundle.getBundle("_next_item_");
        while (true) {
            Bundle bundle3 = bundle2;
            if (bundle3 != null) {
                Object obj = bundle3.get("_value_");
                if (obj.getClass().isPrimitive() || (obj instanceof String) || (obj instanceof Serializable)) {
                    arrayList.add(obj);
                } else if (!(obj instanceof Bundle)) {
                    continue;
                } else {
                    Bundle bundle4 = (Bundle) obj;
                    int i = bundle4.getInt(JsonUtil.VAL_TYPE, -1);
                    if (i == 1) {
                        throw new InstantiationException("Nested List can not be supported");
                    }
                    if (i != 0) {
                        throw new InstantiationException("Unknown type can not be supported");
                    }
                    arrayList.add(m38082a(bundle4, (IMessageEntity) ((Class) ((ParameterizedType) type).getActualTypeArguments()[0]).newInstance()));
                }
                bundle2 = bundle3.getBundle("_next_item_");
            } else {
                return arrayList;
            }
        }
    }

    /* renamed from: a */
    public void m38078a(String str, Object obj, Bundle bundle) {
        if (obj != null && !m38073b(str, obj, bundle)) {
            if (obj instanceof CharSequence) {
                bundle.putCharSequence(str, (CharSequence) obj);
            } else if (obj instanceof Parcelable) {
                bundle.putParcelable(str, (Parcelable) obj);
            } else if (obj instanceof byte[]) {
                bundle.putByteArray(str, (byte[]) obj);
            } else if (obj instanceof List) {
                m38077a(str, (List) obj, bundle);
            } else if (obj instanceof Serializable) {
                bundle.putSerializable(str, (Serializable) obj);
            } else if (!(obj instanceof IMessageEntity)) {
            } else {
                Bundle m38081a = m38081a((IMessageEntity) obj, new Bundle());
                m38081a.putInt(JsonUtil.VAL_TYPE, 0);
                bundle.putBundle(str, m38081a);
            }
        }
    }

    /* renamed from: a */
    public void m38077a(String str, List list, Bundle bundle) {
        Iterator it = list.iterator();
        Bundle bundle2 = null;
        while (true) {
            Bundle bundle3 = bundle2;
            if (it.hasNext()) {
                Object next = it.next();
                Bundle bundle4 = bundle3;
                if (bundle3 == null) {
                    bundle4 = new Bundle();
                    bundle.putBundle(str, bundle4);
                    bundle4.putInt(JsonUtil.VAL_TYPE, 1);
                }
                bundle2 = m38079a("_value_", bundle4, next);
            } else {
                return;
            }
        }
    }
}
