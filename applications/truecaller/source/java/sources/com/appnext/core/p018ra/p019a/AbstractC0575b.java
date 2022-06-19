package com.appnext.core.p018ra.p019a;

import android.content.Context;
import android.os.Bundle;
import com.appnext.core.p018ra.C0573a;
import java.text.SimpleDateFormat;
/* renamed from: com.appnext.core.ra.a.b */
/* loaded from: classes-dex2jar.jar:com/appnext/core/ra/a/b.class */
public abstract class AbstractC0575b {

    /* renamed from: eN */
    private static SimpleDateFormat f1865eN = new SimpleDateFormat("dd/MM/yyyy");

    /* renamed from: aM */
    private Context f1866aM;

    /* renamed from: eO */
    private Bundle f1867eO;

    public AbstractC0575b(Context context, Bundle bundle) {
        this.f1866aM = context;
        this.f1867eO = bundle;
    }

    /* renamed from: aQ */
    public static SimpleDateFormat m42312aQ() {
        return f1865eN;
    }

    /* renamed from: aM */
    public abstract void mo42309aM();

    /* renamed from: aN */
    public abstract boolean mo42308aN();

    /* renamed from: aO */
    public final void m42314aO() {
        if (!mo42308aN() || (mo42308aN() && C0573a.m42315r(this.f1866aM).m42325aG())) {
            mo42309aM();
        }
    }

    /* renamed from: aP */
    public final Bundle m42313aP() {
        return this.f1867eO;
    }

    public final Context getContext() {
        return this.f1866aM;
    }
}
