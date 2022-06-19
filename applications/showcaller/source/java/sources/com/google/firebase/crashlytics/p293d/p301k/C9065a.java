package com.google.firebase.crashlytics.p293d.p301k;

import com.google.android.datatransport.AbstractC4648g;
import com.google.android.gms.tasks.C7968h;
import com.google.firebase.crashlytics.internal.common.AbstractC9115n;
/* renamed from: com.google.firebase.crashlytics.d.k.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/k/a.class */
public final /* synthetic */ class C9065a implements AbstractC4648g {

    /* renamed from: a */
    private final C7968h f39226a;

    /* renamed from: b */
    private final AbstractC9115n f39227b;

    private C9065a(C7968h c7968h, AbstractC9115n abstractC9115n) {
        this.f39226a = c7968h;
        this.f39227b = abstractC9115n;
    }

    /* renamed from: b */
    public static AbstractC4648g m1988b(C7968h c7968h, AbstractC9115n abstractC9115n) {
        return new C9065a(c7968h, abstractC9115n);
    }

    @Override // com.google.android.datatransport.AbstractC4648g
    /* renamed from: a */
    public void mo1989a(Exception exc) {
        C9067c.m1985b(this.f39226a, this.f39227b, exc);
    }
}
