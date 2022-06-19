package com.criteo.publisher.model;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087\b\u0018��B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0002\u001a\u00020\u0001HÆ\u0003¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u0001HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0003J$\u0010\u0007\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u00012\b\b\u0002\u0010\u0006\u001a\u00020\u0001HÆ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0001HÖ\u0001¢\u0006\u0004\b\f\u0010\u0003J\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rHÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0005\u001a\u00020\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0012\u001a\u0004\b\u0013\u0010\u0003R\u0013\u0010\u0015\u001a\u00020\t8F@\u0006¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u000bR\u0019\u0010\u0006\u001a\u00020\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0012\u001a\u0004\b\u0016\u0010\u0003¨\u0006\u0019"}, d2 = {"Lcom/criteo/publisher/model/AdSize;", "", "component1", "()I", "component2", "width", "height", "copy", "(II)Lcom/criteo/publisher/model/AdSize;", "", "toString", "()Ljava/lang/String;", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "I", "getWidth", "getFormattedSize", "formattedSize", "getHeight", "<init>", "(II)V", "publisher-sdk_release"}, k = 1, mv = {1, 4, 0})
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/AdSize.class */
public final class AdSize {
    private final int height;
    private final int width;

    public AdSize(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public static /* synthetic */ AdSize copy$default(AdSize adSize, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = adSize.width;
        }
        if ((i3 & 2) != 0) {
            i2 = adSize.height;
        }
        return adSize.copy(i, i2);
    }

    public final int component1() {
        return this.width;
    }

    public final int component2() {
        return this.height;
    }

    public final AdSize copy(int i, int i2) {
        return new AdSize(i, i2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AdSize)) {
                return false;
            }
            AdSize adSize = (AdSize) obj;
            return this.width == adSize.width && this.height == adSize.height;
        }
        return true;
    }

    public final String getFormattedSize() {
        return String.valueOf(this.width) + "x" + this.height;
    }

    public final int getHeight() {
        return this.height;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return (this.width * 31) + this.height;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AdSize(width=");
        m8728C.append(this.width);
        m8728C.append(", height=");
        return C22128a.m8697J2(m8728C, this.height, ")");
    }
}
