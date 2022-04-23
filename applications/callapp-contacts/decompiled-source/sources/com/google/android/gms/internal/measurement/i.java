package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.internal.ek;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/i.class */
public final class i extends aa {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f29110a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f29111b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ Context f29112c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Bundle f29113d;
    final /* synthetic */ ak e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(ak akVar, String str, String str2, Context context, Bundle bundle) {
        super(akVar, true);
        this.e = akVar;
        this.f29110a = str;
        this.f29111b = str2;
        this.f29112c = context;
        this.f29113d = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.aa
    public final void a() {
        boolean c2;
        String str;
        String str2;
        String str3;
        mz mzVar;
        int b2;
        mz mzVar2;
        String str4;
        try {
            c2 = ak.c(this.f29110a, this.f29111b);
            if (c2) {
                str3 = this.f29111b;
                str2 = this.f29110a;
                str = this.e.f;
            } else {
                str = null;
                str2 = null;
                str3 = null;
            }
            o.a(this.f29112c);
            ak akVar = this.e;
            akVar.j = akVar.a(this.f29112c);
            mzVar = this.e.j;
            if (mzVar == null) {
                str4 = this.e.f;
                Log.w(str4, "Failed to connect to measurement client.");
                return;
            }
            int a2 = DynamiteModule.a(this.f29112c, ModuleDescriptor.MODULE_ID);
            zzz zzzVar = new zzz(39065L, Math.max(a2, b2), DynamiteModule.b(this.f29112c, ModuleDescriptor.MODULE_ID) < a2, str, str2, str3, this.f29113d, ek.a(this.f29112c));
            mzVar2 = this.e.j;
            ((mz) o.a(mzVar2)).initialize(d.a(this.f29112c), zzzVar, this.h);
        } catch (Exception e) {
            this.e.a(e, true, false);
        }
    }
}
