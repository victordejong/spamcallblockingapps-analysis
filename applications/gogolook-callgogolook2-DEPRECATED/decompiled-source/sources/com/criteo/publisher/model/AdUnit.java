package com.criteo.publisher.model;

import androidx.annotation.NonNull;
import com.criteo.publisher.p020a0.C1927o;
import com.criteo.publisher.p020a0.EnumC1908a;
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/AdUnit.class */
public abstract class AdUnit {

    /* renamed from: a */
    public final String f2191a;
    @NonNull

    /* renamed from: b */
    public final EnumC1908a f2192b;

    public AdUnit(String str, @NonNull EnumC1908a aVar) {
        this.f2191a = str;
        this.f2192b = aVar;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AdUnit adUnit = (AdUnit) obj;
        if (!C1927o.m36005a(this.f2191a, adUnit.f2191a) || this.f2192b != adUnit.f2192b) {
            z = false;
        }
        return z;
    }

    public String getAdUnitId() {
        return this.f2191a;
    }

    @NonNull
    public EnumC1908a getAdUnitType() {
        return this.f2192b;
    }

    public int hashCode() {
        return C1927o.m36004a(this.f2191a, this.f2192b);
    }
}
