package com.truecaller.ads.mediation.model;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J.\u0010\f\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0007J\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\n\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0014\u001a\u0004\b\u0015\u0010\u0007R\u0019\u0010\u000b\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0014\u001a\u0004\b\u0016\u0010\u0007R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0017\u001a\u0004\b\u0018\u0010\u0004¨\u0006\u001b"}, d2 = {"Lcom/truecaller/ads/mediation/model/AdSize;", "", "", "component1", "()Ljava/lang/String;", "", "component2", "()I", "component3", "id", "width", "height", "copy", "(Ljava/lang/String;II)Lcom/truecaller/ads/mediation/model/AdSize;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "I", "getWidth", "getHeight", "Ljava/lang/String;", "getId", "<init>", "(Ljava/lang/String;II)V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/mediation/model/AdSize.class */
public final class AdSize {
    private final int height;

    /* renamed from: id */
    private final String f9880id;
    private final int width;

    public AdSize(String str, int i, int i2) {
        l.e(str, "id");
        this.f9880id = str;
        this.width = i;
        this.height = i2;
    }

    public static /* synthetic */ AdSize copy$default(AdSize adSize, String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = adSize.f9880id;
        }
        if ((i3 & 2) != 0) {
            i = adSize.width;
        }
        if ((i3 & 4) != 0) {
            i2 = adSize.height;
        }
        return adSize.copy(str, i, i2);
    }

    public final String component1() {
        return this.f9880id;
    }

    public final int component2() {
        return this.width;
    }

    public final int component3() {
        return this.height;
    }

    public final AdSize copy(String str, int i, int i2) {
        l.e(str, "id");
        return new AdSize(str, i, i2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AdSize)) {
                return false;
            }
            AdSize adSize = (AdSize) obj;
            return l.a(this.f9880id, adSize.f9880id) && this.width == adSize.width && this.height == adSize.height;
        }
        return true;
    }

    public final int getHeight() {
        return this.height;
    }

    public final String getId() {
        return this.f9880id;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        String str = this.f9880id;
        return ((((str != null ? str.hashCode() : 0) * 31) + this.width) * 31) + this.height;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AdSize(id=");
        m8728C.append(this.f9880id);
        m8728C.append(", width=");
        m8728C.append(this.width);
        m8728C.append(", height=");
        return C22128a.m8697J2(m8728C, this.height, ")");
    }
}
