package com.callapp.common.util;

import com.callapp.framework.util.StringUtils;
import com.google.i18n.phonenumbers.C16136k;
import com.google.i18n.phonenumbers.geocoding.PhoneNumberOfflineGeocoder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/PhoneNumberOfflineGeocoderWrapper.class */
public class PhoneNumberOfflineGeocoderWrapper {

    /* renamed from: a */
    private static PhoneNumberOfflineGeocoderWrapper f19144a;

    /* renamed from: b */
    private final PhoneNumberOfflineGeocoder f19145b;

    /* renamed from: c */
    private Method f19146c;

    private PhoneNumberOfflineGeocoderWrapper() {
        PhoneNumberOfflineGeocoder phoneNumberOfflineGeocoder = PhoneNumberOfflineGeocoder.getInstance();
        this.f19145b = phoneNumberOfflineGeocoder;
        try {
            Method declaredMethod = phoneNumberOfflineGeocoder.getClass().getDeclaredMethod("getCountryNameForNumber", C16136k.C16137a.class, Locale.class);
            this.f19146c = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
            this.f19146c = null;
        } catch (SecurityException e2) {
            e2.printStackTrace();
            this.f19146c = null;
        }
    }

    public static PhoneNumberOfflineGeocoderWrapper getInstance() {
        PhoneNumberOfflineGeocoderWrapper phoneNumberOfflineGeocoderWrapper;
        synchronized (PhoneNumberOfflineGeocoderWrapper.class) {
            try {
                if (f19144a == null) {
                    f19144a = new PhoneNumberOfflineGeocoderWrapper();
                }
                phoneNumberOfflineGeocoderWrapper = f19144a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return phoneNumberOfflineGeocoderWrapper;
    }

    /* renamed from: a */
    public final String m31913a(C16136k.C16137a c16137a, Locale locale) {
        String str;
        try {
            String str2 = (String) this.f19146c.invoke(this.f19145b, c16137a, locale);
            str = null;
            if (StringUtils.m26045b((CharSequence) str2)) {
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

    /* renamed from: b */
    public final String m31912b(C16136k.C16137a c16137a, Locale locale) {
        String str;
        try {
            String m31913a = m31913a(c16137a, locale);
            String descriptionForNumber = this.f19145b.getDescriptionForNumber(c16137a, locale);
            str = null;
            if (StringUtils.m26045b((CharSequence) descriptionForNumber)) {
                str = null;
                if (!StringUtils.m26042b(m31913a, descriptionForNumber)) {
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
