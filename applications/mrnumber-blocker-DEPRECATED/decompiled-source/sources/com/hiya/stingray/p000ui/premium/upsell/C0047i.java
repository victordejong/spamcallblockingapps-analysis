package com.hiya.stingray.p000ui.premium.upsell;

import android.app.role.RoleManager;
import android.content.Context;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import kotlin.TypeCastException;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.premium.upsell.i */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/premium/upsell/i.class */
public final class C0047i {
    /* renamed from: a */
    public final void m1162a(int i, int i2, Intent intent, g gVar) {
        k.g(gVar, "presenter");
        if (i == 8008) {
            gVar.D();
        }
    }

    /* renamed from: b */
    public final void m1161b(Fragment fragment, g gVar) {
        k.g(fragment, "fragment");
        k.g(gVar, "presenter");
        Context context = fragment.getContext();
        if (context != null) {
            Object systemService = context.getSystemService("role");
            if (systemService != null) {
                fragment.startActivityForResult(((RoleManager) systemService).createRequestRoleIntent("android.app.role.CALL_SCREENING"), 8008);
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type android.app.role.RoleManager");
        }
        k.o();
        throw null;
    }
}
