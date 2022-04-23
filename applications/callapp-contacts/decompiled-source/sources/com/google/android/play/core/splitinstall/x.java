package com.google.android.play.core.splitinstall;

import android.app.Activity;
import android.content.IntentSender;
import com.google.android.play.core.internal.ba;
import com.google.android.play.core.splitinstall.a.a;
import com.google.android.play.core.tasks.d;
import java.io.File;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/x.class */
public final class x implements a {

    /* renamed from: a  reason: collision with root package name */
    private final ba<ak> f31551a;

    /* renamed from: b  reason: collision with root package name */
    private final ba<a> f31552b;

    /* renamed from: c  reason: collision with root package name */
    private final ba<File> f31553c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(ba<ak> baVar, ba<a> baVar2, ba<File> baVar3) {
        this.f31551a = baVar;
        this.f31552b = baVar2;
        this.f31553c = baVar3;
    }

    private final a b() {
        return (a) (this.f31553c.a() == null ? this.f31551a : this.f31552b).a();
    }

    @Override // com.google.android.play.core.splitinstall.a
    public final d<c> a(int i) {
        return b().a(i);
    }

    @Override // com.google.android.play.core.splitinstall.a
    public final d<Integer> a(b bVar) {
        return b().a(bVar);
    }

    @Override // com.google.android.play.core.splitinstall.a
    public final Set<String> a() {
        return b().a();
    }

    @Override // com.google.android.play.core.splitinstall.a
    public final boolean a(c cVar, Activity activity, int i) throws IntentSender.SendIntentException {
        return b().a(cVar, activity, i);
    }
}
