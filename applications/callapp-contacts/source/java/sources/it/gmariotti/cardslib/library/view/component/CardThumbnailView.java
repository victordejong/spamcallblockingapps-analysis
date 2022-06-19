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
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.p510a.C18097j;
import it.gmariotti.cardslib.library.p512b.C18101a;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.URL;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/component/CardThumbnailView.class */
public class CardThumbnailView extends FrameLayout {

    /* renamed from: b */
    protected View f63196b;

    /* renamed from: c */
    protected C18097j f63197c;

    /* renamed from: d */
    protected LruCache<String, Bitmap> f63198d;

    /* renamed from: h */
    protected ImageView f63202h;

    /* renamed from: a */
    protected int f63195a = C18061a.C18066e.base_thumbnail_layout;

    /* renamed from: e */
    protected boolean f63199e = false;

    /* renamed from: f */
    protected boolean f63200f = false;

    /* renamed from: g */
    protected boolean f63201g = false;

    /* renamed from: it.gmariotti.cardslib.library.view.component.CardThumbnailView$a */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/component/CardThumbnailView$a.class */
    public static final class C18166a extends BitmapDrawable {

        /* renamed from: a */
        private final WeakReference<AsyncTaskC18170e> f63204a;

        public C18166a(Resources resources, Bitmap bitmap, AsyncTaskC18170e asyncTaskC18170e) {
            super(resources, bitmap);
            this.f63204a = new WeakReference<>(asyncTaskC18170e);
        }

        /* renamed from: a */
        public final AsyncTaskC18170e m4348a() {
            return this.f63204a.get();
        }
    }

    /* renamed from: it.gmariotti.cardslib.library.view.component.CardThumbnailView$b */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/component/CardThumbnailView$b.class */
    public static final class C18167b extends BitmapDrawable {

        /* renamed from: a */
        private final WeakReference<AsyncTaskC18169d> f63205a;

        public C18167b(Resources resources, Bitmap bitmap, AsyncTaskC18169d asyncTaskC18169d) {
            super(resources, bitmap);
            this.f63205a = new WeakReference<>(asyncTaskC18169d);
        }

        /* renamed from: a */
        public final AsyncTaskC18169d m4347a() {
            return this.f63205a.get();
        }
    }

    /* renamed from: it.gmariotti.cardslib.library.view.component.CardThumbnailView$c */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/component/CardThumbnailView$c.class */
    public static final class C18168c extends BitmapDrawable {

        /* renamed from: a */
        private final WeakReference<AsyncTaskC18171f> f63206a;

        public C18168c(Resources resources, Bitmap bitmap, AsyncTaskC18171f asyncTaskC18171f) {
            super(resources, bitmap);
            this.f63206a = new WeakReference<>(asyncTaskC18171f);
        }

        /* renamed from: a */
        public final AsyncTaskC18171f m4346a() {
            return this.f63206a.get();
        }
    }

    /* renamed from: it.gmariotti.cardslib.library.view.component.CardThumbnailView$d */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/component/CardThumbnailView$d.class */
    public final class AsyncTaskC18169d extends AsyncTask<C18097j.AbstractC18098a, Void, Bitmap> {

        /* renamed from: b */
        private final WeakReference<ImageView> f63208b;

        /* renamed from: c */
        private C18097j.AbstractC18098a f63209c = null;

        public AsyncTaskC18169d(ImageView imageView) {
            CardThumbnailView.this = r6;
            this.f63208b = new WeakReference<>(imageView);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Bitmap doInBackground(C18097j.AbstractC18098a[] abstractC18098aArr) {
            this.f63209c = abstractC18098aArr[0];
            this.f63208b.get();
            Bitmap m4448b = this.f63209c.m4448b();
            if (m4448b != null) {
                CardThumbnailView.this.m4355a(this.f63209c.m4449a(), m4448b);
                return m4448b;
            }
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            if (isCancelled()) {
                bitmap2 = null;
            }
            WeakReference<ImageView> weakReference = this.f63208b;
            if (weakReference != null && bitmap2 != null) {
                ImageView imageView = weakReference.get();
                if (this != CardThumbnailView.m4349c(imageView) || imageView == null) {
                    return;
                }
                imageView.setImageBitmap(bitmap2);
                CardThumbnailView.this.m4364a();
                CardThumbnailView.this.f63201g = false;
                return;
            }
            CardThumbnailView.this.m4354a(false);
            if (CardThumbnailView.this.f63197c == null || CardThumbnailView.this.f63197c.m4451e() == 0) {
                return;
            }
            if (!CardThumbnailView.this.f63201g) {
                CardThumbnailView cardThumbnailView = CardThumbnailView.this;
                cardThumbnailView.m4363a(cardThumbnailView.f63197c.m4451e(), CardThumbnailView.this.f63202h);
            }
            CardThumbnailView.this.f63201g = true;
        }
    }

    /* renamed from: it.gmariotti.cardslib.library.view.component.CardThumbnailView$e */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/component/CardThumbnailView$e.class */
    public final class AsyncTaskC18170e extends AsyncTask<Integer, Void, Bitmap> {

        /* renamed from: b */
        private final WeakReference<ImageView> f63211b;

        /* renamed from: c */
        private int f63212c = 0;

        public AsyncTaskC18170e(ImageView imageView) {
            CardThumbnailView.this = r6;
            this.f63211b = new WeakReference<>(imageView);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Bitmap doInBackground(Integer[] numArr) {
            Integer[] numArr2 = numArr;
            this.f63212c = numArr2[0].intValue();
            ImageView imageView = this.f63211b.get();
            Bitmap m4362a = CardThumbnailView.m4362a(CardThumbnailView.this.getResources(), this.f63212c, imageView.getWidth(), imageView.getHeight());
            if (m4362a != null) {
                CardThumbnailView.this.m4355a(String.valueOf(numArr2[0]), m4362a);
                return m4362a;
            }
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            if (isCancelled()) {
                bitmap2 = null;
            }
            WeakReference<ImageView> weakReference = this.f63211b;
            if (weakReference != null && bitmap2 != null) {
                ImageView imageView = weakReference.get();
                if (this != CardThumbnailView.m4359a(imageView) || imageView == null) {
                    return;
                }
                imageView.setImageBitmap(bitmap2);
                CardThumbnailView.this.m4364a();
                CardThumbnailView.this.f63201g = false;
                return;
            }
            CardThumbnailView.this.m4354a(false);
            if (CardThumbnailView.this.f63197c == null || CardThumbnailView.this.f63197c.m4451e() == 0) {
                return;
            }
            if (!CardThumbnailView.this.f63201g) {
                CardThumbnailView cardThumbnailView = CardThumbnailView.this;
                cardThumbnailView.m4363a(cardThumbnailView.f63197c.m4451e(), CardThumbnailView.this.f63202h);
            }
            CardThumbnailView.this.f63201g = true;
        }
    }

    /* renamed from: it.gmariotti.cardslib.library.view.component.CardThumbnailView$f */
    /* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/component/CardThumbnailView$f.class */
    public final class AsyncTaskC18171f extends AsyncTask<String, Void, Bitmap> {

        /* renamed from: b */
        private final WeakReference<ImageView> f63214b;

        /* renamed from: c */
        private String f63215c = "";

        public AsyncTaskC18171f(ImageView imageView) {
            CardThumbnailView.this = r6;
            this.f63214b = new WeakReference<>(imageView);
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Bitmap doInBackground(String[] strArr) {
            String[] strArr2 = strArr;
            this.f63215c = strArr2[0];
            ImageView imageView = this.f63214b.get();
            CardThumbnailView.this.getResources();
            Bitmap m4356a = CardThumbnailView.m4356a(this.f63215c, imageView.getWidth(), imageView.getHeight());
            if (m4356a != null) {
                CardThumbnailView.this.m4355a(String.valueOf(strArr2[0]), m4356a);
                return m4356a;
            }
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            if (isCancelled()) {
                bitmap2 = null;
            }
            WeakReference<ImageView> weakReference = this.f63214b;
            if (weakReference != null && bitmap2 != null) {
                ImageView imageView = weakReference.get();
                if (this != CardThumbnailView.m4350b(imageView) || imageView == null) {
                    return;
                }
                imageView.setImageBitmap(bitmap2);
                CardThumbnailView.this.m4364a();
                CardThumbnailView.this.f63201g = false;
                return;
            }
            CardThumbnailView.this.m4354a(false);
            if (CardThumbnailView.this.f63197c == null || CardThumbnailView.this.f63197c.m4451e() == 0) {
                return;
            }
            if (!CardThumbnailView.this.f63201g) {
                CardThumbnailView cardThumbnailView = CardThumbnailView.this;
                cardThumbnailView.m4363a(cardThumbnailView.f63197c.m4451e(), CardThumbnailView.this.f63202h);
            }
            CardThumbnailView.this.f63201g = true;
        }
    }

    public CardThumbnailView(Context context) {
        super(context);
        m4360a((AttributeSet) null, 0);
    }

    public CardThumbnailView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4360a(attributeSet, 0);
    }

    public CardThumbnailView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m4360a(attributeSet, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002d, code lost:
        if (r0 > r4) goto L11;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int m4361a(android.graphics.BitmapFactory.Options r3, int r4, int r5) {
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
            if (r0 == 0) goto L50
            r0 = r5
            if (r0 != 0) goto L21
            r0 = r8
            r9 = r0
            goto L50
        L21:
            r0 = r6
            r1 = r5
            if (r0 > r1) goto L30
            r0 = r8
            r9 = r0
            r0 = r7
            r1 = r4
            if (r0 <= r1) goto L50
        L30:
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
            if (r0 >= r1) goto L4d
            goto L50
        L4d:
            r0 = r4
            r9 = r0
        L50:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: it.gmariotti.cardslib.library.view.component.CardThumbnailView.m4361a(android.graphics.BitmapFactory$Options, int, int):int");
    }

    /* renamed from: a */
    public static Bitmap m4362a(Resources resources, int i, int i2, int i3) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(resources, i, options);
        options.inSampleSize = m4361a(options, i2, i3);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeResource(resources, i, options);
    }

    /* renamed from: a */
    private Bitmap m4357a(String str) {
        if (str == null) {
            return null;
        }
        return this.f63198d.get(str);
    }

    /* renamed from: a */
    public static Bitmap m4356a(String str, int i, int i2) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(new URL(str).openStream());
            options.inSampleSize = m4361a(options, i, i2);
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeStream(new URL(str).openStream());
        } catch (IOException e) {
            Log.w("CardThumbnailView", "Error while retrieving image", e);
            return null;
        }
    }

    /* renamed from: a */
    protected static AsyncTaskC18170e m4359a(ImageView imageView) {
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (!(drawable instanceof C18166a)) {
                return null;
            }
            return ((C18166a) drawable).m4348a();
        }
        return null;
    }

    /* renamed from: a */
    private void m4360a(AttributeSet attributeSet, int i) {
        m4351b(attributeSet, i);
        if (!isInEditMode()) {
            m4353b();
        }
    }

    /* renamed from: b */
    protected static AsyncTaskC18171f m4350b(ImageView imageView) {
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (!(drawable instanceof C18168c)) {
                return null;
            }
            return ((C18168c) drawable).m4346a();
        }
        return null;
    }

    /* renamed from: b */
    private void m4353b() {
        this.f63196b = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(this.f63195a, (ViewGroup) this, true);
        this.f63202h = (ImageView) findViewById(C18061a.C18064c.card_thumbnail_image);
        int maxMemory = ((int) (Runtime.getRuntime().maxMemory() / 1024)) / 8;
        LruCache<String, Bitmap> m4440a = C18101a.m4440a();
        this.f63198d = m4440a;
        if (m4440a == null) {
            LruCache<String, Bitmap> lruCache = new LruCache<String, Bitmap>(maxMemory) { // from class: it.gmariotti.cardslib.library.view.component.CardThumbnailView.1
                @Override // android.util.LruCache
                protected final /* synthetic */ int sizeOf(String str, Bitmap bitmap) {
                    Bitmap bitmap2 = bitmap;
                    return Build.VERSION.SDK_INT > 12 ? bitmap2.getByteCount() / 1024 : (bitmap2.getRowBytes() * bitmap2.getHeight()) / 1024;
                }
            };
            this.f63198d = lruCache;
            C18101a.m4439a(lruCache);
        }
    }

    /* renamed from: b */
    private void m4351b(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, C18061a.C18068g.card_options, i, i);
        try {
            this.f63195a = obtainStyledAttributes.getResourceId(C18061a.C18068g.card_options_card_thumbnail_layout_resourceID, this.f63195a);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    private static boolean m4352b(int i, ImageView imageView) {
        AsyncTaskC18170e m4359a = m4359a(imageView);
        if (m4359a != null) {
            if (m4359a.f63212c == i) {
                return false;
            }
            m4359a.cancel(true);
            return true;
        }
        return true;
    }

    /* renamed from: c */
    protected static AsyncTaskC18169d m4349c(ImageView imageView) {
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (!(drawable instanceof C18167b)) {
                return null;
            }
            return ((C18167b) drawable).m4347a();
        }
        return null;
    }

    /* renamed from: a */
    protected final void m4364a() {
        m4354a(true);
    }

    /* renamed from: a */
    public final void m4363a(int i, ImageView imageView) {
        Bitmap m4357a = m4357a(String.valueOf(i));
        if (m4357a != null) {
            imageView.setImageBitmap(m4357a);
            m4354a(true);
        } else if (!m4352b(i, imageView)) {
        } else {
            AsyncTaskC18170e asyncTaskC18170e = new AsyncTaskC18170e(imageView);
            imageView.setImageDrawable(new C18166a(getResources(), null, asyncTaskC18170e));
            asyncTaskC18170e.execute(Integer.valueOf(i));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4358a(it.gmariotti.cardslib.library.p510a.C18097j r8) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: it.gmariotti.cardslib.library.view.component.CardThumbnailView.m4358a(it.gmariotti.cardslib.library.a.j):void");
    }

    /* renamed from: a */
    protected final void m4355a(String str, Bitmap bitmap) {
        if (this.f63201g || m4357a(str) != null || str == null || bitmap == null) {
            return;
        }
        this.f63198d.put(str, bitmap);
    }

    /* renamed from: a */
    protected final void m4354a(boolean z) {
        if (this.f63197c.m4450f()) {
            Intent intent = new Intent();
            intent.setAction("it.gmariotti.cardslib.library.intent.action.IMAGE_DOWNLOADED");
            intent.putExtra("ExtraResult", z);
            if (this.f63201g) {
                intent.putExtra("ExtraErrorLoading", true);
            } else {
                intent.putExtra("ExtraErrorLoading", false);
            }
            C18097j c18097j = this.f63197c;
            if (c18097j != null && c18097j.getParentCard() != null) {
                intent.putExtra("ExtraCardId", this.f63197c.getParentCard().getId());
            }
            if (getContext() == null) {
                return;
            }
            getContext().sendBroadcast(intent);
        }
    }

    public void setForceReplaceInnerLayout(boolean z) {
        this.f63200f = z;
    }

    public void setRecycle(boolean z) {
        this.f63199e = z;
    }
}
