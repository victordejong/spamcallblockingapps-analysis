package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC7609x5;
import com.google.android.gms.internal.measurement.C7570u5;
import java.io.IOException;
/* renamed from: com.google.android.gms.internal.measurement.u5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/u5.class */
public class C7570u5<MessageType extends AbstractC7609x5<MessageType, BuilderType>, BuilderType extends C7570u5<MessageType, BuilderType>> extends AbstractC7475n4<MessageType, BuilderType> {

    /* renamed from: d */
    private final MessageType f34702d;

    /* renamed from: e */
    protected MessageType f34703e;

    /* renamed from: f */
    protected boolean f34704f = false;

    public C7570u5(MessageType messagetype) {
        this.f34702d = messagetype;
        this.f34703e = (MessageType) messagetype.mo6745y(4, null, null);
    }

    /* renamed from: m */
    private static final void m6887m(MessageType messagetype, MessageType messagetype2) {
        C7394h7.m7368a().m7367b(messagetype.getClass()).mo7208b(messagetype, messagetype2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7636z6
    /* renamed from: h */
    public final /* bridge */ /* synthetic */ AbstractC7623y6 mo6643h() {
        return this.f34702d;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7475n4
    /* renamed from: i */
    public final /* bridge */ /* synthetic */ AbstractC7475n4 mo6890i(byte[] bArr, int i, int i2) {
        m6884p(bArr, 0, i2, C7448l5.m7188a());
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC7475n4
    /* renamed from: j */
    public final /* bridge */ /* synthetic */ AbstractC7475n4 mo6889j(byte[] bArr, int i, int i2, C7448l5 c7448l5) {
        m6884p(bArr, 0, i2, c7448l5);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.AbstractC7475n4
    /* renamed from: l */
    protected final /* bridge */ /* synthetic */ AbstractC7475n4 mo6888l(AbstractC7489o4 abstractC7489o4) {
        m6885o((AbstractC7609x5) abstractC7489o4);
        return this;
    }

    /* renamed from: n */
    public final MessageType m6886n() {
        MessageType mo6756f = mo6756f();
        boolean z = true;
        byte byteValue = ((Byte) mo6756f.mo6745y(1, null, null)).byteValue();
        if (byteValue != 1) {
            if (byteValue == 0) {
                z = false;
            } else {
                z = C7394h7.m7368a().m7367b(mo6756f.getClass()).mo7206d(mo6756f);
                mo6756f.mo6745y(2, true != z ? null : mo6756f, null);
            }
        }
        if (z) {
            return mo6756f;
        }
        throw new zzju(mo6756f);
    }

    /* renamed from: o */
    public final BuilderType m6885o(MessageType messagetype) {
        if (this.f34704f) {
            m6883q();
            this.f34704f = false;
        }
        m6887m(this.f34703e, messagetype);
        return this;
    }

    /* renamed from: p */
    public final BuilderType m6884p(byte[] bArr, int i, int i2, C7448l5 c7448l5) {
        if (this.f34704f) {
            m6883q();
            this.f34704f = false;
        }
        try {
            C7394h7.m7368a().m7367b(this.f34703e.getClass()).mo7203f(this.f34703e, bArr, 0, i2, new C7530r4(c7448l5));
            return this;
        } catch (zzib e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
        } catch (IndexOutOfBoundsException e3) {
            throw zzib.zza();
        }
    }

    /* renamed from: q */
    public void m6883q() {
        MessageType messagetype = (MessageType) this.f34703e.mo6745y(4, null, null);
        m6887m(messagetype, this.f34703e);
        this.f34703e = messagetype;
    }

    /* renamed from: r */
    public final BuilderType clone() {
        BuilderType buildertype = (BuilderType) this.f34702d.mo6745y(5, null, null);
        buildertype.m6885o(mo6756f());
        return buildertype;
    }

    /* renamed from: s */
    public MessageType mo6756f() {
        if (this.f34704f) {
            return this.f34703e;
        }
        MessageType messagetype = this.f34703e;
        C7394h7.m7368a().m7367b(messagetype.getClass()).mo7204e0(messagetype);
        this.f34704f = true;
        return this.f34703e;
    }
}
