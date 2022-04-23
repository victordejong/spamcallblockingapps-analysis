package com.google.firebase.remoteconfig;

import com.google.firebase.components.e;
import com.google.firebase.components.h;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/j.class */
final /* synthetic */ class j implements h {

    /* renamed from: a  reason: collision with root package name */
    private static final j f32653a = new j();

    private j() {
    }

    public static h a() {
        return f32653a;
    }

    @Override // com.google.firebase.components.h
    public final Object create(e eVar) {
        return RemoteConfigRegistrar.lambda$getComponents$0(eVar);
    }
}
