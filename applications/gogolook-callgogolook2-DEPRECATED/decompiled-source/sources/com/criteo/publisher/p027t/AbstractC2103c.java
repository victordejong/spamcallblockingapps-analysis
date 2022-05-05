package com.criteo.publisher.p027t;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.criteo.publisher.p027t.AbstractC2138t;
import java.util.List;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* renamed from: com.criteo.publisher.t.c */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/c.class */
public abstract class AbstractC2103c extends AbstractC2138t.AbstractC2139a {

    /* renamed from: a */
    public final List<AbstractC2138t.AbstractC2140b> f2365a;

    /* renamed from: b */
    public final Long f2366b;

    /* renamed from: c */
    public final boolean f2367c;

    /* renamed from: d */
    public final long f2368d;

    /* renamed from: e */
    public final Long f2369e;

    /* renamed from: f */
    public final String f2370f;

    public AbstractC2103c(List<AbstractC2138t.AbstractC2140b> list, @Nullable Long l, boolean z, long j, @Nullable Long l2, @Nullable String str) {
        if (list != null) {
            this.f2365a = list;
            this.f2366b = l;
            this.f2367c = z;
            this.f2368d = j;
            this.f2369e = l2;
            this.f2370f = str;
            return;
        }
        throw new NullPointerException("Null slots");
    }

    @Override // com.criteo.publisher.p027t.AbstractC2138t.AbstractC2139a
    @Nullable
    /* renamed from: a */
    public Long mo35632a() {
        return this.f2369e;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2138t.AbstractC2139a
    /* renamed from: b */
    public long mo35628b() {
        return this.f2368d;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2138t.AbstractC2139a
    @Nullable
    /* renamed from: c */
    public Long mo35627c() {
        return this.f2366b;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2138t.AbstractC2139a
    @Nullable
    /* renamed from: d */
    public String mo35626d() {
        return this.f2370f;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2138t.AbstractC2139a
    @NonNull
    /* renamed from: e */
    public List<AbstractC2138t.AbstractC2140b> mo35625e() {
        return this.f2365a;
    }

    public boolean equals(Object obj) {
        Long l;
        Long l2;
        String str;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2138t.AbstractC2139a)) {
            return false;
        }
        AbstractC2138t.AbstractC2139a aVar = (AbstractC2138t.AbstractC2139a) obj;
        if (!this.f2365a.equals(aVar.mo35625e()) || ((l = this.f2366b) != null ? !l.equals(aVar.mo35627c()) : aVar.mo35627c() != null) || this.f2367c != aVar.mo35624f() || this.f2368d != aVar.mo35628b() || ((l2 = this.f2369e) != null ? !l2.equals(aVar.mo35632a()) : aVar.mo35632a() != null) || ((str = this.f2370f) != null ? !str.equals(aVar.mo35626d()) : aVar.mo35626d() != null)) {
            z = false;
        }
        return z;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2138t.AbstractC2139a
    @AbstractC10120c("isTimeout")
    /* renamed from: f */
    public boolean mo35624f() {
        return this.f2367c;
    }

    public int hashCode() {
        int hashCode = this.f2365a.hashCode();
        Long l = this.f2366b;
        int i = 0;
        int hashCode2 = l == null ? 0 : l.hashCode();
        int i2 = this.f2367c ? 1231 : 1237;
        long j = this.f2368d;
        int i3 = (int) (j ^ (j >>> 32));
        Long l2 = this.f2369e;
        int hashCode3 = l2 == null ? 0 : l2.hashCode();
        String str = this.f2370f;
        if (str != null) {
            i = str.hashCode();
        }
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ hashCode3) * 1000003) ^ i;
    }

    public String toString() {
        return "MetricRequestFeedback{slots=" + this.f2365a + ", elapsed=" + this.f2366b + ", timeout=" + this.f2367c + ", cdbCallStartElapsed=" + this.f2368d + ", cdbCallEndElapsed=" + this.f2369e + ", requestGroupId=" + this.f2370f + CssParser.BLOCK_END;
    }
}
