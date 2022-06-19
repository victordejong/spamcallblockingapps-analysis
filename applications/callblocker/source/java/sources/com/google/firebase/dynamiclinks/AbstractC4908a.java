package com.google.firebase.dynamiclinks;

import android.content.Intent;
import com.google.android.gms.tasks.AbstractC4469g;
import com.google.firebase.C4865b;
/* renamed from: com.google.firebase.dynamiclinks.a */
/* loaded from: classes-dex2jar.jar:com/google/firebase/dynamiclinks/a.class */
public abstract class AbstractC4908a {
    /* renamed from: a */
    public static AbstractC4908a m2042a() {
        AbstractC4908a m2041a;
        synchronized (AbstractC4908a.class) {
            try {
                m2041a = m2041a(C4865b.m2147d());
            } catch (Throwable th) {
                throw th;
            }
        }
        return m2041a;
    }

    /* renamed from: a */
    public static AbstractC4908a m2041a(C4865b c4865b) {
        AbstractC4908a abstractC4908a;
        synchronized (AbstractC4908a.class) {
            try {
                abstractC4908a = (AbstractC4908a) c4865b.m2153a(AbstractC4908a.class);
            } catch (Throwable th) {
                throw th;
            }
        }
        return abstractC4908a;
    }

    /* renamed from: a */
    public abstract AbstractC4469g<C4909b> mo2030a(Intent intent);
}
