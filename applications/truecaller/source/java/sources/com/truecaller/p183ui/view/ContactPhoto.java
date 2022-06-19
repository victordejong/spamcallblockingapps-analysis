package com.truecaller.p183ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.telephony.TelephonyManager;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.data.entity.Contact;
import com.truecaller.log.AssertionUtil;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.p1476r.AbstractC22590g;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1114o5.C19017e1;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p682e.C12864a2;
/* renamed from: com.truecaller.ui.view.ContactPhoto */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/view/ContactPhoto.class */
public class ContactPhoto extends AppCompatImageView {

    /* renamed from: d */
    public Object f15883d;

    /* renamed from: e */
    public Object f15884e;

    /* renamed from: f */
    public AbstractC22590g<Drawable> f15885f;

    /* renamed from: h */
    public int f15887h;

    /* renamed from: i */
    public boolean f15888i;

    /* renamed from: j */
    public boolean f15889j;

    /* renamed from: k */
    public boolean f15890k;

    /* renamed from: l */
    public boolean f15891l;

    /* renamed from: m */
    public int f15892m;

    /* renamed from: n */
    public int f15893n;

    /* renamed from: o */
    public int f15894o;

    /* renamed from: p */
    public final int f15895p;

    /* renamed from: q */
    public final int f15896q;

    /* renamed from: r */
    public final int f15897r;

    /* renamed from: s */
    public final int f15898s;

    /* renamed from: t */
    public final int f15899t;

    /* renamed from: u */
    public final int f15900u;

    /* renamed from: v */
    public final Paint f15901v;

    /* renamed from: w */
    public final Paint f15902w;

    /* renamed from: x */
    public int f15903x;

    /* renamed from: c */
    public final RectF f15882c = new RectF();

    /* renamed from: g */
    public final SparseArray<Drawable> f15886g = new SparseArray<>();

    public ContactPhoto(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f15894o = isInEditMode() ? -12303292 : C19291g.m13612L(getContext(), C2752R.attr.theme_avatarBackgroundColor);
        this.f15896q = isInEditMode() ? -65536 : C19291g.m13612L(getContext(), C2752R.attr.theme_avatarSpamBackgroundColor);
        this.f15897r = isInEditMode() ? -16776961 : C19291g.m13612L(getContext(), 2130970356);
        Object obj = C26467a.f74235a;
        this.f15895p = C26467a.C26471d.m1787a(context, C2752R.color.premium_gold_avatar_background_all_themes);
        this.f15898s = isInEditMode() ? -7829368 : C19291g.m13612L(getContext(), C2752R.attr.theme_avatarForegroundColor);
        this.f15899t = isInEditMode() ? -65536 : C19291g.m13612L(getContext(), C2752R.attr.theme_avatarSpamForegroundColor);
        this.f15900u = isInEditMode() ? -16776961 : C19291g.m13612L(getContext(), 2130970334);
        Paint paint = new Paint(1);
        this.f15901v = paint;
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint(1);
        this.f15902w = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setColor(-1);
        this.f15903x = 0;
    }

    /* renamed from: d */
    public final Drawable m34481d(int i) {
        Drawable drawable = this.f15886g.get(i);
        Drawable drawable2 = drawable;
        if (drawable == null) {
            Context context = getContext();
            Object obj = C26467a.f74235a;
            drawable2 = C26467a.C26470c.m1789b(context, i).mutate();
            m34480e(drawable2);
            this.f15886g.put(i, drawable2);
        }
        return drawable2;
    }

    /* renamed from: e */
    public final void m34480e(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        int min = Math.min(drawable.getIntrinsicWidth(), getWidth()) / 2;
        int min2 = Math.min(drawable.getIntrinsicHeight(), getHeight()) / 2;
        drawable.setBounds(-min, -min2, min, min2);
    }

    /* renamed from: f */
    public void m34479f(Object obj, Object obj2) {
        Drawable drawable;
        boolean z;
        this.f15883d = obj;
        this.f15884e = obj2;
        if (this.f15882c.width() == 0.0f || this.f15882c.height() == 0.0f) {
            return;
        }
        C17891a1.C17902k.m15664K1(getContext()).m8412m(this);
        this.f15890k = false;
        if (obj instanceof Integer) {
            drawable = C8605o.m28236d(getContext(), ((Integer) obj).intValue());
        } else {
            drawable = obj;
            if (obj instanceof String) {
                String str = (String) obj;
                try {
                    Context context = getContext();
                    String str2 = C19017e1.f53143b;
                    if (str2 != null && str2.length() == 0) {
                        C19017e1.f53143b = ((TelephonyManager) context.getSystemService(AnalyticsConstants.PHONE)).getVoiceMailNumber();
                    }
                    String str3 = C19017e1.f53143b;
                    z = false;
                    if (str3 != null) {
                        z = false;
                        if (str3.equals(str)) {
                            z = true;
                        }
                    }
                } catch (SecurityException e) {
                    AssertionUtil.shouldNeverHappen(e, new String[0]);
                    z = false;
                }
                drawable = obj;
                if (z) {
                    this.f15890k = true;
                    drawable = obj;
                }
            }
        }
        invalidate();
        if (drawable instanceof Drawable) {
            setScaleType(ImageView.ScaleType.FIT_XY);
            setImageDrawable((Drawable) drawable);
            return;
        }
        Uri m22592B = drawable instanceof Contact ? C12864a2.m22592B((Contact) drawable, true) : drawable instanceof String ? Uri.parse((String) drawable) : drawable instanceof Uri ? (Uri) drawable : null;
        setScaleType(ImageView.ScaleType.FIT_CENTER);
        setImageDrawable(null);
        if (m22592B == null) {
            return;
        }
        C22234h<Drawable> m15653O0 = C17891a1.C17902k.m15653O0(C17891a1.C17902k.m15664K1(getContext()), m22592B, Integer.valueOf(this.f15894o));
        AbstractC22590g<Drawable> abstractC22590g = this.f15885f;
        C22234h<Drawable> c22234h = m15653O0;
        if (abstractC22590g != null) {
            c22234h = m15653O0.mo8426P(abstractC22590g);
        }
        c22234h.m8427O(this);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        Drawable drawable;
        int width = getWidth();
        int height = getHeight();
        if (!(isActivated() || getDrawable() == null)) {
            super.onDraw(canvas);
        } else {
            int i = this.f15887h;
            if (i != 0) {
                drawable = m34481d(i);
            } else if (isActivated()) {
                drawable = m34481d(C2752R.C2753drawable.ic_action_done);
            } else if (this.f15889j) {
                drawable = m34481d(C2752R.C2753drawable.ic_group_avatar);
            } else if (this.f15890k) {
                drawable = m34481d(C2752R.C2753drawable.ic_voice_mail_avatar);
            } else {
                if (this.f15891l) {
                    drawable = m34481d(C2752R.C2753drawable.ic_gold_avatar);
                } else {
                    int i2 = this.f15903x;
                    drawable = m34481d(i2 != 0 ? i2 : 2131231622);
                }
                drawable.setBounds((-width) / 2, (-height) / 2, width / 2, height / 2);
            }
            if (isActivated()) {
                this.f15901v.setColor(this.f15897r);
                drawable.setColorFilter(this.f15900u, PorterDuff.Mode.SRC_IN);
            } else if (this.f15888i) {
                this.f15901v.setColor(this.f15896q);
                drawable.setColorFilter(this.f15899t, PorterDuff.Mode.SRC_IN);
            } else if (this.f15891l) {
                this.f15901v.setColor(this.f15895p);
                drawable.setColorFilter(null);
            } else {
                boolean z = false;
                if (this.f15903x != 0) {
                    z = true;
                }
                if (!z) {
                    this.f15901v.setColor(this.f15894o);
                    drawable.setColorFilter(this.f15898s, PorterDuff.Mode.SRC_IN);
                }
            }
            int save = canvas.save();
            canvas.translate(width / 2, height / 2);
            canvas.drawCircle(0.0f, 0.0f, Math.min(width, height) / 2, this.f15901v);
            drawable.draw(canvas);
            canvas.restoreToCount(save);
        }
        int i3 = this.f15892m;
        if (i3 != 0) {
            int save2 = canvas.save();
            Drawable m34481d = m34481d(i3);
            int i4 = ((int) (width / 3.0f)) / 2;
            int i5 = -i4;
            m34481d.setBounds(i5, i5, i4, i4);
            canvas.translate(width - i4, height - i4);
            m34481d.draw(canvas);
            canvas.restoreToCount(save2);
        } else if (this.f15893n == 0) {
        } else {
            int save3 = canvas.save();
            Drawable m34481d2 = m34481d(this.f15893n == 1 ? 2131231790 : 2131232383);
            float f = width;
            int i6 = ((int) (f / 3.0f)) / 2;
            int i7 = ((int) (f / (this.f15893n == 1 ? 4.2f : 3.6f))) / 2;
            int i8 = -i7;
            m34481d2.setBounds(i8, i8, i7, i7);
            canvas.translate(width - i6, height - i6);
            m34481d2.setColorFilter(this.f15900u, PorterDuff.Mode.SRC_IN);
            canvas.drawCircle(0.0f, 0.0f, i6, this.f15902w);
            m34481d2.draw(canvas);
            canvas.restoreToCount(save3);
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        if (isInEditMode()) {
            setScaleType(ImageView.ScaleType.CENTER);
            setImageResource(C2752R.C2753drawable.ic_avatar_default);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f15882c.set(0.0f, 0.0f, i, i2);
        if (!isInEditMode()) {
            m34479f(this.f15883d, this.f15884e);
        }
        for (int i5 = 0; i5 < this.f15886g.size(); i5++) {
            m34480e(this.f15886g.valueAt(i5));
        }
    }

    public void setBackupBadge(int i) {
        this.f15893n = i;
        invalidate();
    }

    public void setCallback(AbstractC22590g<Drawable> abstractC22590g) {
        this.f15885f = abstractC22590g;
    }

    public void setContactBadgeDrawable(int i) {
        this.f15892m = i;
        invalidate();
    }

    public void setDrawableRes(int i) {
        this.f15887h = i;
    }

    public void setIsGold(boolean z) {
        this.f15891l = z;
        invalidate();
    }

    public void setIsGroup(boolean z) {
        this.f15889j = z;
        invalidate();
    }

    public void setIsSpam(boolean z) {
        this.f15888i = z;
        invalidate();
    }

    public void setPrivateAvatar(int i) {
        this.f15903x = i;
        invalidate();
    }
}
