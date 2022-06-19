package com.bumptech.glide.load.p212i;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.AbstractC4007d;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import com.bumptech.glide.p222o.C4367d;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.i.f */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/f.class */
public class C4169f<Data> implements AbstractC4191n<File, Data> {

    /* renamed from: a */
    private final AbstractC4174d<Data> f13026a;

    /* renamed from: com.bumptech.glide.load.i.f$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/f$a.class */
    public static class C4170a<Data> implements AbstractC4193o<File, Data> {

        /* renamed from: a */
        private final AbstractC4174d<Data> f13027a;

        public C4170a(AbstractC4174d<Data> abstractC4174d) {
            this.f13027a = abstractC4174d;
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public final AbstractC4191n<File, Data> mo23078b(C4199r c4199r) {
            return new C4169f(this.f13027a);
        }
    }

    /* renamed from: com.bumptech.glide.load.i.f$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/f$b.class */
    public static class C4171b extends C4170a<ParcelFileDescriptor> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.bumptech.glide.load.i.f$b$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/f$b$a.class */
        public class C4172a implements AbstractC4174d<ParcelFileDescriptor> {
            C4172a() {
            }

            @Override // com.bumptech.glide.load.p212i.C4169f.AbstractC4174d
            /* renamed from: a */
            public Class<ParcelFileDescriptor> mo23160a() {
                return ParcelFileDescriptor.class;
            }

            /* renamed from: d */
            public void mo23159b(ParcelFileDescriptor parcelFileDescriptor) {
                parcelFileDescriptor.close();
            }

            /* renamed from: e */
            public ParcelFileDescriptor mo23158c(File file) {
                return ParcelFileDescriptor.open(file, 268435456);
            }
        }

        public C4171b() {
            super(new C4172a());
        }
    }

    /* renamed from: com.bumptech.glide.load.i.f$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/f$c.class */
    public static final class C4173c<Data> implements AbstractC4007d<Data> {

        /* renamed from: d */
        private final File f13028d;

        /* renamed from: e */
        private final AbstractC4174d<Data> f13029e;

        /* renamed from: f */
        private Data f13030f;

        C4173c(File file, AbstractC4174d<Data> abstractC4174d) {
            this.f13028d = file;
            this.f13029e = abstractC4174d;
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: a */
        public Class<Data> mo23090a() {
            return this.f13029e.mo23160a();
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: b */
        public void mo23089b() {
            Data data = this.f13030f;
            if (data != null) {
                try {
                    this.f13029e.mo23159b(data);
                } catch (IOException e) {
                }
            }
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: d */
        public DataSource mo23087d() {
            return DataSource.LOCAL;
        }

        /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object, Data] */
        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: e */
        public void mo23086e(Priority priority, AbstractC4007d.AbstractC4008a<? super Data> abstractC4008a) {
            try {
                Data mo23158c = this.f13029e.mo23158c(this.f13028d);
                this.f13030f = mo23158c;
                abstractC4008a.mo23126f(mo23158c);
            } catch (FileNotFoundException e) {
                if (Log.isLoggable("FileLoader", 3)) {
                    Log.d("FileLoader", "Failed to open file", e);
                }
                abstractC4008a.mo23127c(e);
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.i.f$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/f$d.class */
    public interface AbstractC4174d<Data> {
        /* renamed from: a */
        Class<Data> mo23160a();

        /* renamed from: b */
        void mo23159b(Data data);

        /* renamed from: c */
        Data mo23158c(File file);
    }

    /* renamed from: com.bumptech.glide.load.i.f$e */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/f$e.class */
    public static class C4175e extends C4170a<InputStream> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.bumptech.glide.load.i.f$e$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/f$e$a.class */
        public class C4176a implements AbstractC4174d<InputStream> {
            C4176a() {
            }

            @Override // com.bumptech.glide.load.p212i.C4169f.AbstractC4174d
            /* renamed from: a */
            public Class<InputStream> mo23160a() {
                return InputStream.class;
            }

            /* renamed from: d */
            public void mo23159b(InputStream inputStream) {
                inputStream.close();
            }

            /* renamed from: e */
            public InputStream mo23158c(File file) {
                return new FileInputStream(file);
            }
        }

        public C4175e() {
            super(new C4176a());
        }
    }

    public C4169f(AbstractC4174d<Data> abstractC4174d) {
        this.f13026a = abstractC4174d;
    }

    /* renamed from: c */
    public AbstractC4191n.C4192a<Data> mo23081b(File file, int i, int i2, C4032e c4032e) {
        return new AbstractC4191n.C4192a<>(new C4367d(file), new C4173c(file, this.f13026a));
    }

    /* renamed from: d */
    public boolean mo23082a(File file) {
        return true;
    }
}
