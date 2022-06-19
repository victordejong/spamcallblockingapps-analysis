package com.lidroid.xutils;

import android.app.Activity;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceGroup;
import android.view.View;
import com.lidroid.xutils.util.LogUtils;
import com.lidroid.xutils.view.EventListenerManager;
import com.lidroid.xutils.view.ResLoader;
import com.lidroid.xutils.view.ViewFinder;
import com.lidroid.xutils.view.ViewInjectInfo;
import com.lidroid.xutils.view.annotation.ContentView;
import com.lidroid.xutils.view.annotation.PreferenceInject;
import com.lidroid.xutils.view.annotation.ResInject;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.lidroid.xutils.view.annotation.event.EventBase;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/ViewUtils.class */
public class ViewUtils {
    private ViewUtils() {
    }

    public static void inject(Activity activity) {
        injectObject(activity, new ViewFinder(activity));
    }

    public static void inject(PreferenceActivity preferenceActivity) {
        injectObject(preferenceActivity, new ViewFinder(preferenceActivity));
    }

    public static void inject(View view) {
        injectObject(view, new ViewFinder(view));
    }

    public static void inject(Object obj, Activity activity) {
        injectObject(obj, new ViewFinder(activity));
    }

    public static void inject(Object obj, PreferenceActivity preferenceActivity) {
        injectObject(obj, new ViewFinder(preferenceActivity));
    }

    public static void inject(Object obj, PreferenceGroup preferenceGroup) {
        injectObject(obj, new ViewFinder(preferenceGroup));
    }

    public static void inject(Object obj, View view) {
        injectObject(obj, new ViewFinder(view));
    }

    private static void injectObject(Object obj, ViewFinder viewFinder) {
        Throwable th;
        Method method;
        Preference findPreference;
        Class<?> cls = obj.getClass();
        ContentView annotation = cls.getAnnotation(ContentView.class);
        if (annotation != null) {
            try {
                cls.getMethod("setContentView", Integer.TYPE).invoke(obj, Integer.valueOf(annotation.value()));
            } catch (Throwable th2) {
                LogUtils.m2008e(th2.getMessage(), th2);
            }
        }
        Field[] declaredFields = cls.getDeclaredFields();
        if (declaredFields != null && declaredFields.length > 0) {
            for (Field field : declaredFields) {
                ViewInject annotation2 = field.getAnnotation(ViewInject.class);
                if (annotation2 != null) {
                    try {
                        View findViewById = viewFinder.findViewById(annotation2.value(), annotation2.parentId());
                        if (findViewById != null) {
                            field.setAccessible(true);
                            field.set(obj, findViewById);
                        }
                    } catch (Throwable th3) {
                        LogUtils.m2008e(th3.getMessage(), th3);
                    }
                } else {
                    ResInject annotation3 = field.getAnnotation(ResInject.class);
                    if (annotation3 != null) {
                        Object loadRes = ResLoader.loadRes(annotation3.type(), viewFinder.getContext(), annotation3.id());
                        if (loadRes != null) {
                            field.setAccessible(true);
                            field.set(obj, loadRes);
                        }
                    } else {
                        PreferenceInject annotation4 = field.getAnnotation(PreferenceInject.class);
                        if (annotation4 != null && (findPreference = viewFinder.findPreference(annotation4.value())) != null) {
                            field.setAccessible(true);
                            field.set(obj, findPreference);
                        }
                    }
                }
            }
        }
        Method[] declaredMethods = cls.getDeclaredMethods();
        if (declaredMethods == null || declaredMethods.length <= 0) {
            return;
        }
        int length = declaredMethods.length;
        int i = 0;
        while (i < length) {
            Method method2 = declaredMethods[i];
            Annotation[] declaredAnnotations = method2.getDeclaredAnnotations();
            Method[] methodArr = declaredMethods;
            if (declaredAnnotations != null) {
                methodArr = declaredMethods;
                if (declaredAnnotations.length > 0) {
                    int length2 = declaredAnnotations.length;
                    int i2 = 0;
                    while (true) {
                        methodArr = declaredMethods;
                        if (i2 < length2) {
                            Annotation annotation5 = declaredAnnotations[i2];
                            Class<? extends Annotation> annotationType = annotation5.annotationType();
                            Method[] methodArr2 = declaredMethods;
                            if (annotationType.getAnnotation(EventBase.class) != null) {
                                method2.setAccessible(true);
                                Method[] methodArr3 = declaredMethods;
                                try {
                                    Method declaredMethod = annotationType.getDeclaredMethod("value", new Class[0]);
                                    try {
                                        method = annotationType.getDeclaredMethod("parentId", new Class[0]);
                                    } catch (Throwable th4) {
                                        method = null;
                                    }
                                    Object invoke = declaredMethod.invoke(annotation5, new Object[0]);
                                    Object invoke2 = method == null ? null : method.invoke(annotation5, new Object[0]);
                                    int length3 = invoke2 == null ? 0 : Array.getLength(invoke2);
                                    Method[] methodArr4 = declaredMethods;
                                    int length4 = Array.getLength(invoke);
                                    int i3 = 0;
                                    while (true) {
                                        methodArr2 = declaredMethods;
                                        if (i3 >= length4) {
                                            break;
                                        }
                                        Method[] methodArr5 = declaredMethods;
                                        ViewInjectInfo viewInjectInfo = new ViewInjectInfo();
                                        try {
                                            viewInjectInfo.value = Array.get(invoke, i3);
                                            viewInjectInfo.parentId = length3 > i3 ? ((Integer) Array.get(invoke2, i3)).intValue() : 0;
                                            EventListenerManager.addEventMethod(viewFinder, viewInjectInfo, annotation5, obj, method2);
                                            i3++;
                                        } catch (Throwable th5) {
                                            th = th5;
                                            LogUtils.m2008e(th.getMessage(), th);
                                            i2++;
                                        }
                                    }
                                } catch (Throwable th6) {
                                    th = th6;
                                    declaredMethods = methodArr3;
                                }
                            }
                            declaredMethods = methodArr2;
                            i2++;
                        }
                    }
                }
            }
            i++;
            declaredMethods = methodArr;
        }
    }
}
