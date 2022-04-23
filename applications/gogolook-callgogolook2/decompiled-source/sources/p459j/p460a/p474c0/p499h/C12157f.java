package p459j.p460a.p474c0.p499h;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.core.content.ContextCompat;
import gogolook.callgogolook2.MyApplication;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001:\u0001\fB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tJ,\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\n\u001a\u00020\u00062\b\b\u0001\u0010\u000b\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t¨\u0006\r"}, m815d2 = {"Lgogolook/callgogolook2/messaging/util/BitmapUtils;", "", "()V", "getBitmapFromDrawableRes", "", "drawableRes", "", "sizeDimenRes", "callback", "Lgogolook/callgogolook2/messaging/util/BitmapUtils$OnBitmapGetCallback;", "widthDimenRes", "heightDimenRes", "OnBitmapGetCallback", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.h.f */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/f.class */
public final class C12157f {

    /* renamed from: a */
    public static final C12157f f27304a = new C12157f();

    /* renamed from: j.a.c0.h.f$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/f$a.class */
    public interface AbstractC12158a {
        /* renamed from: a */
        void mo5225a(Bitmap bitmap);

        void onError(Throwable th);
    }

    /* renamed from: j.a.c0.h.f$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/f$b.class */
    public static final class C12159b<T> implements Single.OnSubscribe<Bitmap> {

        /* renamed from: a */
        public final /* synthetic */ int f27305a;

        /* renamed from: b */
        public final /* synthetic */ int f27306b;

        /* renamed from: c */
        public final /* synthetic */ int f27307c;

        public C12159b(int i, int i2, int i3) {
            this.f27305a = i;
            this.f27306b = i2;
            this.f27307c = i3;
        }

        /* renamed from: a */
        public final void call(SingleSubscriber<? super Bitmap> singleSubscriber) {
            Context o = MyApplication.m29013o();
            C15149k.m383a((Object) o, "context");
            int dimensionPixelSize = o.getResources().getDimensionPixelSize(this.f27305a);
            int dimensionPixelSize2 = o.getResources().getDimensionPixelSize(this.f27306b);
            try {
                Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize2, Bitmap.Config.ARGB_8888);
                Drawable drawable = ContextCompat.getDrawable(o, this.f27307c);
                if (drawable != null) {
                    Canvas canvas = new Canvas(createBitmap);
                    drawable.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize2);
                    drawable.draw(canvas);
                }
                singleSubscriber.onSuccess(createBitmap);
            } catch (OutOfMemoryError e) {
                singleSubscriber.onError(e);
            }
        }
    }

    /* renamed from: j.a.c0.h.f$c */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/f$c.class */
    public static final class C12160c<T> implements Action1<Bitmap> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC12158a f27308a;

        public C12160c(AbstractC12158a aVar) {
            this.f27308a = aVar;
        }

        /* renamed from: a */
        public final void call(Bitmap bitmap) {
            this.f27308a.mo5225a(bitmap);
        }
    }

    /* renamed from: j.a.c0.h.f$d */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/f$d.class */
    public static final class C12161d<T> implements Action1<Throwable> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC12158a f27309a;

        public C12161d(AbstractC12158a aVar) {
            this.f27309a = aVar;
        }

        /* renamed from: a */
        public final void call(Throwable th) {
            AbstractC12158a aVar = this.f27309a;
            C15149k.m383a((Object) th, "error");
            aVar.onError(th);
        }
    }

    /* renamed from: a */
    public final void m6958a(@DrawableRes int i, @DimenRes int i2, @DimenRes int i3, AbstractC12158a aVar) {
        C15149k.m377b(aVar, "callback");
        Single.create(new C12159b(i2, i3, i)).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C12160c(aVar), new C12161d(aVar));
    }

    /* renamed from: a */
    public final void m6957a(@DrawableRes int i, @DimenRes int i2, AbstractC12158a aVar) {
        C15149k.m377b(aVar, "callback");
        m6958a(i, i2, i2, aVar);
    }
}
