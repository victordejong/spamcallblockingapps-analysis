package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.ae;
import java.lang.ref.WeakReference;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/a.class */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    final C0113a f3978a;

    /* renamed from: b  reason: collision with root package name */
    protected int f3979b;

    /* renamed from: com.google.android.gms.common.images.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/a$a.class */
    static final class C0113a {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f3980a;

        public C0113a(Uri uri) {
            this.f3980a = uri;
        }

        public final boolean equals(Object obj) {
            return !(obj instanceof C0113a) ? false : this == obj ? true : ae.a(((C0113a) obj).f3980a, this.f3980a);
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{this.f3980a});
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/a$b.class */
    public static final class b extends a {
        private WeakReference<ImageManager.a> c;

        @Override // com.google.android.gms.common.images.a
        protected final void a() {
            this.c.get();
        }

        public final boolean equals(Object obj) {
            boolean z;
            if (!(obj instanceof b)) {
                z = false;
            } else if (this == obj) {
                z = true;
            } else {
                b bVar = (b) obj;
                ImageManager.a aVar = this.c.get();
                ImageManager.a aVar2 = bVar.c.get();
                z = aVar2 != null && aVar != null && ae.a(aVar2, aVar) && ae.a(bVar.f3978a, this.f3978a);
            }
            return z;
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{this.f3978a});
        }
    }

    protected abstract void a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Context context) {
        if (this.f3979b != 0) {
            context.getResources().getDrawable(this.f3979b);
        }
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Context context, Bitmap bitmap) {
        if (bitmap == null) {
            throw new IllegalArgumentException("null reference");
        }
        new BitmapDrawable(context.getResources(), bitmap);
        a();
    }
}
