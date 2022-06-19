package com.bumptech.glide.load.p214j.p215d;

import com.bumptech.glide.load.data.AbstractC4009e;
import java.nio.ByteBuffer;
/* renamed from: com.bumptech.glide.load.j.d.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/d/a.class */
public class C4241a implements AbstractC4009e<ByteBuffer> {

    /* renamed from: a */
    private final ByteBuffer f13138a;

    /* renamed from: com.bumptech.glide.load.j.d.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/d/a$a.class */
    public static class C4242a implements AbstractC4009e.AbstractC4010a<ByteBuffer> {
        @Override // com.bumptech.glide.load.data.AbstractC4009e.AbstractC4010a
        /* renamed from: a */
        public Class<ByteBuffer> mo23071a() {
            return ByteBuffer.class;
        }

        /* renamed from: c */
        public AbstractC4009e<ByteBuffer> mo23070b(ByteBuffer byteBuffer) {
            return new C4241a(byteBuffer);
        }
    }

    public C4241a(ByteBuffer byteBuffer) {
        this.f13138a = byteBuffer;
    }

    @Override // com.bumptech.glide.load.data.AbstractC4009e
    /* renamed from: b */
    public void mo23073b() {
    }

    /* renamed from: c */
    public ByteBuffer mo23074a() {
        this.f13138a.position(0);
        return this.f13138a;
    }
}
