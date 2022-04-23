package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.f;
import com.facebook.internal.a;
/* loaded from: classes3-dex2jar.jar:com/facebook/share/internal/d.class */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    private f f20217a;

    public d(f fVar) {
        this.f20217a = fVar;
    }

    public void a(a aVar) {
        f fVar = this.f20217a;
        if (fVar != null) {
            fVar.c();
        }
    }

    public abstract void a(a aVar, Bundle bundle);

    public void a(a aVar, FacebookException facebookException) {
        f fVar = this.f20217a;
        if (fVar != null) {
            fVar.k();
        }
    }
}
