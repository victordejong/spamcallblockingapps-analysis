package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.gi;
import com.google.android.gms.internal.measurement.gl;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/gi.class */
public class gi<MessageType extends gl<MessageType, BuilderType>, BuilderType extends gi<MessageType, BuilderType>> extends ex<MessageType, BuilderType> {

    /* renamed from: a  reason: collision with root package name */
    protected MessageType f29059a;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f29060b = false;

    /* renamed from: c  reason: collision with root package name */
    private final MessageType f29061c;

    /* JADX INFO: Access modifiers changed from: protected */
    public gi(MessageType messagetype) {
        this.f29061c = messagetype;
        this.f29059a = (MessageType) ((gl) messagetype.a(4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public MessageType B() {
        if (this.f29060b) {
            return this.f29059a;
        }
        MessageType messagetype = this.f29059a;
        hx.a().a(messagetype.getClass()).c(messagetype);
        this.f29060b = true;
        return this.f29059a;
    }

    private static final void a(MessageType messagetype, MessageType messagetype2) {
        hx.a().a(messagetype.getClass()).b(messagetype, messagetype2);
    }

    private BuilderType b(byte[] bArr, int i, fy fyVar) throws zzib {
        if (this.f29060b) {
            y();
            this.f29060b = false;
        }
        try {
            hx.a().a(this.f29059a.getClass()).a(this.f29059a, bArr, 0, i, new fa(fyVar));
            return this;
        } catch (zzib e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
        } catch (IndexOutOfBoundsException e3) {
            throw zzib.a();
        }
    }

    public final MessageType A() {
        MessageType a2 = B();
        boolean z = true;
        byte byteValue = ((Byte) a2.a(1)).byteValue();
        if (byteValue != 1) {
            if (byteValue == 0) {
                z = false;
            } else {
                z = hx.a().a(a2.getClass()).d(a2);
                a2.a(2);
            }
        }
        if (z) {
            return a2;
        }
        throw new zzju(a2);
    }

    @Override // com.google.android.gms.internal.measurement.hp
    public final /* bridge */ /* synthetic */ ho C() {
        return this.f29061c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.ex
    protected final /* bridge */ /* synthetic */ ex a(ey eyVar) {
        a((gi<MessageType, BuilderType>) ((gl) eyVar));
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.ex
    public final /* synthetic */ ex a(byte[] bArr, int i) throws zzib {
        b(bArr, i, fy.a());
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.ex
    public final /* synthetic */ ex a(byte[] bArr, int i, fy fyVar) throws zzib {
        b(bArr, i, fyVar);
        return this;
    }

    public final BuilderType a(MessageType messagetype) {
        if (this.f29060b) {
            y();
            this.f29060b = false;
        }
        a(this.f29059a, messagetype);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void y() {
        MessageType messagetype = (MessageType) ((gl) this.f29059a.a(4));
        a(messagetype, this.f29059a);
        this.f29059a = messagetype;
    }

    /* renamed from: z */
    public final BuilderType x() {
        BuilderType buildertype = (BuilderType) ((gi) this.f29061c.a(5));
        buildertype.a(B());
        return buildertype;
    }
}
