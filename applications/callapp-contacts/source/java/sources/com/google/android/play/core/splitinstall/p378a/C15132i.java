package com.google.android.play.core.splitinstall.p378a;

import android.content.Intent;
import com.google.android.play.core.splitinstall.AbstractC15169s;
import java.util.List;
/* renamed from: com.google.android.play.core.splitinstall.a.i */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/a/i.class */
public final class C15132i implements AbstractC15169s {

    /* renamed from: a */
    final /* synthetic */ List f54908a;

    /* renamed from: b */
    final /* synthetic */ List f54909b;

    /* renamed from: c */
    final /* synthetic */ long f54910c;

    /* renamed from: d */
    final /* synthetic */ boolean f54911d;

    /* renamed from: e */
    final /* synthetic */ List f54912e;

    /* renamed from: f */
    final /* synthetic */ C15124a f54913f;

    public C15132i(C15124a c15124a, List list, List list2, long j, boolean z, List list3) {
        this.f54913f = c15124a;
        this.f54908a = list;
        this.f54909b = list2;
        this.f54910c = j;
        this.f54911d = z;
        this.f54912e = list3;
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15169s
    /* renamed from: a */
    public final void mo9347a() {
        this.f54913f.m9412a(this.f54908a, this.f54909b, this.f54910c);
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15169s
    /* renamed from: a */
    public final void mo9346a(int i) {
        this.f54913f.m9409b(i);
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15169s
    /* renamed from: b */
    public final void mo9345b() {
        if (!this.f54911d) {
            this.f54913f.m9411a((List<Intent>) this.f54912e, (List<String>) this.f54908a, (List<String>) this.f54909b, this.f54910c, true);
        }
    }
}
