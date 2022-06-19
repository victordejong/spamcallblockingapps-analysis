package com.bumptech.glide.load.p212i;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.p212i.AbstractC4191n;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.i.s */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/s.class */
public class C4203s<Data> implements AbstractC4191n<Integer, Data> {

    /* renamed from: a */
    private final AbstractC4191n<Uri, Data> f13084a;

    /* renamed from: b */
    private final Resources f13085b;

    /* renamed from: com.bumptech.glide.load.i.s$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/s$a.class */
    public static final class C4204a implements AbstractC4193o<Integer, AssetFileDescriptor> {

        /* renamed from: a */
        private final Resources f13086a;

        public C4204a(Resources resources) {
            this.f13086a = resources;
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<Integer, AssetFileDescriptor> mo23078b(C4199r c4199r) {
            return new C4203s(this.f13086a, c4199r.m23121d(Uri.class, AssetFileDescriptor.class));
        }
    }

    /* renamed from: com.bumptech.glide.load.i.s$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/s$b.class */
    public static class C4205b implements AbstractC4193o<Integer, ParcelFileDescriptor> {

        /* renamed from: a */
        private final Resources f13087a;

        public C4205b(Resources resources) {
            this.f13087a = resources;
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<Integer, ParcelFileDescriptor> mo23078b(C4199r c4199r) {
            return new C4203s(this.f13087a, c4199r.m23121d(Uri.class, ParcelFileDescriptor.class));
        }
    }

    /* renamed from: com.bumptech.glide.load.i.s$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/s$c.class */
    public static class C4206c implements AbstractC4193o<Integer, InputStream> {

        /* renamed from: a */
        private final Resources f13088a;

        public C4206c(Resources resources) {
            this.f13088a = resources;
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<Integer, InputStream> mo23078b(C4199r c4199r) {
            return new C4203s(this.f13088a, c4199r.m23121d(Uri.class, InputStream.class));
        }
    }

    /* renamed from: com.bumptech.glide.load.i.s$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/i/s$d.class */
    public static class C4207d implements AbstractC4193o<Integer, Uri> {

        /* renamed from: a */
        private final Resources f13089a;

        public C4207d(Resources resources) {
            this.f13089a = resources;
        }

        @Override // com.bumptech.glide.load.p212i.AbstractC4193o
        /* renamed from: b */
        public AbstractC4191n<Integer, Uri> mo23078b(C4199r c4199r) {
            return new C4203s(this.f13089a, C4213v.m23106c());
        }
    }

    public C4203s(Resources resources, AbstractC4191n<Uri, Data> abstractC4191n) {
        this.f13085b = resources;
        this.f13084a = abstractC4191n;
    }

    /* renamed from: d */
    private Uri m23113d(Integer num) {
        try {
            return Uri.parse("android.resource://" + this.f13085b.getResourcePackageName(num.intValue()) + '/' + this.f13085b.getResourceTypeName(num.intValue()) + '/' + this.f13085b.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException e) {
            if (!Log.isLoggable("ResourceLoader", 5)) {
                return null;
            }
            Log.w("ResourceLoader", "Received invalid resource id: " + num, e);
            return null;
        }
    }

    /* renamed from: c */
    public AbstractC4191n.C4192a<Data> mo23081b(Integer num, int i, int i2, C4032e c4032e) {
        Uri m23113d = m23113d(num);
        return m23113d == null ? null : this.f13084a.mo23081b(m23113d, i, i2, c4032e);
    }

    /* renamed from: e */
    public boolean mo23082a(Integer num) {
        return true;
    }
}
