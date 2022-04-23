package com.bumptech.glide.load.resource.a;

import com.bumptech.glide.load.data.e;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/a/a.class */
public final class a implements e<ByteBuffer> {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f7631a;

    /* renamed from: com.bumptech.glide.load.resource.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/a/a$a.class */
    public static final class C0149a implements e.a<ByteBuffer> {
        @Override // com.bumptech.glide.load.data.e.a
        public final /* synthetic */ e<ByteBuffer> a(ByteBuffer byteBuffer) {
            return new a(byteBuffer);
        }

        @Override // com.bumptech.glide.load.data.e.a
        public final Class<ByteBuffer> a() {
            return ByteBuffer.class;
        }
    }

    public a(ByteBuffer byteBuffer) {
        this.f7631a = byteBuffer;
    }

    @Override // com.bumptech.glide.load.data.e
    public final /* synthetic */ ByteBuffer a() throws IOException {
        this.f7631a.position(0);
        return this.f7631a;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
    }
}
