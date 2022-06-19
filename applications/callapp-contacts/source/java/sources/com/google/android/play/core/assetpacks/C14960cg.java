package com.google.android.play.core.assetpacks;

import com.google.android.play.core.tasks.AbstractC15178b;
/* renamed from: com.google.android.play.core.assetpacks.cg */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cg.class */
final /* synthetic */ class C14960cg implements AbstractC15178b {

    /* renamed from: a */
    static final AbstractC15178b f54609a = new C14960cg();

    private C14960cg() {
    }

    @Override // com.google.android.play.core.tasks.AbstractC15178b
    public final void onFailure(Exception exc) {
        C14961ch.f54610d.m9507d(String.format("Could not sync active asset packs. %s", exc), new Object[0]);
    }
}
