package com.bumptech.glide.load.p212i;

import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.AbstractC4007d;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import com.bumptech.glide.p222o.C4367d;
import com.bumptech.glide.p223p.C4368a;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
/* renamed from: com.bumptech.glide.load.i.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/d.class */
public class C4161d implements AbstractC4191n<File, ByteBuffer> {

    /* renamed from: com.bumptech.glide.load.i.d$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/d$a.class */
    public static final class C4162a implements AbstractC4007d<ByteBuffer> {

        /* renamed from: d */
        private final File f13019d;

        C4162a(File file) {
            this.f13019d = file;
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: a */
        public Class<ByteBuffer> mo23090a() {
            return ByteBuffer.class;
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: b */
        public void mo23089b() {
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: d */
        public DataSource mo23087d() {
            return DataSource.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: e */
        public void mo23086e(Priority priority, AbstractC4007d.AbstractC4008a<? super ByteBuffer> abstractC4008a) {
            try {
                abstractC4008a.mo23126f(C4368a.m22753a(this.f13019d));
            } catch (IOException e) {
                if (Log.isLoggable("ByteBufferFileLoader", 3)) {
                    Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", e);
                }
                abstractC4008a.mo23127c(e);
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.i.d$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/d$b.class */
    public static class C4163b implements AbstractC4193o<File, ByteBuffer> {
        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<File, ByteBuffer> mo23078b(C4199r c4199r) {
            return new C4161d();
        }
    }

    /* renamed from: c */
    public AbstractC4191n.C4192a<ByteBuffer> mo23081b(File file, int i, int i2, C4032e c4032e) {
        return new AbstractC4191n.C4192a<>(new C4367d(file), new C4162a(file));
    }

    /* renamed from: d */
    public boolean mo23082a(File file) {
        return true;
    }
}
