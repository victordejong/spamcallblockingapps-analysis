package com.criteo.publisher.p027t;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.criteo.publisher.p027t.AbstractC2138t;
import java.util.List;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* renamed from: com.criteo.publisher.t.b */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/b.class */
public abstract class AbstractC2102b extends AbstractC2138t {

    /* renamed from: a */
    public final List<AbstractC2138t.AbstractC2139a> f2362a;

    /* renamed from: b */
    public final String f2363b;

    /* renamed from: c */
    public final int f2364c;

    public AbstractC2102b(List<AbstractC2138t.AbstractC2139a> list, String str, int i) {
        if (list != null) {
            this.f2362a = list;
            if (str != null) {
                this.f2363b = str;
                this.f2364c = i;
                return;
            }
            throw new NullPointerException("Null wrapperVersion");
        }
        throw new NullPointerException("Null feedbacks");
    }

    @Override // com.criteo.publisher.p027t.AbstractC2138t
    @NonNull
    /* renamed from: a */
    public List<AbstractC2138t.AbstractC2139a> mo35637a() {
        return this.f2362a;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2138t
    @AbstractC10120c("profile_id")
    /* renamed from: b */
    public int mo35634b() {
        return this.f2364c;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2138t
    @NonNull
    @AbstractC10120c("wrapper_version")
    /* renamed from: c */
    public String mo35633c() {
        return this.f2363b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2138t)) {
            return false;
        }
        AbstractC2138t tVar = (AbstractC2138t) obj;
        if (!this.f2362a.equals(tVar.mo35637a()) || !this.f2363b.equals(tVar.mo35633c()) || this.f2364c != tVar.mo35634b()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((((this.f2362a.hashCode() ^ 1000003) * 1000003) ^ this.f2363b.hashCode()) * 1000003) ^ this.f2364c;
    }

    public String toString() {
        return "MetricRequest{feedbacks=" + this.f2362a + ", wrapperVersion=" + this.f2363b + ", profileId=" + this.f2364c + CssParser.BLOCK_END;
    }
}
