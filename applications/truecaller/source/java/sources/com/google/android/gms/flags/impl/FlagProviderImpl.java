package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.flags.zzd;
import com.google.android.gms.internal.flags.zze;
import p193e.p1577m.p1578a.p1642f.p1662h.p1663a.CallableC25012a;
import p193e.p1577m.p1578a.p1642f.p1662h.p1663a.CallableC25013b;
import p193e.p1577m.p1578a.p1642f.p1662h.p1663a.CallableC25014c;
import p193e.p1577m.p1578a.p1642f.p1662h.p1663a.CallableC25015d;
@DynamiteApi
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/flags/impl/FlagProviderImpl.class */
public class FlagProviderImpl extends zzd {

    /* renamed from: a */
    public boolean f6199a = false;

    /* renamed from: b */
    public SharedPreferences f6200b;

    @Override // com.google.android.gms.flags.zzc
    public boolean getBooleanFlagValue(String str, boolean z, int i) {
        Boolean bool;
        if (!this.f6199a) {
            return z;
        }
        SharedPreferences sharedPreferences = this.f6200b;
        Boolean valueOf = Boolean.valueOf(z);
        try {
            bool = (Boolean) zze.zza(new CallableC25012a(sharedPreferences, str, valueOf));
        } catch (Exception e) {
            String valueOf2 = String.valueOf(e.getMessage());
            if (valueOf2.length() != 0) {
                "Flag value not available, returning default: ".concat(valueOf2);
                bool = valueOf;
            } else {
                new String("Flag value not available, returning default: ");
                bool = valueOf;
            }
        }
        return bool.booleanValue();
    }

    @Override // com.google.android.gms.flags.zzc
    public int getIntFlagValue(String str, int i, int i2) {
        Integer num;
        if (!this.f6199a) {
            return i;
        }
        SharedPreferences sharedPreferences = this.f6200b;
        Integer valueOf = Integer.valueOf(i);
        try {
            num = (Integer) zze.zza(new CallableC25013b(sharedPreferences, str, valueOf));
        } catch (Exception e) {
            String valueOf2 = String.valueOf(e.getMessage());
            if (valueOf2.length() != 0) {
                "Flag value not available, returning default: ".concat(valueOf2);
                num = valueOf;
            } else {
                new String("Flag value not available, returning default: ");
                num = valueOf;
            }
        }
        return num.intValue();
    }

    @Override // com.google.android.gms.flags.zzc
    public long getLongFlagValue(String str, long j, int i) {
        Long l;
        if (!this.f6199a) {
            return j;
        }
        SharedPreferences sharedPreferences = this.f6200b;
        Long valueOf = Long.valueOf(j);
        try {
            l = (Long) zze.zza(new CallableC25014c(sharedPreferences, str, valueOf));
        } catch (Exception e) {
            String valueOf2 = String.valueOf(e.getMessage());
            if (valueOf2.length() != 0) {
                "Flag value not available, returning default: ".concat(valueOf2);
                l = valueOf;
            } else {
                new String("Flag value not available, returning default: ");
                l = valueOf;
            }
        }
        return l.longValue();
    }

    @Override // com.google.android.gms.flags.zzc
    public String getStringFlagValue(String str, String str2, int i) {
        if (!this.f6199a) {
            return str2;
        }
        try {
            str2 = (String) zze.zza(new CallableC25015d(this.f6200b, str, str2));
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            if (valueOf.length() != 0) {
                "Flag value not available, returning default: ".concat(valueOf);
            } else {
                new String("Flag value not available, returning default: ");
            }
        }
        return str2;
    }

    @Override // com.google.android.gms.flags.zzc
    public void init(IObjectWrapper iObjectWrapper) {
        Context context = (Context) ObjectWrapper.m38746B1(iObjectWrapper);
        if (this.f6199a) {
            return;
        }
        try {
            this.f6200b = zzj.m38721a(context.createPackageContext("com.google.android.gms", 0));
            this.f6199a = true;
        } catch (PackageManager.NameNotFoundException e) {
        } catch (Exception e2) {
            String valueOf = String.valueOf(e2.getMessage());
            if (valueOf.length() != 0) {
                "Could not retrieve sdk flags, continuing with defaults: ".concat(valueOf);
            } else {
                new String("Could not retrieve sdk flags, continuing with defaults: ");
            }
        }
    }
}
