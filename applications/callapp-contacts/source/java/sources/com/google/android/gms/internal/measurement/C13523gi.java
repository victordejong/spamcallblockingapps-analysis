package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC13526gl;
import com.google.android.gms.internal.measurement.C13523gi;
import java.io.IOException;
/* renamed from: com.google.android.gms.internal.measurement.gi */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gi.class */
public class C13523gi<MessageType extends AbstractC13526gl<MessageType, BuilderType>, BuilderType extends C13523gi<MessageType, BuilderType>> extends AbstractC13484ex<MessageType, BuilderType> {

    /* renamed from: a */
    protected MessageType f50759a;

    /* renamed from: b */
    protected boolean f50760b = false;

    /* renamed from: c */
    private final MessageType f50761c;

    public C13523gi(MessageType messagetype) {
        this.f50761c = messagetype;
        this.f50759a = (MessageType) messagetype.mo12768a(4);
    }

    /* renamed from: a */
    public MessageType mo12713B() {
        if (this.f50760b) {
            return this.f50759a;
        }
        MessageType messagetype = this.f50759a;
        C13565hx.m12665a().m12664a(messagetype.getClass()).mo12649c(messagetype);
        this.f50760b = true;
        return this.f50759a;
    }

    /* renamed from: a */
    private static final void m12775a(MessageType messagetype, MessageType messagetype2) {
        C13565hx.m12665a().m12664a(messagetype.getClass()).mo12650b(messagetype, messagetype2);
    }

    /* renamed from: b */
    private BuilderType m12772b(byte[] bArr, int i, C13512fy c13512fy) throws zzib {
        if (this.f50760b) {
            m12770y();
            this.f50760b = false;
        }
        try {
            C13565hx.m12665a().m12664a(this.f50759a.getClass()).mo12652a(this.f50759a, bArr, 0, i, new C13488fa(c13512fy));
            return this;
        } catch (zzib e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
        } catch (IndexOutOfBoundsException e3) {
            throw zzib.m12289a();
        }
    }

    /* renamed from: A */
    public final MessageType m12779A() {
        MessageType mo12713B = mo12713B();
        boolean z = true;
        byte byteValue = ((Byte) mo12713B.mo12768a(1)).byteValue();
        if (byteValue != 1) {
            if (byteValue == 0) {
                z = false;
            } else {
                z = C13565hx.m12665a().m12664a(mo12713B.getClass()).mo12648d(mo12713B);
                mo12713B.mo12768a(2);
            }
        }
        if (z) {
            return mo12713B;
        }
        throw new zzju(mo12713B);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13557hp
    /* renamed from: C */
    public final /* bridge */ /* synthetic */ AbstractC13556ho mo12704C() {
        return this.f50761c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.AbstractC13484ex
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ AbstractC13484ex mo12777a(AbstractC13485ey abstractC13485ey) {
        m12776a((C13523gi<MessageType, BuilderType>) ((AbstractC13526gl) abstractC13485ey));
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13484ex
    /* renamed from: a */
    public final /* synthetic */ AbstractC13484ex mo12774a(byte[] bArr, int i) throws zzib {
        m12772b(bArr, i, C13512fy.m12798a());
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13484ex
    /* renamed from: a */
    public final /* synthetic */ AbstractC13484ex mo12773a(byte[] bArr, int i, C13512fy c13512fy) throws zzib {
        m12772b(bArr, i, c13512fy);
        return this;
    }

    /* renamed from: a */
    public final BuilderType m12776a(MessageType messagetype) {
        if (this.f50760b) {
            m12770y();
            this.f50760b = false;
        }
        m12775a(this.f50759a, messagetype);
        return this;
    }

    /* renamed from: y */
    public final void m12770y() {
        MessageType messagetype = (MessageType) this.f50759a.mo12768a(4);
        m12775a(messagetype, this.f50759a);
        this.f50759a = messagetype;
    }

    /* renamed from: z */
    public final BuilderType mo12771x() {
        BuilderType buildertype = (BuilderType) this.f50761c.mo12768a(5);
        buildertype.m12776a(mo12713B());
        return buildertype;
    }
}
