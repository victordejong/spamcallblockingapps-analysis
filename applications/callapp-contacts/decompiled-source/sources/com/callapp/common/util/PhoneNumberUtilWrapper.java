package com.callapp.common.util;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/PhoneNumberUtilWrapper.class */
public class PhoneNumberUtilWrapper {

    /* renamed from: a  reason: collision with root package name */
    public PhoneNumberUtil f10390a;

    /* renamed from: b  reason: collision with root package name */
    private Field f10391b;

    /* renamed from: c  reason: collision with root package name */
    private Method f10392c;

    /* renamed from: d  reason: collision with root package name */
    private int f10393d = -1;

    private PhoneNumberUtilWrapper() {
        try {
            PhoneNumberUtil instance = PhoneNumberUtil.getInstance();
            this.f10390a = instance;
            Field declaredField = instance.getClass().getDeclaredField("countryCallingCodeToRegionCodeMap");
            this.f10391b = declaredField;
            declaredField.setAccessible(true);
            Method declaredMethod = this.f10390a.getClass().getDeclaredMethod("getMetadataForRegion", String.class);
            this.f10392c = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
            this.f10391b = null;
            this.f10392c = null;
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
            this.f10391b = null;
            this.f10392c = null;
        } catch (SecurityException e3) {
            e3.printStackTrace();
            this.f10391b = null;
            this.f10392c = null;
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
            Field field = this.f10391b;
            map = null;
            if (field != null) {
                map = (Map) field.get(this.f10390a);
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            map = null;
        }
        return map;
    }
}
