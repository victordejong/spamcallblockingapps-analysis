package com.inmobi.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.inmobi.ads.AdContainer;
import com.inmobi.ads.C8107an;
import com.inmobi.ads.C8139az;
import com.inmobi.ads.C8144ba;
import com.inmobi.ads.NativeContainerLayout;
import com.inmobi.ads.NativeTracker;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.utilities.p516b.C8399c;
import com.inmobi.rendering.CustomView;
import com.inmobi.rendering.InMobiAdActivity;
import com.inmobi.rendering.RenderView;
import com.mopub.common.MoPubBrowser;
import com.squareup.picasso.Callback;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Stack;
/* renamed from: com.inmobi.ads.bf */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bf.class */
public class C8154bf {

    /* renamed from: a */
    public static final String f31855a = "bf";

    /* renamed from: c */
    public static final Map<Class, Integer> f31856c;

    /* renamed from: e */
    public static volatile WeakReference<C8154bf> f31857e;

    /* renamed from: f */
    public static WeakReference<Context> f31858f;

    /* renamed from: g */
    public static int f31859g = 1;

    /* renamed from: h */
    public static int f31860h = 1;

    /* renamed from: b */
    public int f31861b;

    /* renamed from: d */
    public Map<Integer, AbstractC8170d> f31862d = new HashMap();

    /* renamed from: com.inmobi.ads.bf$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bf$a.class */
    public static final class RunnableC8167a implements Runnable {

        /* renamed from: a */
        public WeakReference<Context> f31877a;

        /* renamed from: b */
        public WeakReference<ImageView> f31878b;

        public RunnableC8167a(Context context, ImageView imageView) {
            this.f31877a = new WeakReference<>(context);
            this.f31878b = new WeakReference<>(imageView);
        }

        @Override // java.lang.Runnable
        public final void run() {
            Context context = this.f31877a.get();
            ImageView imageView = this.f31878b.get();
            if (context != null && imageView != null) {
                C8154bf.m6288b(context, imageView);
            }
        }
    }

    /* renamed from: com.inmobi.ads.bf$b */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bf$b.class */
    public static final class C8168b extends TextView {
        public C8168b(Context context) {
            super(context);
        }

        @Override // android.view.View
        public final void onSizeChanged(int i, int i2, int i3, int i4) {
            super.onSizeChanged(i, i2, i3, i4);
            int lineHeight = getLineHeight() > 0 ? i2 / getLineHeight() : 0;
            if (lineHeight > 0) {
                setSingleLine(false);
                setLines(lineHeight);
            }
            if (lineHeight == 1) {
                setSingleLine();
            }
        }

        @Override // android.widget.TextView, android.view.View
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            return false;
        }
    }

    /* renamed from: com.inmobi.ads.bf$c */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bf$c.class */
    public static final class C8169c implements InvocationHandler {

        /* renamed from: a */
        public WeakReference<Context> f31879a;

        /* renamed from: b */
        public WeakReference<ImageView> f31880b;

        /* renamed from: c */
        public C8103ak f31881c;

        public C8169c(Context context, ImageView imageView, C8103ak akVar) {
            this.f31879a = new WeakReference<>(context);
            this.f31880b = new WeakReference<>(imageView);
            this.f31881c = akVar;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) {
            String unused = C8154bf.f31855a;
            new StringBuilder("Method invoked in PicassoInvocationHandler: ").append(method);
            if (method == null || !"onError".equalsIgnoreCase(method.getName())) {
                return null;
            }
            C8154bf.m6306a(this.f31879a.get(), this.f31880b.get(), this.f31881c);
            return null;
        }
    }

    /* renamed from: com.inmobi.ads.bf$d */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bf$d.class */
    public abstract class AbstractC8170d {

        /* renamed from: b */
        public LinkedList<View> f31883b = new LinkedList<>();

        /* renamed from: a */
        public int f31882a = 0;

        /* renamed from: d */
        public int f31885d = 0;

        public AbstractC8170d() {
        }

        /* renamed from: a */
        public abstract View mo6281a(Context context);

        /* renamed from: a */
        public final View m6280a(Context context, C8103ak akVar, C8197c cVar) {
            View view;
            WeakReference unused = C8154bf.f31858f = new WeakReference(context);
            if (this.f31883b.isEmpty()) {
                this.f31882a++;
                view = mo6281a(context);
            } else {
                this.f31885d++;
                view = this.f31883b.removeFirst();
                C8154bf.m6285b(C8154bf.this);
            }
            mo6278a(view, akVar, cVar);
            return view;
        }

        /* renamed from: a */
        public void mo6278a(View view, C8103ak akVar, C8197c cVar) {
            view.setVisibility(akVar.f31699x);
            view.setOnClickListener(null);
        }

        /* renamed from: a */
        public boolean mo6279a(View view) {
            C8154bf.m6287b(view);
            view.setOnClickListener(null);
            this.f31883b.addLast(view);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
            C8154bf.m6294a(C8154bf.this);
            return true;
        }

        public String toString() {
            return "Size:" + this.f31883b.size() + " Miss Count:" + this.f31882a + " Hit Count:" + this.f31885d;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        f31856c = hashMap;
        hashMap.put(C8136aw.class, 0);
        f31856c.put(C8184bq.class, 1);
        f31856c.put(C8183bp.class, 2);
        f31856c.put(NativeContainerLayout.class, 3);
        f31856c.put(ImageView.class, 6);
        f31856c.put(NativeVideoWrapper.class, 7);
        f31856c.put(C8168b.class, 4);
        f31856c.put(Button.class, 5);
        f31856c.put(NativeTimerView.class, 8);
        f31856c.put(RenderView.class, 9);
        f31856c.put(GifView.class, 10);
    }

    public C8154bf(Context context) {
        f31858f = new WeakReference<>(context);
        this.f31862d.put(0, new AbstractC8170d() { // from class: com.inmobi.ads.bf.1
            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final View mo6281a(Context context2) {
                return new C8136aw(context2.getApplicationContext());
            }

            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final void mo6278a(View view, C8103ak akVar, C8197c cVar) {
                super.mo6278a(view, akVar, cVar);
                C8154bf.m6303a(view, akVar.f31678c);
            }
        });
        this.f31862d.put(3, new AbstractC8170d() { // from class: com.inmobi.ads.bf.5
            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final View mo6281a(Context context2) {
                return new NativeContainerLayout(context2.getApplicationContext());
            }

            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final void mo6278a(View view, C8103ak akVar, C8197c cVar) {
                super.mo6278a(view, akVar, cVar);
                C8154bf.m6303a(view, akVar.f31678c);
            }
        });
        this.f31862d.put(1, new AbstractC8170d() { // from class: com.inmobi.ads.bf.6
            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final View mo6281a(Context context2) {
                return new C8184bq(context2.getApplicationContext());
            }

            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final void mo6278a(View view, C8103ak akVar, C8197c cVar) {
                super.mo6278a(view, akVar, cVar);
                C8154bf.m6303a(view, akVar.f31678c);
            }

            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final boolean mo6279a(View view) {
                ((C8184bq) view).f31922a = null;
                return super.mo6279a(view);
            }
        });
        this.f31862d.put(2, new AbstractC8170d() { // from class: com.inmobi.ads.bf.7
            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final View mo6281a(Context context2) {
                return new C8183bp(context2.getApplicationContext());
            }

            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final void mo6278a(View view, C8103ak akVar, C8197c cVar) {
                super.mo6278a(view, akVar, cVar);
                C8154bf.m6303a(view, akVar.f31678c);
            }
        });
        this.f31862d.put(6, new AbstractC8170d() { // from class: com.inmobi.ads.bf.8
            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final View mo6281a(Context context2) {
                return new ImageView(context2.getApplicationContext());
            }

            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final void mo6278a(View view, C8103ak akVar, C8197c cVar) {
                super.mo6278a(view, akVar, cVar);
                C8154bf.m6301a((ImageView) view, akVar);
            }

            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final boolean mo6279a(View view) {
                if (!(view instanceof ImageView)) {
                    return false;
                }
                ((ImageView) view).setImageDrawable(null);
                return super.mo6279a(view);
            }
        });
        this.f31862d.put(10, new AbstractC8170d() { // from class: com.inmobi.ads.bf.9
            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final View mo6281a(Context context2) {
                return new GifView(context2.getApplicationContext());
            }

            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final void mo6278a(View view, C8103ak akVar, C8197c cVar) {
                super.mo6278a(view, akVar, cVar);
                C8154bf.m6297a((GifView) view, akVar);
            }

            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final boolean mo6279a(View view) {
                if (!(view instanceof GifView)) {
                    return false;
                }
                ((GifView) view).setGif(null);
                return super.mo6279a(view);
            }
        });
        this.f31862d.put(7, new AbstractC8170d() { // from class: com.inmobi.ads.bf.10
            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final View mo6281a(Context context2) {
                return new NativeVideoWrapper(context2.getApplicationContext());
            }

            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final void mo6278a(View view, C8103ak akVar, C8197c cVar) {
                super.mo6278a(view, akVar, cVar);
                C8154bf.m6296a((NativeVideoWrapper) view, akVar);
            }

            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final boolean mo6279a(View view) {
                if (!(view instanceof NativeVideoWrapper)) {
                    return false;
                }
                NativeVideoWrapper nativeVideoWrapper = (NativeVideoWrapper) view;
                nativeVideoWrapper.getProgressBar().setVisibility(8);
                nativeVideoWrapper.getPoster().setImageBitmap(null);
                nativeVideoWrapper.getVideoView().m6657a();
                return super.mo6279a(view);
            }
        });
        this.f31862d.put(4, new AbstractC8170d() { // from class: com.inmobi.ads.bf.11
            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final View mo6281a(Context context2) {
                return new C8168b(context2.getApplicationContext());
            }

            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final void mo6278a(View view, C8103ak akVar, C8197c cVar) {
                super.mo6278a(view, akVar, cVar);
                C8154bf.m6299a((TextView) view, akVar);
            }

            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final boolean mo6279a(View view) {
                if (!(view instanceof TextView)) {
                    return false;
                }
                C8154bf.m6300a((TextView) view);
                return super.mo6279a(view);
            }
        });
        this.f31862d.put(5, new AbstractC8170d() { // from class: com.inmobi.ads.bf.12
            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final View mo6281a(Context context2) {
                return new Button(context2.getApplicationContext());
            }

            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final void mo6278a(View view, C8103ak akVar, C8197c cVar) {
                super.mo6278a(view, akVar, cVar);
                C8154bf.m6286b((Button) view, akVar);
            }

            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final boolean mo6279a(View view) {
                if (!(view instanceof Button)) {
                    return false;
                }
                C8154bf.m6300a((TextView) ((Button) view));
                return super.mo6279a(view);
            }
        });
        this.f31862d.put(8, new AbstractC8170d() { // from class: com.inmobi.ads.bf.2
            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final View mo6281a(Context context2) {
                return new NativeTimerView(context2.getApplicationContext());
            }

            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final void mo6278a(View view, C8103ak akVar, C8197c cVar) {
                super.mo6278a(view, akVar, cVar);
                C8154bf.m6293a(C8154bf.this, (NativeTimerView) view, akVar);
            }

            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final boolean mo6279a(View view) {
                return (view instanceof NativeTimerView) && super.mo6279a(view);
            }
        });
        this.f31862d.put(9, new AbstractC8170d() { // from class: com.inmobi.ads.bf.3
            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final View mo6281a(Context context2) {
                return new RenderView(context2.getApplicationContext(), new AdContainer.RenderingProperties(AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE), null, null);
            }

            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final void mo6278a(View view, C8103ak akVar, C8197c cVar) {
                super.mo6278a(view, akVar, cVar);
                C8154bf.m6292a((RenderView) view, akVar, cVar);
            }

            @Override // com.inmobi.ads.C8154bf.AbstractC8170d
            /* renamed from: a */
            public final boolean mo6279a(View view) {
                return (view instanceof RenderView) && !((RenderView) view).f32799u && super.mo6279a(view);
            }
        });
    }

    /* renamed from: a */
    public static /* synthetic */ int m6294a(C8154bf bfVar) {
        int i = bfVar.f31861b;
        bfVar.f31861b = i + 1;
        return i;
    }

    /* renamed from: a */
    public static ViewGroup.LayoutParams m6295a(C8103ak akVar, ViewGroup viewGroup) {
        NativeContainerLayout.C8027a aVar;
        C8104al alVar = akVar.f31678c;
        Point point = alVar.f31701a;
        Point point2 = alVar.f31703c;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(m6283c(point.x), m6283c(point.y));
        if (viewGroup instanceof NativeContainerLayout) {
            NativeContainerLayout.C8027a aVar2 = new NativeContainerLayout.C8027a(m6283c(point.x), m6283c(point.y));
            int c = m6283c(point2.x);
            int c2 = m6283c(point2.y);
            aVar2.f31379a = c;
            aVar2.f31380b = c2;
            aVar = aVar2;
        } else if (viewGroup instanceof LinearLayout) {
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(m6283c(point.x), m6283c(point.y));
            layoutParams2.setMargins(m6283c(point2.x), m6283c(point2.y), 0, 0);
            aVar = layoutParams2;
        } else if (viewGroup instanceof AbsListView) {
            return new AbsListView.LayoutParams(m6283c(point.x), m6283c(point.y));
        } else {
            aVar = layoutParams;
            if (viewGroup instanceof FrameLayout) {
                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(m6283c(point.x), m6283c(point.y));
                layoutParams3.setMargins(m6283c(point2.x), m6283c(point2.y), 0, 0);
                aVar = layoutParams3;
            }
        }
        return aVar;
    }

    /* renamed from: a */
    public static C8154bf m6308a(Context context) {
        C8154bf bfVar = null;
        C8154bf bfVar2 = f31857e == null ? null : f31857e.get();
        C8154bf bfVar3 = bfVar2;
        if (bfVar2 == null) {
            synchronized (C8154bf.class) {
                try {
                    if (f31857e != null) {
                        bfVar = f31857e.get();
                    }
                    if (bfVar == null) {
                        C8154bf bfVar4 = new C8154bf(context);
                        f31857e = new WeakReference<>(bfVar4);
                        bfVar3 = bfVar4;
                    } else {
                        bfVar3 = bfVar;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return bfVar3;
    }

    /* renamed from: a */
    public static void m6309a(int i) {
        f31859g = i;
    }

    /* renamed from: a */
    public static /* synthetic */ void m6306a(Context context, ImageView imageView, C8103ak akVar) {
        if (!(context == null || imageView == null)) {
            String str = akVar.f31693r;
            if ("cross_button".equalsIgnoreCase(akVar.f31679d) && str.trim().length() == 0) {
                m6288b(context, imageView);
            }
        }
        HashMap hashMap = new HashMap();
        hashMap.put("[ERRORCODE]", "603");
        akVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_ERROR, hashMap);
    }

    /* renamed from: a */
    public static void m6303a(View view, C8104al alVar) {
        int i = Color.parseColor("#00000000");
        try {
            i = Color.parseColor(alVar.mo6351e());
        } catch (IllegalArgumentException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
        }
        view.setBackgroundColor(i);
        if ("line".equals(alVar.m6446a())) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(i);
            if ("curved".equals(alVar.m6445b())) {
                gradientDrawable.setCornerRadius(alVar.m6444c());
            }
            int parseColor = Color.parseColor("#ff000000");
            try {
                parseColor = Color.parseColor(alVar.m6443d());
            } catch (IllegalArgumentException e2) {
                C8328a.m5878a().m5875a(new C8365a(e2));
            }
            gradientDrawable.setStroke(1, parseColor);
            if (Build.VERSION.SDK_INT < 16) {
                view.setBackgroundDrawable(gradientDrawable);
            } else {
                view.setBackground(gradientDrawable);
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m6301a(ImageView imageView, C8103ak akVar) {
        int i;
        int i2;
        String str = (String) akVar.f31680e;
        if (str != null) {
            int c = m6283c(akVar.f31678c.f31701a.x);
            int c2 = m6283c(akVar.f31678c.f31701a.y);
            String f = akVar.f31678c.m6442f();
            char c3 = 65535;
            int hashCode = f.hashCode();
            int i3 = 0;
            int i4 = 0;
            if (hashCode != -1362001767) {
                if (hashCode == 727618043 && f.equals("aspectFill")) {
                    c3 = 1;
                }
            } else if (f.equals("aspectFit")) {
                c3 = 0;
            }
            if (c3 == 0) {
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            } else if (c3 != 1) {
                imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            } else {
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            }
            Context context = f31858f.get();
            if (context != null && c > 0 && c2 > 0 && str.trim().length() != 0) {
                C8173bi.m6266a(context).load(str).into(imageView, (Callback) C8173bi.m6265a(new C8169c(context, imageView, akVar)));
                if ("cross_button".equalsIgnoreCase(akVar.f31679d) && akVar.f31693r.length() == 0) {
                    new Handler().postDelayed(new RunnableC8167a(context, imageView), 2000L);
                }
            }
            C8103ak akVar2 = akVar.f31695t;
            if (akVar2 == null || !"line".equals(akVar2.f31678c.m6446a())) {
                i4 = 0;
                i = 0;
                i2 = 0;
            } else {
                i3 = akVar2.f31678c.f31703c.x == akVar.f31678c.f31703c.x ? 1 : 0;
                i = m6283c(akVar2.f31678c.f31701a.x) == m6283c(akVar.f31678c.f31701a.x) + akVar.f31678c.f31703c.x ? 1 : 0;
                int i5 = m6283c(akVar2.f31678c.f31703c.y) == m6283c(akVar.f31678c.f31703c.y) ? 1 : 0;
                if (m6283c(akVar2.f31678c.f31701a.y) == m6283c(akVar.f31678c.f31701a.y) + m6283c(akVar.f31678c.f31703c.y)) {
                    i4 = 1;
                }
                if (m6283c(akVar2.f31678c.f31701a.x) == m6283c(akVar.f31678c.f31701a.x)) {
                    i = 1;
                    i3 = 1;
                    i2 = i5;
                } else {
                    i2 = i5;
                }
            }
            if (Build.VERSION.SDK_INT < 17) {
                imageView.setPadding(i3, i2, i, i4);
            } else {
                imageView.setPaddingRelative(i3, i2, i, i4);
            }
            m6303a(imageView, akVar.f31678c);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m6300a(TextView textView) {
        textView.setTypeface(Typeface.DEFAULT, 0);
        textView.setPaintFlags(textView.getPaintFlags() & (-17));
        textView.setPaintFlags(textView.getPaintFlags() & (-9));
    }

    /* renamed from: a */
    public static /* synthetic */ void m6299a(TextView textView, C8103ak akVar) {
        C8139az.C8140a aVar = (C8139az.C8140a) akVar.f31678c;
        textView.setLayoutParams(new ViewGroup.LayoutParams(m6283c(aVar.f31701a.x), m6283c(aVar.f31701a.y)));
        textView.setText((CharSequence) akVar.f31680e);
        textView.setTypeface(Typeface.DEFAULT);
        int i = aVar.f31821p;
        if (i == 1) {
            textView.setGravity(8388629);
        } else if (i != 2) {
            textView.setGravity(8388627);
        } else {
            textView.setGravity(17);
        }
        textView.setTextSize(1, m6283c(aVar.m6350h()));
        int i2 = Color.parseColor("#ff000000");
        try {
            i2 = Color.parseColor(aVar.m6349i());
        } catch (IllegalArgumentException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
        }
        textView.setTextColor(i2);
        int parseColor = Color.parseColor("#00000000");
        try {
            parseColor = Color.parseColor(aVar.mo6351e());
        } catch (IllegalArgumentException e2) {
            C8328a.m5878a().m5875a(new C8365a(e2));
        }
        textView.setBackgroundColor(parseColor);
        if (Build.VERSION.SDK_INT >= 17) {
            textView.setTextAlignment(1);
        }
        m6298a(textView, aVar.m6348j());
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setHorizontallyScrolling(true);
        textView.setFocusable(true);
        textView.setFocusableInTouchMode(true);
        m6303a(textView, aVar);
    }

    /* renamed from: a */
    public static void m6298a(TextView textView, String[] strArr) {
        int paintFlags = textView.getPaintFlags();
        int i = 0;
        for (String str : strArr) {
            char c = 65535;
            switch (str.hashCode()) {
                case -1178781136:
                    if (str.equals("italic")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1026963764:
                    if (str.equals("underline")) {
                        c = 3;
                        break;
                    }
                    break;
                case -891985998:
                    if (str.equals("strike")) {
                        c = 2;
                        break;
                    }
                    break;
                case 3029637:
                    if (str.equals("bold")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                i |= 1;
                paintFlags = paintFlags;
            } else if (c != 1) {
                paintFlags = c != 2 ? c != 3 ? paintFlags : paintFlags | 8 : paintFlags | 16;
            } else {
                i |= 2;
                paintFlags = paintFlags;
            }
        }
        textView.setTypeface(Typeface.DEFAULT, i);
        textView.setPaintFlags(paintFlags);
    }

    /* renamed from: a */
    public static /* synthetic */ void m6297a(GifView gifView, C8103ak akVar) {
        gifView.setLayoutParams(new ViewGroup.LayoutParams(m6283c(akVar.f31678c.f31701a.x), m6283c(akVar.f31678c.f31701a.y)));
        gifView.setContentMode(akVar.f31678c.m6442f());
        gifView.setGif(((C8115aq) akVar).f31764z);
        m6303a(gifView, akVar.f31678c);
    }

    /* renamed from: a */
    public static /* synthetic */ void m6296a(NativeVideoWrapper nativeVideoWrapper, C8103ak akVar) {
        if (Build.VERSION.SDK_INT >= 15) {
            m6303a(nativeVideoWrapper, akVar.f31678c);
            Object obj = akVar.f31698w;
            if (obj != null) {
                nativeVideoWrapper.setPosterImage((Bitmap) obj);
            }
            nativeVideoWrapper.getProgressBar().setVisibility(0);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m6293a(C8154bf bfVar, final NativeTimerView nativeTimerView, C8103ak akVar) {
        long a;
        nativeTimerView.setVisibility(4);
        final C8146bb bbVar = (C8146bb) akVar;
        C8144ba baVar = bbVar.f31828A;
        C8144ba.C8145a aVar = baVar.f31822a;
        C8144ba.C8145a aVar2 = baVar.f31823b;
        if (aVar != null) {
            try {
                a = aVar.m6342a();
            } catch (Exception e) {
                C8328a.m5878a().m5875a(new C8365a(e));
                return;
            }
        } else {
            a = 0;
        }
        long a2 = aVar2 != null ? aVar2.m6342a() : 0L;
        if (a2 >= 0) {
            nativeTimerView.setTimerValue(a2);
            new Handler().postDelayed(new Runnable() { // from class: com.inmobi.ads.bf.4
                @Override // java.lang.Runnable
                public final void run() {
                    if (C8154bf.f31858f.get() != null) {
                        if (bbVar.f31829z) {
                            nativeTimerView.setVisibility(0);
                        }
                        nativeTimerView.m6672a();
                    }
                }
            }, a * 1000);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m6292a(RenderView renderView, C8103ak akVar, C8197c cVar) {
        try {
            renderView.m5605a(RenderView.f32746a, cVar);
            renderView.f32787i = true;
            String str = (String) akVar.f31680e;
            String str2 = ((C8171bg) akVar).f31888z;
            char c = 65535;
            switch (str2.hashCode()) {
                case -1081286672:
                    if (str2.equals("REF_IFRAME")) {
                        c = 2;
                        break;
                    }
                    break;
                case 84303:
                    if (str2.equals(MoPubBrowser.DESTINATION_URL_KEY)) {
                        c = 3;
                        break;
                    }
                    break;
                case 2228139:
                    if (str2.equals("HTML")) {
                        c = 1;
                        break;
                    }
                    break;
                case 83774455:
                    if (str2.equals("REF_HTML")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            if (c == 0 || c == 1) {
                renderView.m5598a(str);
            } else {
                renderView.m5589b(str);
            }
        } catch (Exception e) {
            C8328a.m5878a().m5875a(new C8365a(e));
        }
    }

    /* renamed from: b */
    public static /* synthetic */ int m6285b(C8154bf bfVar) {
        int i = bfVar.f31861b;
        bfVar.f31861b = i - 1;
        return i;
    }

    /* renamed from: b */
    public static Button m6286b(Button button, C8103ak akVar) {
        C8107an.C8108a aVar = (C8107an.C8108a) akVar.f31678c;
        button.setLayoutParams(new ViewGroup.LayoutParams(m6283c(aVar.f31701a.x), m6283c(aVar.f31701a.y)));
        button.setText((CharSequence) akVar.f31680e);
        button.setTextSize(1, m6283c(aVar.m6350h()));
        int parseColor = Color.parseColor("#ff000000");
        try {
            parseColor = Color.parseColor(aVar.m6349i());
        } catch (IllegalArgumentException e) {
            C8328a.m5878a().m5875a(new C8365a(e));
        }
        button.setTextColor(parseColor);
        int parseColor2 = Color.parseColor("#00000000");
        try {
            parseColor2 = Color.parseColor(aVar.mo6351e());
        } catch (IllegalArgumentException e2) {
            C8328a.m5878a().m5875a(new C8365a(e2));
        }
        button.setBackgroundColor(parseColor2);
        if (Build.VERSION.SDK_INT >= 17) {
            button.setTextAlignment(4);
        }
        button.setGravity(17);
        m6298a(button, aVar.m6348j());
        m6303a(button, aVar);
        return button;
    }

    /* renamed from: b */
    public static void m6289b(int i) {
        f31860h = i;
    }

    /* renamed from: b */
    public static void m6288b(Context context, ImageView imageView) {
        Bitmap bitmap;
        if (imageView.getDrawable() == null) {
            float f = C8399c.m5687a().f32662c;
            CustomView customView = new CustomView(context, f, 0);
            if (Build.VERSION.SDK_INT < 28) {
                customView.layout(0, 0, (int) (m6283c(40) * f), (int) (m6283c(40) * f));
                customView.setDrawingCacheEnabled(true);
                customView.buildDrawingCache();
                bitmap = customView.getDrawingCache();
            } else {
                customView.layout(0, 0, (int) (m6283c(40) * f), (int) (m6283c(40) * f));
                bitmap = Bitmap.createBitmap((int) (m6283c(40) * f), (int) (m6283c(40) * f), Bitmap.Config.ARGB_8888);
                customView.draw(new Canvas(bitmap));
            }
            imageView.setImageBitmap(bitmap);
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m6287b(View view) {
        if (Build.VERSION.SDK_INT < 16) {
            view.setBackgroundDrawable(null);
        } else {
            view.setBackground(null);
        }
    }

    /* renamed from: c */
    public static int m6283c(int i) {
        int i2;
        Context context = f31858f.get();
        if ((context == null || !(context instanceof InMobiAdActivity)) && (i2 = f31859g) != 0) {
            double d = i;
            double d2 = i2;
            Double.isNaN(d2);
            double d3 = f31860h;
            Double.isNaN(d3);
            Double.isNaN(d);
            return (int) (d * ((d2 * 1.0d) / d3));
        }
        return i;
    }

    /* renamed from: c */
    private AbstractC8170d m6284c() {
        int i = 0;
        AbstractC8170d dVar = null;
        for (Map.Entry<Integer, AbstractC8170d> entry : this.f31862d.entrySet()) {
            if (entry.getValue().f31883b.size() > i) {
                dVar = entry.getValue();
                i = dVar.f31883b.size();
            }
        }
        return dVar;
    }

    /* renamed from: c */
    private void m6282c(View view) {
        AbstractC8170d c;
        int intValue = f31856c.get(view.getClass()).intValue();
        if (-1 == intValue) {
            new StringBuilder("View type unknown, ignoring recycle:").append(view);
            return;
        }
        AbstractC8170d dVar = this.f31862d.get(Integer.valueOf(intValue));
        if (dVar == null) {
            StringBuilder sb = new StringBuilder("Unsupported AssetType:");
            sb.append(intValue);
            sb.append(" failed to recycle view");
            return;
        }
        if (this.f31861b >= 300 && (c = m6284c()) != null && c.f31883b.size() > 0) {
            c.f31883b.removeFirst();
        }
        dVar.mo6279a(view);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00bd, code lost:
        if (r0.equals("VIDEO") != false) goto L_0x012d;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View m6305a(android.content.Context r6, com.inmobi.ads.C8103ak r7, com.inmobi.ads.C8197c r8) {
        /*
            Method dump skipped, instructions count: 458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.C8154bf.m6305a(android.content.Context, com.inmobi.ads.ak, com.inmobi.ads.c):android.view.View");
    }

    /* renamed from: a */
    public final void m6304a(View view) {
        if ((view instanceof C8136aw) || (view instanceof NativeContainerLayout)) {
            NativeContainerLayout nativeContainerLayout = (NativeContainerLayout) view;
            if (nativeContainerLayout.getChildCount() != 0) {
                Stack stack = new Stack();
                stack.push(nativeContainerLayout);
                while (!stack.isEmpty()) {
                    NativeContainerLayout nativeContainerLayout2 = (NativeContainerLayout) stack.pop();
                    for (int childCount = nativeContainerLayout2.getChildCount() - 1; childCount >= 0; childCount--) {
                        View childAt = nativeContainerLayout2.getChildAt(childCount);
                        nativeContainerLayout2.removeViewAt(childCount);
                        if (childAt instanceof NativeContainerLayout) {
                            stack.push((NativeContainerLayout) childAt);
                        } else {
                            m6282c(childAt);
                        }
                    }
                    m6282c(nativeContainerLayout2);
                }
                return;
            }
        }
        m6282c(view);
    }
}
