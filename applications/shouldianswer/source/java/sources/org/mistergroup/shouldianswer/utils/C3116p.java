package org.mistergroup.shouldianswer.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.flexbox.FlexItem;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.makeramen.roundedimageview.RoundedImageView;
import java.util.Random;
import kotlin.TypeCastException;
import kotlin.p081e.p083b.C1694h;
import org.mistergroup.shouldianswer.model.C2385ac;
/* renamed from: org.mistergroup.shouldianswer.utils.p */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/p.class */
public final class C3116p {

    /* renamed from: a */
    public static final C3116p f9183a = new C3116p();

    /* renamed from: b */
    private static final SparseArray<Bitmap> f9184b = new SparseArray<>();

    private C3116p() {
    }

    /* renamed from: a */
    private final Bitmap m109a(int i) {
        try {
            Bitmap bitmap = f9184b.get(i);
            if (bitmap != null) {
                return bitmap;
            }
            Bitmap createBitmap = Bitmap.createBitmap(3, 3, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            Paint paint = new Paint();
            paint.setColor(i);
            paint.setAlpha(255);
            float f = 3;
            canvas.drawRect(FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, f, f, paint);
            f9184b.put(i, createBitmap);
            return createBitmap;
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            return null;
        }
    }

    /* renamed from: c */
    private final int m104c(String str) {
        if (C3133w.f9268a.m30a(str)) {
            return -16777216;
        }
        Random random = new Random(str.hashCode());
        return Color.rgb((random.nextInt(256) / 3) + 100, (random.nextInt(256) / 3) + 100, (random.nextInt(256) / 3) + 100);
    }

    /* renamed from: a */
    public final Bitmap m107a(String str) {
        C1694h.m3117b(str, "text");
        return m109a(m104c(str));
    }

    /* renamed from: a */
    public final void m108a(Bitmap bitmap, String str, RoundedImageView roundedImageView, AppCompatTextView appCompatTextView) {
        C1694h.m3117b(roundedImageView, "imageView");
        C1694h.m3117b(appCompatTextView, "textView");
        if (bitmap != null) {
            roundedImageView.setImageBitmap(bitmap);
            appCompatTextView.setVisibility(8);
        } else if (str == null) {
        } else {
            roundedImageView.setImageBitmap(f9183a.m107a(str));
            appCompatTextView.setText(f9183a.m105b(str));
            appCompatTextView.setVisibility(0);
        }
    }

    /* renamed from: a */
    public final void m106a(C2385ac c2385ac, RoundedImageView roundedImageView, AppCompatTextView appCompatTextView) {
        C1694h.m3117b(c2385ac, "phoneContact");
        C1694h.m3117b(roundedImageView, "imageView");
        C1694h.m3117b(appCompatTextView, "textView");
        long m1353d = c2385ac.m1353d();
        Bitmap bitmap = null;
        if (m1353d > 0) {
            bitmap = C3117q.f9185a.m101b(m1353d);
        }
        String m1360b = c2385ac.m1360b();
        if (m1360b == null) {
            C1694h.m3124a();
        }
        m108a(bitmap, m1360b, roundedImageView, appCompatTextView);
    }

    /* renamed from: b */
    public final String m105b(String str) {
        String str2;
        C1694h.m3117b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        if (C3133w.f9268a.m30a(str)) {
            return "";
        }
        String[] split = TextUtils.split(str, " ");
        if (split.length > 1) {
            String str3 = split[0];
            C1694h.m3122a((Object) str3, "ar[0]");
            String str4 = "";
            if (str3.length() > 0) {
                String str5 = split[0];
                C1694h.m3122a((Object) str5, "ar[0]");
                if (str5 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
                str4 = str5.substring(0, 1);
                C1694h.m3122a((Object) str4, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            }
            String str6 = split[1];
            C1694h.m3122a((Object) str6, "ar[1]");
            str2 = str4;
            if (str6.length() > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(str4);
                String str7 = split[1];
                C1694h.m3122a((Object) str7, "ar[1]");
                if (str7 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
                String substring = str7.substring(0, 1);
                C1694h.m3122a((Object) substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                sb.append(substring);
                str2 = sb.toString();
            }
        } else {
            String str8 = split[0];
            C1694h.m3122a((Object) str8, "ar[0]");
            if (str8 == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            str2 = str8.substring(0, 1);
            C1694h.m3122a((Object) str2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        if (str2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        String upperCase = str2.toUpperCase();
        C1694h.m3122a((Object) upperCase, "(this as java.lang.String).toUpperCase()");
        return upperCase;
    }
}
