package com.criteo.publisher.p032y.p033b;

import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
/* renamed from: com.criteo.publisher.y.b.a */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/y/b/a.class */
public abstract class AbstractC2168a extends AbstractC2171c {

    /* renamed from: a */
    public final String f2496a;

    /* renamed from: b */
    public final Boolean f2497b;

    /* renamed from: c */
    public final Integer f2498c;

    public AbstractC2168a(String str, @Nullable Boolean bool, Integer num) {
        if (str != null) {
            this.f2496a = str;
            this.f2497b = bool;
            if (num != null) {
                this.f2498c = num;
                return;
            }
            throw new NullPointerException("Null version");
        }
        throw new NullPointerException("Null consentData");
    }

    @Override // com.criteo.publisher.p032y.p033b.AbstractC2171c
    /* renamed from: a */
    public String mo35536a() {
        return this.f2496a;
    }

    @Override // com.criteo.publisher.p032y.p033b.AbstractC2171c
    @Nullable
    /* renamed from: b */
    public Boolean mo35533b() {
        return this.f2497b;
    }

    @Override // com.criteo.publisher.p032y.p033b.AbstractC2171c
    /* renamed from: d */
    public Integer mo35531d() {
        return this.f2498c;
    }

    public boolean equals(Object obj) {
        Boolean bool;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2171c)) {
            return false;
        }
        AbstractC2171c cVar = (AbstractC2171c) obj;
        if (!this.f2496a.equals(cVar.mo35536a()) || ((bool = this.f2497b) != null ? !bool.equals(cVar.mo35533b()) : cVar.mo35533b() != null) || !this.f2498c.equals(cVar.mo35531d())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f2496a.hashCode();
        Boolean bool = this.f2497b;
        return ((((hashCode ^ 1000003) * 1000003) ^ (bool == null ? 0 : bool.hashCode())) * 1000003) ^ this.f2498c.hashCode();
    }

    public String toString() {
        return "GdprData{consentData=" + this.f2496a + ", gdprApplies=" + this.f2497b + ", version=" + this.f2498c + CssParser.BLOCK_END;
    }
}
