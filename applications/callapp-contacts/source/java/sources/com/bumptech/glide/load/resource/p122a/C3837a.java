package com.bumptech.glide.load.resource.p122a;

import com.bumptech.glide.load.data.AbstractC3675e;
import java.io.IOException;
import java.nio.ByteBuffer;
/* renamed from: com.bumptech.glide.load.resource.a.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/a/a.class */
public final class C3837a implements AbstractC3675e<ByteBuffer> {

    /* renamed from: a */
    private final ByteBuffer f14192a;

    /* renamed from: com.bumptech.glide.load.resource.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/a/a$a.class */
    public static final class C3838a implements AbstractC3675e.AbstractC3676a<ByteBuffer> {
        @Override // com.bumptech.glide.load.data.AbstractC3675e.AbstractC3676a
        /* renamed from: a */
        public final /* synthetic */ AbstractC3675e<ByteBuffer> mo37315a(ByteBuffer byteBuffer) {
            return new C3837a(byteBuffer);
        }

        @Override // com.bumptech.glide.load.data.AbstractC3675e.AbstractC3676a
        /* renamed from: a */
        public final Class<ByteBuffer> mo37316a() {
            return ByteBuffer.class;
        }
    }

    public C3837a(ByteBuffer byteBuffer) {
        this.f14192a = byteBuffer;
    }

    @Override // com.bumptech.glide.load.data.AbstractC3675e
    /* renamed from: a */
    public final /* synthetic */ ByteBuffer mo37318a() throws IOException {
        this.f14192a.position(0);
        return this.f14192a;
    }

    @Override // com.bumptech.glide.load.data.AbstractC3675e
    /* renamed from: b */
    public final void mo37317b() {
    }
}
