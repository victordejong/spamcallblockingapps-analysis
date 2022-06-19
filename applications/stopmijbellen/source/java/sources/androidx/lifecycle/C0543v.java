package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;
import android.os.Bundle;
import androidx.savedstate.AbstractC0661c;
import androidx.savedstate.C0657a;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import p104g6.C2906b;
/* renamed from: androidx.lifecycle.v */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/v.class */
public final class C0543v extends AbstractC0506a0 {

    /* renamed from: f */
    public static final Class<?>[] f2069f = {Application.class, C0541u.class};

    /* renamed from: g */
    public static final Class<?>[] f2070g = {C0541u.class};

    /* renamed from: a */
    public final Application f2071a;

    /* renamed from: b */
    public final AbstractC0548z f2072b;

    /* renamed from: c */
    public final Bundle f2073c;

    /* renamed from: d */
    public final AbstractC0516f f2074d;

    /* renamed from: e */
    public final C0657a f2075e;

    @SuppressLint({"LambdaLast"})
    public C0543v(Application application, AbstractC0661c abstractC0661c, Bundle bundle) {
        C0547y c0547y;
        this.f2075e = abstractC0661c.getSavedStateRegistry();
        this.f2074d = abstractC0661c.getLifecycle();
        this.f2073c = bundle;
        this.f2071a = application;
        if (application != null) {
            if (C0547y.f2084j == null) {
                C0547y.f2084j = new C0547y(application);
            }
            c0547y = C0547y.f2084j;
        } else {
            if (C2906b.f9795b == null) {
                C2906b.f9795b = new C2906b();
            }
            c0547y = C2906b.f9795b;
        }
        this.f2072b = c0547y;
    }

    /* renamed from: d */
    public static <T> Constructor<T> m7972d(Class<T> cls, Class<?>[] clsArr) {
        for (Constructor<?> constructor : cls.getConstructors()) {
            Constructor<T> constructor2 = (Constructor<T>) constructor;
            if (Arrays.equals(clsArr, constructor2.getParameterTypes())) {
                return constructor2;
            }
        }
        return null;
    }

    @Override // androidx.lifecycle.AbstractC0506a0, androidx.lifecycle.AbstractC0548z
    /* renamed from: a */
    public <T extends AbstractC0546x> T mo2864a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) mo7973c(canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.C0510b0
    /* renamed from: b */
    public void mo7974b(AbstractC0546x abstractC0546x) {
        SavedStateHandleController.m8009h(abstractC0546x, this.f2075e, this.f2074d);
    }

    @Override // androidx.lifecycle.AbstractC0506a0
    /* renamed from: c */
    public <T extends AbstractC0546x> T mo7973c(String str, Class<T> cls) {
        C0541u c0541u;
        AbstractC0546x abstractC0546x;
        boolean isAssignableFrom = C0505a.class.isAssignableFrom(cls);
        Constructor m7972d = (!isAssignableFrom || this.f2071a == null) ? m7972d(cls, f2070g) : m7972d(cls, f2069f);
        if (m7972d == null) {
            return (T) this.f2072b.mo2864a(cls);
        }
        C0657a c0657a = this.f2075e;
        AbstractC0516f abstractC0516f = this.f2074d;
        Bundle bundle = this.f2073c;
        Bundle m7515a = c0657a.m7515a(str);
        Class[] clsArr = C0541u.f2063e;
        if (m7515a == null && bundle == null) {
            c0541u = new C0541u();
        } else {
            HashMap hashMap = new HashMap();
            if (bundle != null) {
                for (String str2 : bundle.keySet()) {
                    hashMap.put(str2, bundle.get(str2));
                }
            }
            if (m7515a == null) {
                c0541u = new C0541u(hashMap);
            } else {
                ArrayList parcelableArrayList = m7515a.getParcelableArrayList("keys");
                ArrayList parcelableArrayList2 = m7515a.getParcelableArrayList("values");
                if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
                    throw new IllegalStateException("Invalid bundle passed as restored state");
                }
                for (int i = 0; i < parcelableArrayList.size(); i++) {
                    hashMap.put((String) parcelableArrayList.get(i), parcelableArrayList2.get(i));
                }
                c0541u = new C0541u(hashMap);
            }
        }
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, c0541u);
        savedStateHandleController.m8008i(c0657a, abstractC0516f);
        SavedStateHandleController.m8007j(c0657a, abstractC0516f);
        if (isAssignableFrom) {
            try {
                Application application = this.f2071a;
                if (application != null) {
                    abstractC0546x = (AbstractC0546x) m7972d.newInstance(application, c0541u);
                    abstractC0546x.m7970b("androidx.lifecycle.savedstate.vm.tag", savedStateHandleController);
                    return (T) abstractC0546x;
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Failed to access " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("A " + cls + " cannot be instantiated.", e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException("An exception happened in constructor of " + cls, e3.getCause());
            }
        }
        abstractC0546x = (AbstractC0546x) m7972d.newInstance(c0541u);
        abstractC0546x.m7970b("androidx.lifecycle.savedstate.vm.tag", savedStateHandleController);
        return (T) abstractC0546x;
    }
}
