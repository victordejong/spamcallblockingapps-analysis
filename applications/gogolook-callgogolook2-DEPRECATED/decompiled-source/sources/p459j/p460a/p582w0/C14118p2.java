package p459j.p460a.p582w0;

import android.content.ContentUris;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.view.RecycleSafeImageView;
import java.util.List;
import kotlin.Metadata;
import p081h.p119d.p120a.C5768f;
import p081h.p119d.p120a.p145w.p147j.C6074d;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001:\u0002\u0018\u0019B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J<\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0014H\u0007¨\u0006\u001a"}, m815d2 = {"Lgogolook/callgogolook2/util/MetaphorViewUtils;", "", "()V", "bindSpamIconView", "", "cardSpamIconView", "Landroid/widget/ImageView;", "hasWhoscallCard", "", "hasSpam", "isWhoscallNumber", "hasProfileUrl", "metaphorSource", "Lgogolook/callgogolook2/phone/call/dialog/CallUtils$MetaphorSource;", "getCircleBitmap", "Landroid/graphics/Bitmap;", "bitmap", "getMetaphorUri", "", "viewData", "Lgogolook/callgogolook2/util/MetaphorViewUtils$MetaphorViewData;", "loadWhoscallCardMetaphor", "viewHolder", "Lgogolook/callgogolook2/util/MetaphorViewUtils$MetaphorViewHolder;", "MetaphorViewData", "MetaphorViewHolder", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.p2 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/p2.class */
public final class C14118p2 {

    /* renamed from: a */
    public static final C14118p2 f31614a = new C14118p2();

    /* renamed from: j.a.w0.p2$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/p2$a.class */
    public static final class C14119a {

        /* renamed from: a */
        public final RowInfo f31615a;

        /* renamed from: b */
        public final String f31616b;

        /* renamed from: c */
        public final int f31617c;

        /* renamed from: d */
        public final List<RowInfo.MetaphorType> f31618d;

        /* renamed from: e */
        public final CallUtils.EnumC4993l f31619e;

        public C14119a(RowInfo rowInfo, String str, int i, List<RowInfo.MetaphorType> list, CallUtils.EnumC4993l lVar) {
            C15149k.m377b(list, "metaphorTypeList");
            this.f31615a = rowInfo;
            this.f31616b = str;
            this.f31617c = i;
            this.f31618d = list;
            this.f31619e = lVar;
        }

        /* renamed from: a */
        public final String m2461a() {
            return this.f31616b;
        }

        /* renamed from: b */
        public final int m2460b() {
            return this.f31617c;
        }

        /* renamed from: c */
        public final CallUtils.EnumC4993l m2459c() {
            return this.f31619e;
        }

        /* renamed from: d */
        public final List<RowInfo.MetaphorType> m2458d() {
            return this.f31618d;
        }

        /* renamed from: e */
        public final RowInfo m2457e() {
            return this.f31615a;
        }
    }

    /* renamed from: j.a.w0.p2$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/p2$b.class */
    public static final class C14120b {

        /* renamed from: a */
        public final RecycleSafeImageView f31620a;

        /* renamed from: b */
        public final ImageView f31621b;

        /* renamed from: c */
        public final View f31622c;

        public C14120b(RecycleSafeImageView recycleSafeImageView, ImageView imageView, View view) {
            C15149k.m377b(recycleSafeImageView, "metaphorView");
            this.f31620a = recycleSafeImageView;
            this.f31621b = imageView;
            this.f31622c = view;
        }

        /* renamed from: a */
        public final View m2456a() {
            return this.f31622c;
        }

        /* renamed from: b */
        public final ImageView m2455b() {
            return this.f31621b;
        }

        /* renamed from: c */
        public final RecycleSafeImageView m2454c() {
            return this.f31620a;
        }
    }

    /* renamed from: j.a.w0.p2$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/p2$c.class */
    public static final class C14121c extends C6074d {

        /* renamed from: g */
        public final /* synthetic */ C14120b f31623g;

        /* renamed from: h */
        public final /* synthetic */ C14119a f31624h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14121c(C14120b bVar, C14119a aVar, RecycleSafeImageView recycleSafeImageView, ImageView imageView) {
            super(imageView);
            this.f31623g = bVar;
            this.f31624h = aVar;
        }

        @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6075e, p081h.p119d.p120a.p145w.p147j.AbstractC6071a, p081h.p119d.p120a.p145w.p147j.AbstractC6082k
        /* renamed from: a */
        public void mo2453a(Exception exc, Drawable drawable) {
            CallUtils.m26584a(RowInfo.MetaphorType.WHOSCALLCARD_V2_V3, this.f31623g, this.f31624h);
        }
    }

    /* renamed from: a */
    public static final Bitmap m2465a(Bitmap bitmap) {
        C15149k.m377b(bitmap, "bitmap");
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectF = new RectF(rect);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        canvas.drawOval(rectF, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        C15149k.m383a((Object) createBitmap, "output");
        return createBitmap;
    }

    /* renamed from: a */
    public static final String m2463a(C14119a aVar) {
        String str;
        C15149k.m377b(aVar, "viewData");
        RowInfo e = aVar.m2457e();
        String a = aVar.m2461a();
        List<RowInfo.MetaphorType> d = aVar.m2458d();
        boolean z = a != null && TextUtils.isDigitsOnly(a);
        if (e != null) {
            RowInfo.MetaphorType metaphorType = d.size() > 0 ? d.get(0) : null;
            str = null;
            if (metaphorType != null) {
                if (metaphorType == RowInfo.MetaphorType.WHOSCALLCARD_V2_V3 || metaphorType == RowInfo.MetaphorType.INFO) {
                    NumberInfo g = e.m28226g();
                    str = null;
                    if (g != null) {
                        str = g.m28388H();
                    }
                } else {
                    str = null;
                    if (metaphorType == RowInfo.MetaphorType.CONTACT) {
                        str = null;
                        if (!C14217x3.m2160b(a)) {
                            str = null;
                            if (TextUtils.isDigitsOnly(a)) {
                                Uri uri = ContactsContract.Contacts.CONTENT_URI;
                                if (a != null) {
                                    Long valueOf = Long.valueOf(a);
                                    C15149k.m383a((Object) valueOf, "java.lang.Long.valueOf(contactId!!)");
                                    str = ContentUris.withAppendedId(uri, valueOf.longValue()).toString();
                                } else {
                                    C15149k.m378b();
                                    throw null;
                                }
                            }
                        }
                    }
                }
            }
        } else {
            str = null;
            if (z) {
                str = null;
                if (!C14217x3.m2160b(a)) {
                    str = null;
                    if (TextUtils.isDigitsOnly(a)) {
                        Uri uri2 = ContactsContract.Contacts.CONTENT_URI;
                        if (a != null) {
                            Long valueOf2 = Long.valueOf(a);
                            C15149k.m383a((Object) valueOf2, "java.lang.Long.valueOf(contactId!!)");
                            str = ContentUris.withAppendedId(uri2, valueOf2.longValue()).toString();
                        } else {
                            C15149k.m378b();
                            throw null;
                        }
                    }
                }
            }
        }
        return str;
    }

    /* renamed from: a */
    public static final void m2462a(C14120b bVar, C14119a aVar) {
        NumberInfo g;
        C15149k.m377b(bVar, "viewHolder");
        C15149k.m377b(aVar, "viewData");
        RowInfo e = aVar.m2457e();
        if (e != null && (g = e.m28226g()) != null) {
            boolean m0 = g.m28308m0();
            boolean f0 = g.m28329f0();
            boolean p0 = g.m28302p0();
            String H = g.m28388H();
            RecycleSafeImageView c = bVar.m2454c();
            boolean z = !(H == null || H.length() == 0);
            f31614a.m2464a(bVar.m2455b(), m0, f0, p0, z, aVar.m2459c());
            if (z) {
                C5768f<Uri> a = bVar.m2454c().m25906a(Uri.parse(H));
                a.mo24496b(aVar.m2460b());
                a.m24512b((C5768f<Uri>) new C14121c(bVar, aVar, c, c));
                return;
            }
            CallUtils.m26584a(RowInfo.MetaphorType.WHOSCALLCARD_V2_V3, bVar, aVar);
        }
    }

    /* renamed from: a */
    public final void m2464a(ImageView imageView, boolean z, boolean z2, boolean z3, boolean z4, CallUtils.EnumC4993l lVar) {
        int i;
        if (imageView != null) {
            if (z2) {
                imageView.setImageResource(R$drawable.ic_warning);
            } else {
                i = 8;
                if (z) {
                    if (z3) {
                        imageView.setImageResource(R$drawable.ic_green_check);
                    } else if (lVar == null) {
                        i = 8;
                    } else {
                        int i2 = C14129q2.f31643a[lVar.ordinal()];
                        i = 8;
                        if (i2 != 1) {
                            i = 8;
                            if (i2 != 2) {
                                i = 8;
                                if (i2 != 3) {
                                    i = 8;
                                    if (i2 != 4) {
                                        i = 8;
                                        if (z4) {
                                            imageView.setImageResource(R$drawable.ic_badge_showcard);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                imageView.setVisibility(i);
            }
            i = 0;
            imageView.setVisibility(i);
        }
    }
}
