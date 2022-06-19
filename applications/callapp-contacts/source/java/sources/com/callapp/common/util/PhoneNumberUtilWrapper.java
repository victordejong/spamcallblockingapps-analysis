package com.callapp.common.util;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/PhoneNumberUtilWrapper.class */
public class PhoneNumberUtilWrapper {

    /* renamed from: a */
    public PhoneNumberUtil f19147a;

    /* renamed from: b */
    private Field f19148b;

    /* renamed from: c */
    private Method f19149c;

    /* renamed from: d */
    private int f19150d = -1;

    private PhoneNumberUtilWrapper() {
        try {
            PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
            this.f19147a = phoneNumberUtil;
            Field declaredField = phoneNumberUtil.getClass().getDeclaredField("countryCallingCodeToRegionCodeMap");
            this.f19148b = declaredField;
            declaredField.setAccessible(true);
            Method declaredMethod = this.f19147a.getClass().getDeclaredMethod("getMetadataForRegion", String.class);
            this.f19149c = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
            this.f19148b = null;
            this.f19149c = null;
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
            this.f19148b = null;
            this.f19149c = null;
        } catch (SecurityException e3) {
            e3.printStackTrace();
            this.f19148b = null;
            this.f19149c = null;
        }
    }

    public static PhoneNumberUtilWrapper getInstance() {
        PhoneNumberUtilWrapper phoneNumberUtilWrapper;
        synchronized (PhoneNumberUtilWrapper.class) {
            try {
                phoneNumberUtilWrapper = new PhoneNumberUtilWrapper();
            } catch (Throwable th) {
                throw th;
            }
        }
        return phoneNumberUtilWrapper;
    }

    public Map<Integer, List<String>> getCountryCallingCodeToRegionCodeMap() {
        Map<Integer, List<String>> map;
        try {
            Field field = this.f19148b;
            map = null;
            if (field != null) {
                map = (Map) field.get(this.f19147a);
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            map = null;
        }
        return map;
    }
}
