package it.gmariotti.cardslib.library.view.component;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.LruCache;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import it.gmariotti.cardslib.library.a;
import it.gmariotti.cardslib.library.a.j;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.URL;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/component/CardThumbnailView.class */
public class CardThumbnailView extends FrameLayout {

    /* renamed from: b  reason: collision with root package name */
    protected View f36479b;

    /* renamed from: c  reason: collision with root package name */
    protected j f36480c;

    /* renamed from: d  reason: collision with root package name */
    protected LruCache<String, Bitmap> f36481d;
    protected ImageView h;

    /* renamed from: a  reason: collision with root package name */
    protected int f36478a = a.e.base_thumbnail_layout;
    protected boolean e = false;
    protected boolean f = false;
    protected boolean g = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/component/CardThumbnailView$a.class */
    public static final class a extends BitmapDrawable {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<e> f36483a;

        public a(Resources resources, Bitmap bitmap, e eVar) {
            super(resources, bitmap);
            this.f36483a = new WeakReference<>(eVar);
        }

        public final e a() {
            return this.f36483a.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/component/CardThumbnailView$b.class */
    public static final class b extends BitmapDrawable {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<d> f36484a;

        public b(Resources resources, Bitmap bitmap, d dVar) {
            super(resources, bitmap);
            this.f36484a = new WeakReference<>(dVar);
        }

        public final d a() {
            return this.f36484a.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/component/CardThumbnailView$c.class */
    public static final class c extends BitmapDrawable {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<f> f36485a;

        public c(Resources resources, Bitmap bitmap, f fVar) {
            super(resources, bitmap);
            this.f36485a = new WeakReference<>(fVar);
        }

        public final f a() {
            return this.f36485a.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/component/CardThumbnailView$d.class */
    public final class d extends AsyncTask<j.a, Void, Bitmap> {

        /* renamed from: b  reason: collision with root package name */
        private final WeakReference<ImageView> f36487b;

        /* renamed from: c  reason: collision with root package name */
        private j.a f36488c = null;

        public d(ImageView imageView) {
            this.f36487b = new WeakReference<>(imageView);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Bitmap doInBackground(j.a[] aVarArr) {
            this.f36488c = aVarArr[0];
            this.f36487b.get();
            Bitmap b2 = this.f36488c.b();
            if (b2 == null) {
                return null;
            }
            CardThumbnailView.this.a(this.f36488c.a(), b2);
            return b2;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            if (isCancelled()) {
                bitmap2 = null;
            }
            WeakReference<ImageView> weakReference = this.f36487b;
            if (weakReference == null || bitmap2 == null) {
                CardThumbnailView.this.a(false);
                if (CardThumbnailView.this.f36480c != null && CardThumbnailView.this.f36480c.e() != 0) {
                    if (!CardThumbnailView.this.g) {
                        CardThumbnailView cardThumbnailView = CardThumbnailView.this;
                        cardThumbnailView.a(cardThumbnailView.f36480c.e(), CardThumbnailView.this.h);
                    }
                    CardThumbnailView.this.g = true;
                    return;
                }
                return;
            }
            ImageView imageView = weakReference.get();
            if (this == CardThumbnailView.c(imageView) && imageView != null) {
                imageView.setImageBitmap(bitmap2);
                CardThumbnailView.this.a();
                CardThumbnailView.this.g = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/component/CardThumbnailView$e.class */
    public final class e extends AsyncTask<Integer, Void, Bitmap> {

        /* renamed from: b  reason: collision with root package name */
        private final WeakReference<ImageView> f36490b;

        /* renamed from: c  reason: collision with root package name */
        private int f36491c = 0;

        public e(ImageView imageView) {
            this.f36490b = new WeakReference<>(imageView);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Bitmap doInBackground(Integer[] numArr) {
            Integer[] numArr2 = numArr;
            this.f36491c = numArr2[0].intValue();
            ImageView imageView = this.f36490b.get();
            Bitmap a2 = CardThumbnailView.a(CardThumbnailView.this.getResources(), this.f36491c, imageView.getWidth(), imageView.getHeight());
            if (a2 == null) {
                return null;
            }
            CardThumbnailView.this.a(String.valueOf(numArr2[0]), a2);
            return a2;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            if (isCancelled()) {
                bitmap2 = null;
            }
            WeakReference<ImageView> weakReference = this.f36490b;
            if (weakReference == null || bitmap2 == null) {
                CardThumbnailView.this.a(false);
                if (CardThumbnailView.this.f36480c != null && CardThumbnailView.this.f36480c.e() != 0) {
                    if (!CardThumbnailView.this.g) {
                        CardThumbnailView cardThumbnailView = CardThumbnailView.this;
                        cardThumbnailView.a(cardThumbnailView.f36480c.e(), CardThumbnailView.this.h);
                    }
                    CardThumbnailView.this.g = true;
                    return;
                }
                return;
            }
            ImageView imageView = weakReference.get();
            if (this == CardThumbnailView.a(imageView) && imageView != null) {
                imageView.setImageBitmap(bitmap2);
                CardThumbnailView.this.a();
                CardThumbnailView.this.g = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/component/CardThumbnailView$f.class */
    public final class f extends AsyncTask<String, Void, Bitmap> {

        /* renamed from: b  reason: collision with root package name */
        private final WeakReference<ImageView> f36493b;

        /* renamed from: c  reason: collision with root package name */
        private String f36494c = "";

        public f(ImageView imageView) {
            this.f36493b = new WeakReference<>(imageView);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Bitmap doInBackground(String[] strArr) {
            String[] strArr2 = strArr;
            this.f36494c = strArr2[0];
            ImageView imageView = this.f36493b.get();
            CardThumbnailView.this.getResources();
            Bitmap a2 = CardThumbnailView.a(this.f36494c, imageView.getWidth(), imageView.getHeight());
            if (a2 == null) {
                return null;
            }
            CardThumbnailView.this.a(String.valueOf(strArr2[0]), a2);
            return a2;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            if (isCancelled()) {
                bitmap2 = null;
            }
            WeakReference<ImageView> weakReference = this.f36493b;
            if (weakReference == null || bitmap2 == null) {
                CardThumbnailView.this.a(false);
                if (CardThumbnailView.this.f36480c != null && CardThumbnailView.this.f36480c.e() != 0) {
                    if (!CardThumbnailView.this.g) {
                        CardThumbnailView cardThumbnailView = CardThumbnailView.this;
                        cardThumbnailView.a(cardThumbnailView.f36480c.e(), CardThumbnailView.this.h);
                    }
                    CardThumbnailView.this.g = true;
                    return;
                }
                return;
            }
            ImageView imageView = weakReference.get();
            if (this == CardThumbnailView.b(imageView) && imageView != null) {
                imageView.setImageBitmap(bitmap2);
                CardThumbnailView.this.a();
                CardThumbnailView.this.g = false;
            }
        }
    }

    public CardThumbnailView(Context context) {
        super(context);
        a((AttributeSet) null, 0);
    }

    public CardThumbnailView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet, 0);
    }

    public CardThumbnailView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(attributeSet, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002d, code lost:
        if (r0 > r4) goto L_0x0030;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int a(android.graphics.BitmapFactory.Options r3, int r4, int r5) {
        /*
            r0 = r3
            int r0 = r0.outHeight
            r6 = r0
            r0 = r3
            int r0 = r0.outWidth
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0050
            r0 = r5
            if (r0 != 0) goto L_0x0021
            r0 = r8
            r9 = r0
            goto L_0x0050
        L_0x0021:
            r0 = r6
            r1 = r5
            if (r0 > r1) goto L_0x0030
            r0 = r8
            r9 = r0
            r0 = r7
            r1 = r4
            if (r0 <= r1) goto L_0x0050
        L_0x0030:
            r0 = r6
            float r0 = (float) r0
            r1 = r5
            float r1 = (float) r1
            float r0 = r0 / r1
            int r0 = java.lang.Math.round(r0)
            r9 = r0
            r0 = r7
            float r0 = (float) r0
            r1 = r4
            float r1 = (float) r1
            float r0 = r0 / r1
            int r0 = java.lang.Math.round(r0)
            r4 = r0
            r0 = r9
            r1 = r4
            if (r0 >= r1) goto L_0x004d
            goto L_0x0050
        L_0x004d:
            r0 = r4
            r9 = r0
        L_0x0050:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: it.gmariotti.cardslib.library.view.component.CardThumbnailView.a(android.graphics.BitmapFactory$Options, int, int):int");
    }

    public static Bitmap a(Resources resources, int i, int i2, int i3) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources, i, options);
        options.inSampleSize = a(options, i2, i3);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeResource(resources, i, options);
    }

    private Bitmap a(String str) {
        if (str == null) {
            return null;
        }
        return this.f36481d.get(str);
    }

    public static Bitmap a(String str, int i, int i2) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(new URL(str).openStream());
            options.inSampleSize = a(options, i, i2);
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeStream(new URL(str).openStream());
        } catch (IOException e2) {
            Log.w("CardThumbnailView", "Error while retrieving image", e2);
            return null;
        }
    }

    protected static e a(ImageView imageView) {
        if (imageView == null) {
            return null;
        }
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof a) {
            return ((a) drawable).a();
        }
        return null;
    }

    private void a(AttributeSet attributeSet, int i) {
        b(attributeSet, i);
        if (!isInEditMode()) {
            b();
        }
    }

    protected static f b(ImageView imageView) {
        if (imageView == null) {
            return null;
        }
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof c) {
            return ((c) drawable).a();
        }
        return null;
    }

    private void b() {
        this.f36479b = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(this.f36478a, (ViewGroup) this, true);
        this.h = (ImageView) findViewById(a.c.card_thumbnail_image);
        int maxMemory = ((int) (Runtime.getRuntime().maxMemory() / 1024)) / 8;
        LruCache<String, Bitmap> a2 = it.gmariotti.cardslib.library.b.a.a();
        this.f36481d = a2;
        if (a2 == null) {
            LruCache<String, Bitmap> lruCache = new LruCache<String, Bitmap>(maxMemory) { // from class: it.gmariotti.cardslib.library.view.component.CardThumbnailView.1
                @Override // android.util.LruCache
                protected final /* synthetic */ int sizeOf(String str, Bitmap bitmap) {
                    Bitmap bitmap2 = bitmap;
                    return Build.VERSION.SDK_INT > 12 ? bitmap2.getByteCount() / 1024 : (bitmap2.getRowBytes() * bitmap2.getHeight()) / 1024;
                }
            };
            this.f36481d = lruCache;
            it.gmariotti.cardslib.library.b.a.a(lruCache);
        }
    }

    private void b(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, a.g.card_options, i, i);
        try {
            this.f36478a = obtainStyledAttributes.getResourceId(a.g.card_options_card_thumbnail_layout_resourceID, this.f36478a);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private static boolean b(int i, ImageView imageView) {
        e a2 = a(imageView);
        if (a2 == null) {
            return true;
        }
        if (a2.f36491c == i) {
            return false;
        }
        a2.cancel(true);
        return true;
    }

    protected static d c(ImageView imageView) {
        if (imageView == null) {
            return null;
        }
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof b) {
            return ((b) drawable).a();
        }
        return null;
    }

    protected final void a() {
        a(true);
    }

    public final void a(int i, ImageView imageView) {
        Bitmap a2 = a(String.valueOf(i));
        if (a2 != null) {
            imageView.setImageBitmap(a2);
            a(true);
        } else if (b(i, imageView)) {
            e eVar = new e(imageView);
            imageView.setImageDrawable(new a(getResources(), null, eVar));
            eVar.execute(Integer.valueOf(i));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(it.gmariotti.cardslib.library.a.j r8) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: it.gmariotti.cardslib.library.view.component.CardThumbnailView.a(it.gmariotti.cardslib.library.a.j):void");
    }

    protected final void a(String str, Bitmap bitmap) {
        if (!this.g && a(str) == null && str != null && bitmap != null) {
            this.f36481d.put(str, bitmap);
        }
    }

    protected final void a(boolean z) {
        if (this.f36480c.f()) {
            Intent intent = new Intent();
            intent.setAction("it.gmariotti.cardslib.library.intent.action.IMAGE_DOWNLOADED");
            intent.putExtra("ExtraResult", z);
            if (this.g) {
                intent.putExtra("ExtraErrorLoading", true);
            } else {
                intent.putExtra("ExtraErrorLoading", false);
            }
            j jVar = this.f36480c;
            if (!(jVar == null || jVar.getParentCard() == null)) {
                intent.putExtra("ExtraCardId", this.f36480c.getParentCard().getId());
            }
            if (getContext() != null) {
                getContext().sendBroadcast(intent);
            }
        }
    }

    public void setForceReplaceInnerLayout(boolean z) {
        this.f = z;
    }

    public void setRecycle(boolean z) {
        this.e = z;
    }
}
