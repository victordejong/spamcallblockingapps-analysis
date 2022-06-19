package com.bumptech.glide.load.p081b;

import android.util.Log;
import com.bumptech.glide.EnumC1428g;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.EnumC1464a;
import com.bumptech.glide.load.p079a.AbstractC1475d;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import com.bumptech.glide.p076g.C1431c;
import com.bumptech.glide.p077h.C1434a;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
/* renamed from: com.bumptech.glide.load.b.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/d.class */
public class C1516d implements AbstractC1546n<File, ByteBuffer> {

    /* renamed from: com.bumptech.glide.load.b.d$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/d$a.class */
    public static final class C1517a implements AbstractC1475d<ByteBuffer> {

        /* renamed from: a */
        private final File f4863a;

        C1517a(File file) {
            this.f4863a = file;
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: a */
        public Class<ByteBuffer> mo16813a() {
            return ByteBuffer.class;
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: a */
        public void mo16812a(EnumC1428g enumC1428g, AbstractC1475d.AbstractC1476a<? super ByteBuffer> abstractC1476a) {
            try {
                abstractC1476a.mo16337a((AbstractC1475d.AbstractC1476a<? super ByteBuffer>) C1434a.m17035a(this.f4863a));
            } catch (IOException e) {
                if (Log.isLoggable("ByteBufferFileLoader", 3)) {
                    Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", e);
                }
                abstractC1476a.mo16338a((Exception) e);
            }
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: b */
        public void mo16811b() {
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: c */
        public void mo16810c() {
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: d */
        public EnumC1464a mo16809d() {
            return EnumC1464a.LOCAL;
        }
    }

    /* renamed from: com.bumptech.glide.load.b.d$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/d$b.class */
    public static class C1518b implements AbstractC1548o<File, ByteBuffer> {
        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<File, ByteBuffer> mo16801a(C1554r c1554r) {
            return new C1516d();
        }
    }

    /* renamed from: a */
    public AbstractC1546n.C1547a<ByteBuffer> mo16802a(File file, int i, int i2, C1781h c1781h) {
        return new AbstractC1546n.C1547a<>(new C1431c(file), new C1517a(file));
    }

    /* renamed from: a */
    public boolean mo16803a(File file) {
        return true;
    }
}
