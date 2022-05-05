package com.criteo.publisher.model;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* renamed from: com.criteo.publisher.model.b */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/b.class */
public abstract class AbstractC2023b extends AbstractC2049t {

    /* renamed from: a */
    public final String f2200a;

    /* renamed from: b */
    public final String f2201b;

    /* renamed from: c */
    public final String f2202c;

    /* renamed from: d */
    public final int f2203d;

    public AbstractC2023b(String str, String str2, String str3, int i) {
        if (str != null) {
            this.f2200a = str;
            if (str2 != null) {
                this.f2201b = str2;
                if (str3 != null) {
                    this.f2202c = str3;
                    this.f2203d = i;
                    return;
                }
                throw new NullPointerException("Null sdkVersion");
            }
            throw new NullPointerException("Null bundleId");
        }
        throw new NullPointerException("Null criteoPublisherId");
    }

    @Override // com.criteo.publisher.model.AbstractC2049t
    @NonNull
    /* renamed from: a */
    public String mo35818a() {
        return this.f2201b;
    }

    @Override // com.criteo.publisher.model.AbstractC2049t
    @NonNull
    @AbstractC10120c("cpId")
    /* renamed from: b */
    public String mo35815b() {
        return this.f2200a;
    }

    @Override // com.criteo.publisher.model.AbstractC2049t
    @AbstractC10120c("rtbProfileId")
    /* renamed from: c */
    public int mo35814c() {
        return this.f2203d;
    }

    @Override // com.criteo.publisher.model.AbstractC2049t
    @NonNull
    /* renamed from: d */
    public String mo35813d() {
        return this.f2202c;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2049t)) {
            return false;
        }
        AbstractC2049t tVar = (AbstractC2049t) obj;
        if (!this.f2200a.equals(tVar.mo35815b()) || !this.f2201b.equals(tVar.mo35818a()) || !this.f2202c.equals(tVar.mo35813d()) || this.f2203d != tVar.mo35814c()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((((this.f2200a.hashCode() ^ 1000003) * 1000003) ^ this.f2201b.hashCode()) * 1000003) ^ this.f2202c.hashCode()) * 1000003) ^ this.f2203d;
    }

    public String toString() {
        return "RemoteConfigRequest{criteoPublisherId=" + this.f2200a + ", bundleId=" + this.f2201b + ", sdkVersion=" + this.f2202c + ", profileId=" + this.f2203d + CssParser.BLOCK_END;
    }
}
