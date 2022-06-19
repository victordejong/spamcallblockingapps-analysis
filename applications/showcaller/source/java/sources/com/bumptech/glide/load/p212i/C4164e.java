package com.bumptech.glide.load.p212i;

import android.util.Base64;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.AbstractC4007d;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import com.bumptech.glide.p222o.C4367d;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.i.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/e.class */
public final class C4164e<Model, Data> implements AbstractC4191n<Model, Data> {

    /* renamed from: a */
    private final AbstractC4165a<Data> f13020a;

    /* renamed from: com.bumptech.glide.load.i.e$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/e$a.class */
    public interface AbstractC4165a<Data> {
        /* renamed from: a */
        Class<Data> mo23169a();

        /* renamed from: b */
        void mo23168b(Data data);

        /* renamed from: c */
        Data mo23167c(String str);
    }

    /* renamed from: com.bumptech.glide.load.i.e$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/e$b.class */
    private static final class C4166b<Data> implements AbstractC4007d<Data> {

        /* renamed from: d */
        private final String f13021d;

        /* renamed from: e */
        private final AbstractC4165a<Data> f13022e;

        /* renamed from: f */
        private Data f13023f;

        C4166b(String str, AbstractC4165a<Data> abstractC4165a) {
            this.f13021d = str;
            this.f13022e = abstractC4165a;
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: a */
        public Class<Data> mo23090a() {
            return this.f13022e.mo23169a();
        }

        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: b */
        public void mo23089b() {
            try {
                this.f13022e.mo23168b(this.f13023f);
            } catch (IOException e) {
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

        /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, Data] */
        @Override // com.bumptech.glide.load.data.AbstractC4007d
        /* renamed from: e */
        public void mo23086e(Priority priority, AbstractC4007d.AbstractC4008a<? super Data> abstractC4008a) {
            try {
                Data mo23167c = this.f13022e.mo23167c(this.f13021d);
                this.f13023f = mo23167c;
                abstractC4008a.mo23126f(mo23167c);
            } catch (IllegalArgumentException e) {
                abstractC4008a.mo23127c(e);
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.i.e$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/e$c.class */
    public static final class C4167c<Model> implements AbstractC4193o<Model, InputStream> {

        /* renamed from: a */
        private final AbstractC4165a<InputStream> f13024a = new C4168a();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.bumptech.glide.load.i.e$c$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/e$c$a.class */
        public class C4168a implements AbstractC4165a<InputStream> {
            C4168a() {
                C4167c.this = r4;
            }

            @Override // com.bumptech.glide.load.p212i.C4164e.AbstractC4165a
            /* renamed from: a */
            public Class<InputStream> mo23169a() {
                return InputStream.class;
            }

            /* renamed from: d */
            public void mo23168b(InputStream inputStream) {
                inputStream.close();
            }

            /* renamed from: e */
            public InputStream mo23167c(String str) {
                if (str.startsWith("data:image")) {
                    int indexOf = str.indexOf(44);
                    if (indexOf == -1) {
                        throw new IllegalArgumentException("Missing comma in data URL.");
                    }
                    if (!str.substring(0, indexOf).endsWith(";base64")) {
                        throw new IllegalArgumentException("Not a base64 image data URL.");
                    }
                    return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
                }
                throw new IllegalArgumentException("Not a valid image data URL.");
            }
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<Model, InputStream> mo23078b(C4199r c4199r) {
            return new C4164e(this.f13024a);
        }
    }

    public C4164e(AbstractC4165a<Data> abstractC4165a) {
        this.f13020a = abstractC4165a;
    }

    @Override // com.bumptech.glide.load.p212i.AbstractC4191n
    /* renamed from: a */
    public boolean mo23082a(Model model) {
        return model.toString().startsWith("data:image");
    }

    @Override // com.bumptech.glide.load.p212i.AbstractC4191n
    /* renamed from: b */
    public AbstractC4191n.C4192a<Data> mo23081b(Model model, int i, int i2, C4032e c4032e) {
        return new AbstractC4191n.C4192a<>(new C4367d(model), new C4166b(model.toString(), this.f13020a));
    }
}
