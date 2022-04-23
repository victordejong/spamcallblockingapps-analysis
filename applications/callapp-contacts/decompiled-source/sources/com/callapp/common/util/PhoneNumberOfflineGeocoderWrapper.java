package com.callapp.common.util;

import com.callapp.framework.util.StringUtils;
import com.google.i18n.phonenumbers.geocoding.PhoneNumberOfflineGeocoder;
import com.google.i18n.phonenumbers.k;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/PhoneNumberOfflineGeocoderWrapper.class */
public class PhoneNumberOfflineGeocoderWrapper {

    /* renamed from: a  reason: collision with root package name */
    private static PhoneNumberOfflineGeocoderWrapper f10387a;

    /* renamed from: b  reason: collision with root package name */
    private final PhoneNumberOfflineGeocoder f10388b;

    /* renamed from: c  reason: collision with root package name */
    private Method f10389c;

    private PhoneNumberOfflineGeocoderWrapper() {
        PhoneNumberOfflineGeocoder instance = PhoneNumberOfflineGeocoder.getInstance();
        this.f10388b = instance;
        try {
            Method declaredMethod = instance.getClass().getDeclaredMethod("getCountryNameForNumber", k.a.class, Locale.class);
            this.f10389c = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
            this.f10389c = null;
        } catch (SecurityException e2) {
            e2.printStackTrace();
            this.f10389c = null;
        }
    }

    public static PhoneNumberOfflineGeocoderWrapper getInstance() {
        PhoneNumberOfflineGeocoderWrapper phoneNumberOfflineGeocoderWrapper;
        synchronized (PhoneNumberOfflineGeocoderWrapper.class) {
            try {
                if (f10387a == null) {
                    f10387a = new PhoneNumberOfflineGeocoderWrapper();
                }
                phoneNumberOfflineGeocoderWrapper = f10387a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return phoneNumberOfflineGeocoderWrapper;
    }

    public final String a(k.a aVar, Locale locale) {
        String str;
        try {
            String str2 = (String) this.f10389c.invoke(this.f10388b, aVar, locale);
            str = null;
            if (StringUtils.b((CharSequence) str2)) {
                str = str2;
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            str = null;
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            str = null;
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
            str = null;
        }
        return str;
    }

    public final String b(k.a aVar, Locale locale) {
        String str;
        try {
            String a2 = a(aVar, locale);
            String descriptionForNumber = this.f10388b.getDescriptionForNumber(aVar, locale);
            str = null;
            if (StringUtils.b((CharSequence) descriptionForNumber)) {
                str = null;
                if (!StringUtils.b(a2, descriptionForNumber)) {
                    str = descriptionForNumber;
                }
            }
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
            str = null;
        }
        return str;
    }
}
