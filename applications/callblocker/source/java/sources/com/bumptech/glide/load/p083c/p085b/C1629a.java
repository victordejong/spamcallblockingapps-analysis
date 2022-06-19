package com.bumptech.glide.load.p083c.p085b;

import com.bumptech.glide.load.p079a.AbstractC1477e;
import java.nio.ByteBuffer;
/* renamed from: com.bumptech.glide.load.c.b.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/b/a.class */
public class C1629a implements AbstractC1477e<ByteBuffer> {

    /* renamed from: a */
    private final ByteBuffer f5029a;

    /* renamed from: com.bumptech.glide.load.c.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/b/a$a.class */
    public static class C1630a implements AbstractC1477e.AbstractC1478a<ByteBuffer> {
        /* renamed from: a */
        public AbstractC1477e<ByteBuffer> mo16694a(ByteBuffer byteBuffer) {
            return new C1629a(byteBuffer);
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1477e.AbstractC1478a
        /* renamed from: a */
        public Class<ByteBuffer> mo16695a() {
            return ByteBuffer.class;
        }
    }

    public C1629a(ByteBuffer byteBuffer) {
        this.f5029a = byteBuffer;
    }

    @Override // com.bumptech.glide.load.p079a.AbstractC1477e
    /* renamed from: b */
    public void mo16697b() {
    }

    /* renamed from: c */
    public ByteBuffer mo16698a() {
        this.f5029a.position(0);
        return this.f5029a;
    }
}
