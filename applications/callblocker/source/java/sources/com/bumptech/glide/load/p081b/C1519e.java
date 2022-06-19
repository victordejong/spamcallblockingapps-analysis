package com.bumptech.glide.load.p081b;

import android.util.Base64;
import com.bumptech.glide.EnumC1428g;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.EnumC1464a;
import com.bumptech.glide.load.p079a.AbstractC1475d;
import com.bumptech.glide.load.p081b.AbstractC1546n;
import com.bumptech.glide.p076g.C1431c;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.b.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/e.class */
public final class C1519e<Model, Data> implements AbstractC1546n<Model, Data> {

    /* renamed from: a */
    private final AbstractC1520a<Data> f4864a;

    /* renamed from: com.bumptech.glide.load.b.e$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/e$a.class */
    public interface AbstractC1520a<Data> {
        /* renamed from: a */
        Class<Data> mo16877a();

        /* renamed from: a */
        Data mo16874a(String str);

        /* renamed from: a */
        void mo16875a(Data data);
    }

    /* renamed from: com.bumptech.glide.load.b.e$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/e$b.class */
    private static final class C1521b<Data> implements AbstractC1475d<Data> {

        /* renamed from: a */
        private final String f4865a;

        /* renamed from: b */
        private final AbstractC1520a<Data> f4866b;

        /* renamed from: c */
        private Data f4867c;

        C1521b(String str, AbstractC1520a<Data> abstractC1520a) {
            this.f4865a = str;
            this.f4866b = abstractC1520a;
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: a */
        public Class<Data> mo16813a() {
            return this.f4866b.mo16877a();
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: a */
        public void mo16812a(EnumC1428g enumC1428g, AbstractC1475d.AbstractC1476a<? super Data> abstractC1476a) {
            try {
                this.f4867c = this.f4866b.mo16874a(this.f4865a);
                abstractC1476a.mo16337a((AbstractC1475d.AbstractC1476a<? super Data>) ((Data) this.f4867c));
            } catch (IllegalArgumentException e) {
                abstractC1476a.mo16338a((Exception) e);
            }
        }

        @Override // com.bumptech.glide.load.p079a.AbstractC1475d
        /* renamed from: b */
        public void mo16811b() {
            try {
                this.f4866b.mo16875a((AbstractC1520a<Data>) this.f4867c);
            } catch (IOException e) {
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

    /* renamed from: com.bumptech.glide.load.b.e$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/e$c.class */
    public static final class C1522c<Model> implements AbstractC1548o<Model, InputStream> {

        /* renamed from: a */
        private final AbstractC1520a<InputStream> f4868a = new AbstractC1520a<InputStream>() { // from class: com.bumptech.glide.load.b.e.c.1
            @Override // com.bumptech.glide.load.p081b.C1519e.AbstractC1520a
            /* renamed from: a */
            public Class<InputStream> mo16877a() {
                return InputStream.class;
            }

            /* renamed from: a */
            public void mo16875a(InputStream inputStream) {
                inputStream.close();
            }

            /* renamed from: b */
            public InputStream mo16874a(String str) {
                if (!str.startsWith("data:image")) {
                    throw new IllegalArgumentException("Not a valid image data URL.");
                }
                int indexOf = str.indexOf(44);
                if (indexOf == -1) {
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                if (str.substring(0, indexOf).endsWith(";base64")) {
                    return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
                }
                throw new IllegalArgumentException("Not a base64 image data URL.");
            }
        };

        @Override // com.bumptech.glide.load.p081b.AbstractC1548o
        /* renamed from: a */
        public AbstractC1546n<Model, InputStream> mo16801a(C1554r c1554r) {
            return new C1519e(this.f4868a);
        }
    }

    public C1519e(AbstractC1520a<Data> abstractC1520a) {
        this.f4864a = abstractC1520a;
    }

    @Override // com.bumptech.glide.load.p081b.AbstractC1546n
    /* renamed from: a */
    public AbstractC1546n.C1547a<Data> mo16802a(Model model, int i, int i2, C1781h c1781h) {
        return new AbstractC1546n.C1547a<>(new C1431c(model), new C1521b(model.toString(), this.f4864a));
    }

    @Override // com.bumptech.glide.load.p081b.AbstractC1546n
    /* renamed from: a */
    public boolean mo16803a(Model model) {
        return model.toString().startsWith("data:image");
    }
}
