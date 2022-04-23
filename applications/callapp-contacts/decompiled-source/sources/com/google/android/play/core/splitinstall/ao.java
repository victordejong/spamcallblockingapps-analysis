package com.google.android.play.core.splitinstall;

import android.content.Context;
import com.google.android.play.core.internal.be;
import java.io.File;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/ao.class */
public final class ao implements be<File> {

    /* renamed from: a  reason: collision with root package name */
    private final be<Context> f31513a;

    public ao(be<Context> beVar) {
        this.f31513a = beVar;
    }

    @Override // com.google.android.play.core.internal.be
    public final /* synthetic */ File a() {
        return am.a(((an) this.f31513a).a());
    }
}
