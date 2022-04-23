package com.android.contacts.i;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/android/contacts/i/a.class */
public final class a extends com.asus.toolpanel.a {
    private static int g;
    private static int h;
    private static int i;
    private static int j;
    private static float k;
    private static Bitmap l;
    private static Bitmap m;
    private static Bitmap n;
    private static Bitmap o;
    private static Bitmap p;
    private static Bitmap q;
    private static Bitmap r;
    private static Bitmap s;
    private static Bitmap t;
    private static int u;
    private static int v;
    private static int w;
    private static final Paint x = new Paint();
    private static final Rect y = new Rect();
    private static final char[] z = new char[1];
    private String A;
    private String B;
    private boolean C;
    private Resources D;
    private final String e = "LetterTileDrawable";

    /* renamed from: a  reason: collision with root package name */
    public int f1435a = 1;

    /* renamed from: b  reason: collision with root package name */
    public float f1436b = 1.0f;
    public float c = 0.0f;
    public boolean d = false;
    private final Paint f = new Paint();

    public a(Resources resources, boolean z2) {
        this.C = false;
        this.f.setFilterBitmap(true);
        this.f.setDither(true);
        this.D = resources;
        this.C = z2;
        if (h == 0) {
            g = resources.getColor(2131034379);
            j = resources.getColor(2131034181);
            i = resources.getColor(2131034381);
            h = resources.getColor(2131034382);
            k = resources.getFraction(2131100233, 1, 1);
            u = resources.getColor(2131034380);
            w = resources.getColor(2131034153);
            v = resources.getColor(2131034153);
            x.setTypeface(Typeface.create("sans-serif-medium", 0));
            x.setTextAlign(Paint.Align.CENTER);
            x.setAntiAlias(true);
        }
    }

    public static void a() {
        l = null;
        m = null;
        n = null;
        o = null;
        p = null;
        q = null;
        r = null;
        s = null;
        t = null;
    }

    private void b(int i2) {
        switch (i2) {
            case 1:
                l = BitmapFactory.decodeResource(this.D, 2131165321);
                t = BitmapFactory.decodeResource(this.D, 2131165322);
                return;
            case 2:
                m = BitmapFactory.decodeResource(this.D, 2131165288);
                return;
            case 3:
                n = BitmapFactory.decodeResource(this.D, 2131165300);
                return;
            case 4:
                o = BitmapFactory.decodeResource(this.D, 2131165279);
                return;
            case 5:
                p = BitmapFactory.decodeResource(this.D, 2131165284);
                return;
            case 6:
                q = BitmapFactory.decodeResource(this.D, 2131165286);
                return;
            case 7:
                r = BitmapFactory.decodeResource(this.D, 2131165452);
                return;
            case 8:
                s = BitmapFactory.decodeResource(this.D, 2131165878);
                return;
            default:
                l = BitmapFactory.decodeResource(this.D, 2131165321);
                t = BitmapFactory.decodeResource(this.D, 2131165322);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.toolpanel.a
    public final void a(Bitmap bitmap, int i2, int i3, Canvas canvas) {
        int min;
        Rect copyBounds = copyBounds();
        if (this.f1435a == 3) {
            int min2 = ((int) ((this.f1436b * Math.min(copyBounds.width(), copyBounds.height())) / 2.0f)) / 2;
            if (!this.C) {
                this.f.setColorFilter(new PorterDuffColorFilter(j, PorterDuff.Mode.SRC_ATOP));
                min = min2;
            } else if (com.android.contacts.skin.a.b()) {
                this.f.setColorFilter(new PorterDuffColorFilter(w, PorterDuff.Mode.SRC_ATOP));
                min = min2;
            } else {
                min = min2;
                if (com.android.contacts.skin.a.c()) {
                    this.f.setColorFilter(new PorterDuffColorFilter(com.android.contacts.skin.a.a(3), PorterDuff.Mode.SRC_ATOP));
                    min = min2;
                }
            }
        } else {
            min = (int) ((this.f1436b * Math.min(copyBounds.width(), copyBounds.height())) / 2.0f);
        }
        copyBounds.set(copyBounds.centerX() - min, (int) ((copyBounds.centerY() - min) + (this.c * copyBounds.height())), copyBounds.centerX() + min, (int) (min + copyBounds.centerY() + (this.c * copyBounds.height())));
        y.set(0, 0, i2, i3);
        canvas.drawBitmap(bitmap, y, copyBounds, this.f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.asus.toolpanel.a
    public final void a(Canvas canvas) {
        Bitmap bitmap;
        Paint paint = x;
        String str = this.B;
        paint.setColor((str == null || !str.equals("gruop_detail_dark")) ? this.C ? com.android.contacts.skin.a.b() ? u : com.android.contacts.skin.a.a(0) : g : h);
        if (!this.C || !com.android.contacts.skin.a.c()) {
            x.setAlpha(this.f.getAlpha());
        } else {
            x.setAlpha(153);
        }
        Rect bounds = getBounds();
        int min = Math.min(bounds.width(), bounds.height());
        if (this.d) {
            canvas.drawCircle(bounds.centerX(), bounds.centerY(), min / 2, x);
        } else {
            canvas.drawRect(bounds, x);
        }
        if (!TextUtils.isEmpty(this.A)) {
            char charAt = this.A.charAt(0);
            if (('A' <= charAt && charAt <= 'Z') || ('a' <= charAt && charAt <= 'z')) {
                z[0] = Character.toUpperCase(this.A.charAt(0));
                x.setTextSize(min * this.f1436b * k);
                x.getTextBounds(z, 0, 1, y);
                if (!this.C) {
                    x.setColor(i);
                } else if (com.android.contacts.skin.a.b()) {
                    x.setColor(v);
                } else if (com.android.contacts.skin.a.c()) {
                    x.setColor(com.android.contacts.skin.a.a(3));
                }
                canvas.drawText(z, 0, 1, bounds.centerX(), (y.height() / 2) + bounds.centerY() + (bounds.height() * this.c), x);
                return;
            }
        }
        int i2 = this.f1435a;
        switch (i2) {
            case 1:
                if (l == null) {
                    b(i2);
                }
                if (!this.C) {
                    bitmap = l;
                    break;
                } else {
                    bitmap = t;
                    break;
                }
            case 2:
                if (m == null) {
                    b(i2);
                }
                bitmap = m;
                break;
            case 3:
                if (n == null) {
                    b(i2);
                }
                bitmap = n;
                break;
            case 4:
                if (o == null) {
                    b(i2);
                }
                bitmap = o;
                break;
            case 5:
                if (p == null) {
                    b(i2);
                }
                bitmap = p;
                break;
            case 6:
                if (q == null) {
                    b(i2);
                }
                bitmap = q;
                break;
            case 7:
                if (r == null) {
                    b(i2);
                }
                bitmap = r;
                break;
            case 8:
                if (s == null) {
                    b(i2);
                }
                bitmap = s;
                break;
            default:
                if (l == null) {
                    b(i2);
                }
                if (!this.C) {
                    bitmap = l;
                    break;
                } else {
                    bitmap = t;
                    break;
                }
        }
        if (this.d) {
            Path path = new Path();
            path.addCircle(bounds.centerX(), bounds.centerY(), min / 2, Path.Direction.CCW);
            canvas.clipPath(path);
        }
        a(bitmap, bitmap.getWidth(), bitmap.getHeight(), canvas);
    }

    public final void a(String str, String str2) {
        this.A = str;
        this.B = str2;
    }
}
