package com.truecaller.ads.mediation.google;

import androidx.annotation.Keep;
import e.a.i.d0.d0.m;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018��2\u00020\u0001B\u001b\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J(\u0010\b\u001a\u00020��2\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002HÆ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u001b\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004R\u001b\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0014\u001a\u0004\b\u0016\u0010\u0004¨\u0006\u0019"}, d2 = {"Lcom/truecaller/ads/mediation/google/MediationImageAssets;", "", "Le/a/i/d0/d0/m;", "component1", "()Le/a/i/d0/d0/m;", "component2", "iconDrawable", "imageDrawable", "copy", "(Le/a/i/d0/d0/m;Le/a/i/d0/d0/m;)Lcom/truecaller/ads/mediation/google/MediationImageAssets;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Le/a/i/d0/d0/m;", "getImageDrawable", "getIconDrawable", "<init>", "(Le/a/i/d0/d0/m;Le/a/i/d0/d0/m;)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/mediation/google/MediationImageAssets.class */
public final class MediationImageAssets {
    private final m iconDrawable;
    private final m imageDrawable;

    public MediationImageAssets(m mVar, m mVar2) {
        this.iconDrawable = mVar;
        this.imageDrawable = mVar2;
    }

    public static /* synthetic */ MediationImageAssets copy$default(MediationImageAssets mediationImageAssets, m mVar, m mVar2, int i, Object obj) {
        if ((i & 1) != 0) {
            mVar = mediationImageAssets.iconDrawable;
        }
        if ((i & 2) != 0) {
            mVar2 = mediationImageAssets.imageDrawable;
        }
        return mediationImageAssets.copy(mVar, mVar2);
    }

    public final m component1() {
        return this.iconDrawable;
    }

    public final m component2() {
        return this.imageDrawable;
    }

    public final MediationImageAssets copy(m mVar, m mVar2) {
        return new MediationImageAssets(mVar, mVar2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof MediationImageAssets)) {
                return false;
            }
            MediationImageAssets mediationImageAssets = (MediationImageAssets) obj;
            return l.a(this.iconDrawable, mediationImageAssets.iconDrawable) && l.a(this.imageDrawable, mediationImageAssets.imageDrawable);
        }
        return true;
    }

    public final m getIconDrawable() {
        return this.iconDrawable;
    }

    public final m getImageDrawable() {
        return this.imageDrawable;
    }

    public int hashCode() {
        m mVar = this.iconDrawable;
        int i = 0;
        int hashCode = mVar != null ? mVar.hashCode() : 0;
        m mVar2 = this.imageDrawable;
        if (mVar2 != null) {
            i = mVar2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("MediationImageAssets(iconDrawable=");
        m8728C.append(this.iconDrawable);
        m8728C.append(", imageDrawable=");
        m8728C.append(this.imageDrawable);
        m8728C.append(")");
        return m8728C.toString();
    }
}
