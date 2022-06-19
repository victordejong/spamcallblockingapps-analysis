package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ee3;
import com.google.android.gms.internal.ads.ie3;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ee3.class */
public class ee3<MessageType extends ie3<MessageType, BuilderType>, BuilderType extends ee3<MessageType, BuilderType>> extends sc3<MessageType, BuilderType> {

    /* renamed from: d */
    private final MessageType f22120d;

    /* renamed from: e */
    protected MessageType f22121e;

    /* renamed from: f */
    protected boolean f22122f = false;

    public ee3(MessageType messagetype) {
        this.f22120d = messagetype;
        this.f22121e = (MessageType) messagetype.mo8268B(4, null, null);
    }

    /* renamed from: i */
    private static final void m15516i(MessageType messagetype, MessageType messagetype2) {
        uf3.m10334a().m10333b(messagetype.getClass()).mo11907b(messagetype, messagetype2);
    }

    @Override // com.google.android.gms.internal.ads.nf3
    /* renamed from: g */
    public final /* bridge */ /* synthetic */ mf3 mo12922g() {
        return this.f22120d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.sc3
    /* renamed from: h */
    protected final /* bridge */ /* synthetic */ sc3 mo11084h(tc3 tc3Var) {
        m15511o((ie3) tc3Var);
        return this;
    }

    /* renamed from: j */
    public void m15515j() {
        MessageType messagetype = (MessageType) this.f22121e.mo8268B(4, null, null);
        m15516i(messagetype, this.f22121e);
        this.f22121e = messagetype;
    }

    /* renamed from: l */
    public final BuilderType clone() {
        BuilderType buildertype = (BuilderType) this.f22120d.mo8268B(5, null, null);
        buildertype.m15511o(mo13566P());
        return buildertype;
    }

    /* renamed from: m */
    public MessageType mo13566P() {
        if (this.f22122f) {
            return this.f22121e;
        }
        MessageType messagetype = this.f22121e;
        uf3.m10334a().m10333b(messagetype.getClass()).mo11905d(messagetype);
        this.f22122f = true;
        return this.f22121e;
    }

    /* renamed from: n */
    public final MessageType m15512n() {
        MessageType mo13566P = mo13566P();
        if (mo13566P.m14417w()) {
            return mo13566P;
        }
        throw new zzgin(mo13566P);
    }

    /* renamed from: o */
    public final BuilderType m15511o(MessageType messagetype) {
        if (this.f22122f) {
            m15515j();
            this.f22122f = false;
        }
        m15516i(this.f22121e, messagetype);
        return this;
    }

    /* renamed from: p */
    public final BuilderType m15510p(byte[] bArr, int i, int i2, vd3 vd3Var) {
        if (this.f22122f) {
            m15515j();
            this.f22122f = false;
        }
        try {
            uf3.m10334a().m10333b(this.f22121e.getClass()).mo11901h(this.f22121e, bArr, 0, i2, new wc3(vd3Var));
            return this;
        } catch (zzggm e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
        } catch (IndexOutOfBoundsException e3) {
            throw zzggm.zzd();
        }
    }
}
