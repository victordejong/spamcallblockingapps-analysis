package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzag;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzaj.class */
public final class zzaj extends zzag.zzb {

    /* renamed from: j */
    private final /* synthetic */ String f8197j;

    /* renamed from: k */
    private final /* synthetic */ String f8198k;

    /* renamed from: l */
    private final /* synthetic */ Context f8199l;

    /* renamed from: m */
    private final /* synthetic */ Bundle f8200m;

    /* renamed from: n */
    private final /* synthetic */ zzag f8201n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaj(zzag zzagVar, String str, String str2, Context context, Bundle bundle) {
        super(zzagVar);
        this.f8201n = zzagVar;
        this.f8197j = str;
        this.f8198k = str2;
        this.f8199l = context;
        this.f8200m = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzag.zzb
    /* renamed from: a */
    public final void mo13397a() {
        boolean S;
        String str;
        String str2;
        String str3;
        Boolean bool;
        zzv zzvVar;
        int b0;
        int Z;
        boolean z;
        zzv zzvVar2;
        String str4;
        try {
            this.f8201n.f8184e = new ArrayList();
            zzag zzagVar = this.f8201n;
            S = zzag.m13446S(this.f8197j, this.f8198k);
            if (S) {
                str = this.f8198k;
                str2 = this.f8197j;
                str3 = this.f8201n.f8180a;
            } else {
                str3 = null;
                str2 = null;
                str = null;
            }
            zzag.m13429e0(this.f8199l);
            bool = zzag.f8178j;
            boolean z2 = bool.booleanValue() || str2 != null;
            this.f8201n.f8187h = this.f8201n.m13434c(this.f8199l, z2);
            zzvVar = this.f8201n.f8187h;
            if (zzvVar == null) {
                str4 = this.f8201n.f8180a;
                Log.w(str4, "Failed to connect to measurement client.");
                return;
            }
            b0 = zzag.m13435b0(this.f8199l);
            Z = zzag.m13439Z(this.f8199l);
            if (z2) {
                Z = Math.max(b0, Z);
                z = Z < b0;
            } else {
                if (b0 > 0) {
                    Z = b0;
                }
                z = b0 > 0;
            }
            zzae zzaeVar = new zzae(32053L, Z, z, str3, str2, str, this.f8200m);
            zzvVar2 = this.f8201n.f8187h;
            zzvVar2.initialize(ObjectWrapper.m14257f(this.f8199l), zzaeVar, this.f8189f);
        } catch (Exception e) {
            this.f8201n.m13413s(e, true, false);
        }
    }
}
