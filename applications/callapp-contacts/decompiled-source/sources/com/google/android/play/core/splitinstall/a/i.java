package com.google.android.play.core.splitinstall.a;

import android.content.Intent;
import com.google.android.play.core.splitinstall.s;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/a/i.class */
public final class i implements s {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ List f31476a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ List f31477b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ long f31478c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ boolean f31479d;
    final /* synthetic */ List e;
    final /* synthetic */ a f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(a aVar, List list, List list2, long j, boolean z, List list3) {
        this.f = aVar;
        this.f31476a = list;
        this.f31477b = list2;
        this.f31478c = j;
        this.f31479d = z;
        this.e = list3;
    }

    @Override // com.google.android.play.core.splitinstall.s
    public final void a() {
        this.f.a(this.f31476a, this.f31477b, this.f31478c);
    }

    @Override // com.google.android.play.core.splitinstall.s
    public final void a(int i) {
        this.f.b(i);
    }

    @Override // com.google.android.play.core.splitinstall.s
    public final void b() {
        if (!this.f31479d) {
            this.f.a((List<Intent>) this.e, (List<String>) this.f31476a, (List<String>) this.f31477b, this.f31478c, true);
        }
    }
}
