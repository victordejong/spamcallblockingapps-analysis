package p459j.p460a.p474c0.p475c.p479z;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import com.flurry.sdk.C3496r;
import gogolook.callgogolook2.R$drawable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12155e;
import p459j.p460a.p474c0.p499h.C12216t0;
/* renamed from: j.a.c0.c.z.b */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/b.class */
public class C11640b extends C11639a0<C11643c> {

    /* renamed from: d */
    public static Bitmap f26136d;

    /* renamed from: e */
    public static Bitmap f26137e;

    public C11640b(Context context, C11643c cVar) {
        super(context, cVar);
    }

    /* renamed from: a */
    public final Bitmap m8730a(int i, int i2) {
        Bitmap bitmap;
        new Canvas(m8686e().m8630a(i, i2, m8729k()));
        if (f26136d == null) {
            f26136d = ((BitmapDrawable) this.f26181a.getResources().getDrawable(R$drawable.meta_contact)).getBitmap();
        }
        if (f26137e == null) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) this.f26181a.getResources().getDrawable(R$drawable.ic_person_light_large);
            f26137e = f26136d;
        }
        if (((C11643c) this.f26182b).f26144l) {
            bitmap = ((BitmapDrawable) this.f26181a.getResources().getDrawable(R$drawable.ic_person_wear)).getBitmap();
        } else {
            bitmap = i > f26136d.getWidth() || i2 > f26136d.getHeight() ? f26137e : f26136d;
        }
        return bitmap;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.C11639a0, p459j.p460a.p474c0.p475c.p479z.AbstractC11666m
    /* renamed from: b */
    public AbstractC11669o mo8603b(List<AbstractC11672r<AbstractC11669o>> list) throws IOException {
        C12151d.m7002b();
        boolean z = C12216t0.m6756g(((C11643c) this.f26182b).f26138i) || C3496r.f6031a.equals(C12155e.m6978a(((C11643c) this.f26182b).f26138i));
        Bitmap bitmap = null;
        bitmap = null;
        int i = 1;
        if (z) {
            try {
                AbstractC11669o b = super.mo8603b(list);
                Bitmap n = b.mo8676n();
                bitmap = n;
                i = b.f26200e;
                bitmap = n;
            } catch (Exception e) {
                C12153d0.m6982d("MessagingAppImage", "AvatarRequest: failed to load local avatar resource, switching to fallback rendering", e);
                i = 1;
            }
        }
        D d = this.f26182b;
        int i2 = ((C11643c) d).f26184a;
        int i3 = ((C11643c) d).f26185b;
        Bitmap bitmap2 = bitmap;
        if (bitmap == null) {
            Uri uri = ((C11643c) d).f26138i;
            if (z) {
                Uri b2 = C12155e.m6968b(((C11643c) d).f26138i);
                uri = b2;
                if (b2 == null) {
                    uri = C12155e.f27299a;
                }
            }
            C12155e.m6978a(uri);
            bitmap2 = m8730a(i2, i3);
        }
        return new C11659h(getKey(), bitmap2, i);
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11666m
    /* renamed from: f */
    public int mo8602f() {
        return 2;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.C11639a0, p459j.p460a.p474c0.p475c.p479z.AbstractC11666m
    /* renamed from: g */
    public InputStream mo8641g() throws FileNotFoundException {
        if (C12216t0.m6756g(((C11643c) this.f26182b).f26138i)) {
            return super.mo8641g();
        }
        Uri d = C12155e.m6965d(((C11643c) this.f26182b).f26138i);
        C12151d.m6999b(C12216t0.m6756g(d));
        return this.f26181a.getContentResolver().openInputStream(d);
    }

    /* renamed from: k */
    public final int m8729k() {
        return this.f26181a.getResources().getColor(2131100157);
    }
}
