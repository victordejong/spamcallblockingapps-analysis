package androidx.mediarouter.app;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import java.util.ArrayList;
import java.util.List;
import p000.C1324dz;
/* loaded from: classes-dex2jar.jar:androidx/mediarouter/app/MediaRouteButton.class */
public class MediaRouteButton extends View {

    /* renamed from: r */
    public static C0171a f1251r;

    /* renamed from: s */
    public static final SparseArray<Drawable.ConstantState> f1252s = new SparseArray<>(2);

    /* renamed from: t */
    public static final int[] f1253t = {16842912};

    /* renamed from: u */
    public static final int[] f1254u = {16842911};

    /* renamed from: a */
    public final C1324dz f1255a;

    /* renamed from: b */
    public final b f1256b;

    /* renamed from: c */
    public C1266cz f1257c;

    /* renamed from: d */
    public C0264by f1258d;

    /* renamed from: f */
    public boolean f1259f;

    /* renamed from: g */
    public int f1260g;

    /* renamed from: h */
    public AsyncTaskC0172c f1261h;

    /* renamed from: j */
    public Drawable f1262j;

    /* renamed from: k */
    public int f1263k;

    /* renamed from: l */
    public int f1264l;

    /* renamed from: m */
    public ColorStateList f1265m;

    /* renamed from: n */
    public int f1266n;

    /* renamed from: o */
    public int f1267o;

    /* renamed from: p */
    public boolean f1268p;

    /* renamed from: q */
    public boolean f1269q;

    /* renamed from: androidx.mediarouter.app.MediaRouteButton$a */
    /* loaded from: classes-dex2jar.jar:androidx/mediarouter/app/MediaRouteButton$a.class */
    public static final class C0171a extends BroadcastReceiver {

        /* renamed from: a */
        public final Context f1270a;

        /* renamed from: b */
        public boolean f1271b = true;

        /* renamed from: c */
        public List<MediaRouteButton> f1272c = new ArrayList();

        public C0171a(Context context) {
            this.f1270a = context;
        }

        /* renamed from: a */
        public boolean m6310a() {
            return this.f1271b;
        }

        /* renamed from: b */
        public void m6309b(MediaRouteButton mediaRouteButton) {
            if (this.f1272c.size() == 0) {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                this.f1270a.registerReceiver(this, intentFilter);
            }
            this.f1272c.add(mediaRouteButton);
        }

        /* renamed from: c */
        public void m6308c(MediaRouteButton mediaRouteButton) {
            this.f1272c.remove(mediaRouteButton);
            if (this.f1272c.size() == 0) {
                this.f1270a.unregisterReceiver(this);
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z;
            if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()) || this.f1271b == (!intent.getBooleanExtra("noConnectivity", false))) {
                return;
            }
            this.f1271b = z;
            for (MediaRouteButton mediaRouteButton : this.f1272c) {
                mediaRouteButton.m6314c();
            }
        }
    }

    /* renamed from: androidx.mediarouter.app.MediaRouteButton$c */
    /* loaded from: classes-dex2jar.jar:androidx/mediarouter/app/MediaRouteButton$c.class */
    public final class AsyncTaskC0172c extends AsyncTask<Void, Void, Drawable> {

        /* renamed from: a */
        public final int f1273a;

        /* renamed from: b */
        public final Context f1274b;

        public AsyncTaskC0172c(int i, Context context) {
            MediaRouteButton.this = r4;
            this.f1273a = i;
            this.f1274b = context;
        }

        /* renamed from: a */
        public final void m6307a(Drawable drawable) {
            if (drawable != null) {
                MediaRouteButton.f1252s.put(this.f1273a, drawable.getConstantState());
            }
            MediaRouteButton.this.f1261h = null;
        }

        /* renamed from: b */
        public Drawable doInBackground(Void... voidArr) {
            if (MediaRouteButton.f1252s.get(this.f1273a) == null) {
                return this.f1274b.getResources().getDrawable(this.f1273a);
            }
            return null;
        }

        /* renamed from: c */
        public void onCancelled(Drawable drawable) {
            m6307a(drawable);
        }

        /* renamed from: d */
        public void onPostExecute(Drawable drawable) {
            if (drawable != null) {
                m6307a(drawable);
            } else {
                Drawable.ConstantState constantState = MediaRouteButton.f1252s.get(this.f1273a);
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                MediaRouteButton.this.f1261h = null;
            }
            MediaRouteButton.this.setRemoteIndicatorDrawableInternal(drawable);
        }
    }

    public MediaRouteButton(Context context) {
        this(context, null);
    }

    public MediaRouteButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, lx.mediaRouteButtonStyle);
    }

    public MediaRouteButton(Context context, AttributeSet attributeSet, int i) {
        super(fy.a(context), attributeSet, i);
        Drawable.ConstantState constantState;
        this.f1257c = C1266cz.f5728c;
        this.f1258d = C0264by.m5549a();
        this.f1260g = 0;
        Context context2 = getContext();
        int[] iArr = wx.MediaRouteButton;
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i, 0);
        jb.l0(this, context2, iArr, attributeSet, obtainStyledAttributes, i, 0);
        if (isInEditMode()) {
            this.f1255a = null;
            this.f1256b = null;
            this.f1262j = getResources().getDrawable(obtainStyledAttributes.getResourceId(wx.MediaRouteButton_externalRouteEnabledDrawableStatic, 0));
            return;
        }
        this.f1255a = C1324dz.m2404g(context2);
        this.f1256b = new b(this);
        if (f1251r == null) {
            f1251r = new C0171a(context2.getApplicationContext());
        }
        this.f1265m = obtainStyledAttributes.getColorStateList(wx.MediaRouteButton_mediaRouteButtonTint);
        this.f1266n = obtainStyledAttributes.getDimensionPixelSize(wx.MediaRouteButton_android_minWidth, 0);
        this.f1267o = obtainStyledAttributes.getDimensionPixelSize(wx.MediaRouteButton_android_minHeight, 0);
        int resourceId = obtainStyledAttributes.getResourceId(wx.MediaRouteButton_externalRouteEnabledDrawableStatic, 0);
        this.f1263k = obtainStyledAttributes.getResourceId(wx.MediaRouteButton_externalRouteEnabledDrawable, 0);
        obtainStyledAttributes.recycle();
        int i2 = this.f1263k;
        if (i2 != 0 && (constantState = f1252s.get(i2)) != null) {
            setRemoteIndicatorDrawable(constantState.newDrawable());
        }
        if (this.f1262j == null) {
            if (resourceId != 0) {
                Drawable.ConstantState constantState2 = f1252s.get(resourceId);
                if (constantState2 != null) {
                    setRemoteIndicatorDrawableInternal(constantState2.newDrawable());
                } else {
                    AsyncTaskC0172c asyncTaskC0172c = new AsyncTaskC0172c(resourceId, getContext());
                    this.f1261h = asyncTaskC0172c;
                    asyncTaskC0172c.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
                }
            } else {
                m6316a();
            }
        }
        m6311f();
        setClickable(true);
    }

    private Activity getActivity() {
        Context context = getContext();
        while (true) {
            Context context2 = context;
            if (context2 instanceof ContextWrapper) {
                if (context2 instanceof Activity) {
                    return (Activity) context2;
                }
                context = ((ContextWrapper) context2).getBaseContext();
            } else {
                return null;
            }
        }
    }

    private nd getFragmentManager() {
        FragmentActivity activity = getActivity();
        if (activity instanceof FragmentActivity) {
            return activity.getSupportFragmentManager();
        }
        return null;
    }

    /* renamed from: a */
    public final void m6316a() {
        if (this.f1263k > 0) {
            AsyncTaskC0172c asyncTaskC0172c = this.f1261h;
            if (asyncTaskC0172c != null) {
                asyncTaskC0172c.cancel(false);
            }
            AsyncTaskC0172c asyncTaskC0172c2 = new AsyncTaskC0172c(this.f1263k, getContext());
            this.f1261h = asyncTaskC0172c2;
            this.f1263k = 0;
            asyncTaskC0172c2.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
        }
    }

    /* renamed from: b */
    public void m6315b() {
        boolean z;
        C1324dz.C1332i m2400k = this.f1255a.m2400k();
        boolean z2 = false;
        int m2339c = !m2400k.m2320v() && m2400k.m2349D(this.f1257c) ? m2400k.m2339c() : 0;
        if (this.f1264l != m2339c) {
            this.f1264l = m2339c;
            z = true;
        } else {
            z = false;
        }
        if (z) {
            m6311f();
            refreshDrawableState();
        }
        if (m2339c == 1) {
            m6316a();
        }
        if (this.f1259f) {
            if (this.f1268p || this.f1255a.m2398m(this.f1257c, 1)) {
                z2 = true;
            }
            setEnabled(z2);
        }
        Drawable drawable = this.f1262j;
        if (drawable == null || !(drawable.getCurrent() instanceof AnimationDrawable)) {
            return;
        }
        AnimationDrawable animationDrawable = (AnimationDrawable) this.f1262j.getCurrent();
        if (this.f1259f) {
            if ((!z && m2339c != 1) || animationDrawable.isRunning()) {
                return;
            }
            animationDrawable.start();
        } else if (m2339c != 2) {
        } else {
            if (animationDrawable.isRunning()) {
                animationDrawable.stop();
            }
            animationDrawable.selectDrawable(animationDrawable.getNumberOfFrames() - 1);
        }
    }

    /* renamed from: c */
    public void m6314c() {
        super.setVisibility((this.f1260g != 0 || this.f1268p || f1251r.m6310a()) ? this.f1260g : 4);
        Drawable drawable = this.f1262j;
        if (drawable != null) {
            drawable.setVisible(getVisibility() == 0, false);
        }
    }

    /* renamed from: d */
    public boolean m6313d() {
        if (!this.f1259f) {
            return false;
        }
        jz m2402i = this.f1255a.m2402i();
        if (m2402i == null) {
            return m6312e(1);
        }
        m2402i.b();
        throw null;
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f1262j != null) {
            this.f1262j.setState(getDrawableState());
            invalidate();
        }
    }

    /* renamed from: e */
    public final boolean m6312e(int i) {
        ay ayVar;
        String str;
        String str2;
        nd fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            C1324dz.C1332i m2400k = this.f1255a.m2400k();
            if (m2400k.m2320v() || !m2400k.m2349D(this.f1257c)) {
                if (fragmentManager.Z("android.support.v7.mediarouter:MediaRouteChooserDialogFragment") != null) {
                    str2 = "showDialog(): Route chooser dialog already showing!";
                    Log.w("MediaRouteButton", str2);
                    return false;
                }
                ay m5548b = this.f1258d.m5548b();
                m5548b.n(this.f1257c);
                str = "android.support.v7.mediarouter:MediaRouteChooserDialogFragment";
                ayVar = m5548b;
                if (i == 2) {
                    m5548b.o(true);
                    ayVar = m5548b;
                    str = "android.support.v7.mediarouter:MediaRouteChooserDialogFragment";
                }
                td j = fragmentManager.j();
                j.d(ayVar, str);
                j.i();
                return true;
            } else if (fragmentManager.Z("android.support.v7.mediarouter:MediaRouteControllerDialogFragment") != null) {
                str2 = "showDialog(): Route controller dialog already showing!";
                Log.w("MediaRouteButton", str2);
                return false;
            } else {
                ay m5547c = this.f1258d.m5547c();
                m5547c.m(this.f1257c);
                str = "android.support.v7.mediarouter:MediaRouteControllerDialogFragment";
                ayVar = m5547c;
                if (i == 2) {
                    m5547c.n(true);
                    str = "android.support.v7.mediarouter:MediaRouteControllerDialogFragment";
                    ayVar = m5547c;
                }
                td j2 = fragmentManager.j();
                j2.d(ayVar, str);
                j2.i();
                return true;
            }
        }
        throw new IllegalStateException("The activity must be a subclass of FragmentActivity");
    }

    /* renamed from: f */
    public final void m6311f() {
        int i = this.f1264l;
        String string = getContext().getString(i != 1 ? i != 2 ? ux.mr_cast_button_disconnected : ux.mr_cast_button_connected : ux.mr_cast_button_connecting);
        setContentDescription(string);
        if (!this.f1269q || TextUtils.isEmpty(string)) {
            string = null;
        }
        p2.a(this, string);
    }

    public C0264by getDialogFactory() {
        return this.f1258d;
    }

    public C1266cz getRouteSelector() {
        return this.f1257c;
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1262j;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode()) {
            return;
        }
        this.f1259f = true;
        if (!this.f1257c.m2927f()) {
            this.f1255a.m2410a(this.f1257c, this.f1256b);
        }
        m6315b();
        f1251r.m6309b(this);
    }

    @Override // android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        C1324dz c1324dz = this.f1255a;
        if (c1324dz == null) {
            return onCreateDrawableState;
        }
        jz m2402i = c1324dz.m2402i();
        if (m2402i != null) {
            m2402i.a();
            throw null;
        }
        int i2 = this.f1264l;
        if (i2 == 1) {
            View.mergeDrawableStates(onCreateDrawableState, f1254u);
        } else if (i2 == 2) {
            View.mergeDrawableStates(onCreateDrawableState, f1253t);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        if (!isInEditMode()) {
            this.f1259f = false;
            if (!this.f1257c.m2927f()) {
                this.f1255a.m2396o(this.f1256b);
            }
            f1251r.m6308c(this);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f1262j != null) {
            int paddingLeft = getPaddingLeft();
            int width = getWidth();
            int paddingRight = getPaddingRight();
            int paddingTop = getPaddingTop();
            int height = getHeight();
            int paddingBottom = getPaddingBottom();
            int intrinsicWidth = this.f1262j.getIntrinsicWidth();
            int intrinsicHeight = this.f1262j.getIntrinsicHeight();
            int i = paddingLeft + ((((width - paddingRight) - paddingLeft) - intrinsicWidth) / 2);
            int i2 = paddingTop + ((((height - paddingBottom) - paddingTop) - intrinsicHeight) / 2);
            this.f1262j.setBounds(i, i2, intrinsicWidth + i, intrinsicHeight + i2);
            this.f1262j.draw(canvas);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i5 = this.f1266n;
        Drawable drawable = this.f1262j;
        int max = Math.max(i5, drawable != null ? drawable.getIntrinsicWidth() + getPaddingLeft() + getPaddingRight() : 0);
        int i6 = this.f1267o;
        Drawable drawable2 = this.f1262j;
        int i7 = 0;
        if (drawable2 != null) {
            i7 = drawable2.getIntrinsicHeight() + getPaddingTop() + getPaddingBottom();
        }
        int max2 = Math.max(i6, i7);
        if (mode != Integer.MIN_VALUE) {
            i3 = size;
            if (mode != 1073741824) {
                i3 = max;
            }
        } else {
            i3 = Math.min(size, max);
        }
        if (mode2 != Integer.MIN_VALUE) {
            i4 = size2;
            if (mode2 != 1073741824) {
                i4 = max2;
            }
        } else {
            i4 = Math.min(size2, max2);
        }
        setMeasuredDimension(i3, i4);
    }

    @Override // android.view.View
    public boolean performClick() {
        boolean performClick = super.performClick();
        boolean z = false;
        if (!performClick) {
            playSoundEffect(0);
        }
        m6316a();
        if (m6313d() || performClick) {
            z = true;
        }
        return z;
    }

    public void setAlwaysVisible(boolean z) {
        if (z != this.f1268p) {
            this.f1268p = z;
            m6314c();
            m6315b();
        }
    }

    public void setCheatSheetEnabled(boolean z) {
        if (z != this.f1269q) {
            this.f1269q = z;
            m6311f();
        }
    }

    public void setDialogFactory(C0264by c0264by) {
        if (c0264by != null) {
            this.f1258d = c0264by;
            return;
        }
        throw new IllegalArgumentException("factory must not be null");
    }

    public void setRemoteIndicatorDrawable(Drawable drawable) {
        this.f1263k = 0;
        setRemoteIndicatorDrawableInternal(drawable);
    }

    public void setRemoteIndicatorDrawableInternal(Drawable drawable) {
        Drawable drawable2;
        AsyncTaskC0172c asyncTaskC0172c = this.f1261h;
        if (asyncTaskC0172c != null) {
            asyncTaskC0172c.cancel(false);
        }
        Drawable drawable3 = this.f1262j;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f1262j);
        }
        Drawable drawable4 = drawable;
        if (drawable != null) {
            drawable4 = drawable;
            if (this.f1265m != null) {
                drawable4 = C1282d9.m2727r(drawable.mutate());
                C1282d9.m2730o(drawable4, this.f1265m);
            }
            drawable4.setCallback(this);
            drawable4.setState(getDrawableState());
            drawable4.setVisible(getVisibility() == 0, false);
        }
        this.f1262j = drawable4;
        refreshDrawableState();
        if (!this.f1259f || (drawable2 = this.f1262j) == null || !(drawable2.getCurrent() instanceof AnimationDrawable)) {
            return;
        }
        AnimationDrawable animationDrawable = (AnimationDrawable) this.f1262j.getCurrent();
        int i = this.f1264l;
        if (i == 1) {
            if (animationDrawable.isRunning()) {
                return;
            }
            animationDrawable.start();
        } else if (i != 2) {
        } else {
            if (animationDrawable.isRunning()) {
                animationDrawable.stop();
            }
            animationDrawable.selectDrawable(animationDrawable.getNumberOfFrames() - 1);
        }
    }

    public void setRouteSelector(C1266cz c1266cz) {
        if (c1266cz != null) {
            if (this.f1257c.equals(c1266cz)) {
                return;
            }
            if (this.f1259f) {
                if (!this.f1257c.m2927f()) {
                    this.f1255a.m2396o(this.f1256b);
                }
                if (!c1266cz.m2927f()) {
                    this.f1255a.m2410a(c1266cz, this.f1256b);
                }
            }
            this.f1257c = c1266cz;
            m6315b();
            return;
        }
        throw new IllegalArgumentException("selector must not be null");
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        this.f1260g = i;
        m6314c();
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1262j;
    }
}
