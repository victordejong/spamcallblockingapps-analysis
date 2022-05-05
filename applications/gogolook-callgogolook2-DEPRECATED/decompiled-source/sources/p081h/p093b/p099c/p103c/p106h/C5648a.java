package p081h.p093b.p099c.p103c.p106h;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import androidx.loader.content.AsyncTaskLoader;
import p081h.p093b.p099c.p103c.C5629e;
import p081h.p093b.p099c.p103c.p106h.AbstractC5649b;
import p081h.p093b.p099c.p103c.p108j.C5654b;
/* renamed from: h.b.c.c.h.a */
/* loaded from: classes-dex2jar.jar:h/b/c/c/h/a.class */
public class C5648a extends AsyncTaskLoader<AbstractC5649b.C5650a> implements AbstractC5649b {

    /* renamed from: a */
    public String f14147a;

    /* renamed from: b */
    public Bitmap f14148b;

    public C5648a(Context context, String str) {
        super(context);
        this.f14147a = str;
    }

    /* renamed from: a */
    public void m24883a(Bitmap bitmap) {
        if (bitmap != null && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
    }

    /* renamed from: a */
    public void deliverResult(AbstractC5649b.C5650a aVar) {
        Bitmap bitmap = aVar != null ? aVar.f14150b : null;
        if (!isReset()) {
            Bitmap bitmap2 = this.f14148b;
            this.f14148b = bitmap;
            if (isStarted()) {
                super.deliverResult(aVar);
            }
            if (bitmap2 != null && bitmap2 != bitmap && !bitmap2.isRecycled()) {
                m24883a(bitmap2);
            }
        } else if (bitmap != null) {
            m24883a(bitmap);
        }
    }

    @Override // p081h.p093b.p099c.p103c.p106h.AbstractC5649b
    /* renamed from: a */
    public void mo24880a(String str) {
        this.f14147a = str;
    }

    /* renamed from: b */
    public void onCanceled(AbstractC5649b.C5650a aVar) {
        super.onCanceled(aVar);
        if (aVar != null) {
            m24883a(aVar.f14150b);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.loader.content.AsyncTaskLoader
    public AbstractC5649b.C5650a loadInBackground() {
        AbstractC5649b.C5650a aVar = new AbstractC5649b.C5650a();
        Context context = getContext();
        AbstractC5649b.C5650a aVar2 = aVar;
        if (context != null) {
            aVar2 = aVar;
            if (this.f14147a != null) {
                try {
                    AbstractC5649b.C5650a a = C5654b.m24873a(context.getContentResolver(), Uri.parse(this.f14147a), C5629e.f14066N);
                    aVar2 = a;
                    if (a.f14150b != null) {
                        aVar = a;
                        a.f14150b.setDensity(160);
                        aVar2 = a;
                    }
                } catch (UnsupportedOperationException e) {
                    aVar.f14151c = 1;
                    aVar2 = aVar;
                }
            }
        }
        return aVar2;
    }

    @Override // androidx.loader.content.Loader
    public void onReset() {
        super.onReset();
        onStopLoading();
        Bitmap bitmap = this.f14148b;
        if (bitmap != null) {
            m24883a(bitmap);
            this.f14148b = null;
        }
    }

    @Override // androidx.loader.content.Loader
    public void onStartLoading() {
        if (this.f14148b != null) {
            AbstractC5649b.C5650a aVar = new AbstractC5649b.C5650a();
            aVar.f14151c = 0;
            aVar.f14150b = this.f14148b;
            deliverResult(aVar);
        }
        if (takeContentChanged() || this.f14148b == null) {
            forceLoad();
        }
    }

    @Override // androidx.loader.content.Loader
    public void onStopLoading() {
        cancelLoad();
    }
}
