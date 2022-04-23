package com.google.android.play.core.assetpacks;

import com.google.android.play.core.tasks.b;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cg.class */
final /* synthetic */ class cg implements b {

    /* renamed from: a  reason: collision with root package name */
    static final b f31236a = new cg();

    private cg() {
    }

    @Override // com.google.android.play.core.tasks.b
    public final void onFailure(Exception exc) {
        ch.f31237d.d(String.format("Could not sync active asset packs. %s", exc), new Object[0]);
    }
}
