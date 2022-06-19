package com.bumptech.glide.load.p081b;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.EnumC1428g;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.EnumC1464a;
import com.bumptech.glide.load.p079a.AbstractC1475d;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import com.bumptech.glide.p076g.C1431c;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.b.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/f.class */
public class C1524f<Data> implements AbstractC1546n<File, Data> {

    /* renamed from: a */
    private final AbstractC1529d<Data> f4870a;

    /* renamed from: com.bumptech.glide.load.b.f$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/f$a.class */
    public static class C1525a<Data> implements AbstractC1548o<File, Data> {

        /* renamed from: a */
        private final AbstractC1529d<Data> f4871a;

        public C1525a(AbstractC1529d<Data> abstractC1529d) {
            this.f4871a = abstractC1529d;
        }

        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public final AbstractC1546n<File, Data> mo16801a(C1554r c1554r) {
            return new C1524f(this.f4871a);
        }
    }

    /* renamed from: com.bumptech.glide.load.b.f$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/f$b.class */
    public static class C1526b extends C1525a<ParcelFileDescriptor> {
        public C1526b() {
            super(new AbstractC1529d<ParcelFileDescriptor>() { // from class: com.bumptech.glide.load.b.f.b.1
                /* renamed from: a */
                public ParcelFileDescriptor mo16864b(File file) {
                    return ParcelFileDescriptor.open(file, 268435456);
                }

                @Override // com.bumptech.glide.load.p081b.C1524f.AbstractC1529d
                /* renamed from: a */
                public Class<ParcelFileDescriptor> mo16868a() {
                    return ParcelFileDescriptor.class;
                }

                /* renamed from: a */
                public void mo16865a(ParcelFileDescriptor parcelFileDescriptor) {
                    parcelFileDescriptor.close();
                }
            });
        }
    }

    /* renamed from: com.bumptech.glide.load.b.f$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/f$c.class */
    public static final class C1528c<Data> implements AbstractC1475d<Data> {

        /* renamed from: a */
        private final File f4872a;

        /* renamed from: b */
        private final AbstractC1529d<Data> f4873b;

        /* renamed from: c */
        private Data f4874c;

        C1528c(File file, AbstractC1529d<Data> abstractC1529d) {
            this.f4872a = file;
            this.f4873b = abstractC1529d;
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: a */
        public Class<Data> mo16813a() {
            return this.f4873b.mo16868a();
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: a */
        public void mo16812a(EnumC1428g enumC1428g, AbstractC1475d.AbstractC1476a<? super Data> abstractC1476a) {
            try {
                this.f4874c = this.f4873b.mo16864b(this.f4872a);
                abstractC1476a.mo16337a((AbstractC1475d.AbstractC1476a<? super Data>) ((Data) this.f4874c));
            } catch (FileNotFoundException e) {
                if (Log.isLoggable("FileLoader", 3)) {
                    Log.d("FileLoader", "Failed to open file", e);
                }
                abstractC1476a.mo16338a((Exception) e);
            }
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: b */
        public void mo16811b() {
            if (this.f4874c != null) {
                try {
                    this.f4873b.mo16865a(this.f4874c);
                } catch (IOException e) {
                }
            }
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

    /* renamed from: com.bumptech.glide.load.b.f$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/f$d.class */
    public interface AbstractC1529d<Data> {
        /* renamed from: a */
        Class<Data> mo16868a();

        /* renamed from: a */
        void mo16865a(Data data);

        /* renamed from: b */
        Data mo16864b(File file);
    }

    /* renamed from: com.bumptech.glide.load.b.f$e */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/f$e.class */
    public static class C1530e extends C1525a<InputStream> {
        public C1530e() {
            super(new AbstractC1529d<InputStream>() { // from class: com.bumptech.glide.load.b.f.e.1
                /* renamed from: a */
                public InputStream mo16864b(File file) {
                    return new FileInputStream(file);
                }

                @Override // com.bumptech.glide.load.p081b.C1524f.AbstractC1529d
                /* renamed from: a */
                public Class<InputStream> mo16868a() {
                    return InputStream.class;
                }

                /* renamed from: a */
                public void mo16865a(InputStream inputStream) {
                    inputStream.close();
                }
            });
        }
    }

    public C1524f(AbstractC1529d<Data> abstractC1529d) {
        this.f4870a = abstractC1529d;
    }

    /* renamed from: a */
    public AbstractC1546n.C1547a<Data> mo16802a(File file, int i, int i2, C1781h c1781h) {
        return new AbstractC1546n.C1547a<>(new C1431c(file), new C1528c(file, this.f4870a));
    }

    /* renamed from: a */
    public boolean mo16803a(File file) {
        return true;
    }
}
