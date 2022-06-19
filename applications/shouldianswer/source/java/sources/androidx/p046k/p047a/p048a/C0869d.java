package androidx.p046k.p047a.p048a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.CycleInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import androidx.p033f.p034a.p035a.C0694a;
import androidx.p033f.p034a.p035a.C0695b;
import androidx.p033f.p034a.p035a.C0696c;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.k.a.a.d */
/* loaded from: classes-dex2jar.jar:androidx/k/a/a/d.class */
public class C0869d {
    /* renamed from: a */
    public static Interpolator m5206a(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return AnimationUtils.loadInterpolator(context, i);
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                if (i == 17563663) {
                    return new C0694a();
                }
                if (i == 17563661) {
                    return new C0695b();
                }
                if (i == 17563662) {
                    return new C0696c();
                }
                XmlResourceParser animation = context.getResources().getAnimation(i);
                Interpolator m5205a = m5205a(context, context.getResources(), context.getTheme(), animation);
                if (animation != null) {
                    animation.close();
                }
                return m5205a;
            } catch (IOException e) {
                StringBuilder sb = new StringBuilder();
                sb.append("Can't load animation resource ID #0x");
                sb.append(Integer.toHexString(i));
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(sb.toString());
                notFoundException.initCause(e);
                throw notFoundException;
            } catch (XmlPullParserException e2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Can't load animation resource ID #0x");
                sb2.append(Integer.toHexString(i));
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException(sb2.toString());
                notFoundException2.initCause(e2);
                throw notFoundException2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }

    /* renamed from: a */
    private static Interpolator m5205a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser) {
        int depth = xmlPullParser.getDepth();
        animationInterpolatorC0873g animationinterpolatorc0873g = null;
        while (true) {
            int next = xmlPullParser.next();
            if ((next != 3 || xmlPullParser.getDepth() > depth) && next != 1) {
                if (next == 2) {
                    AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
                    String name = xmlPullParser.getName();
                    if (name.equals("linearInterpolator")) {
                        animationinterpolatorc0873g = new LinearInterpolator();
                    } else if (name.equals("accelerateInterpolator")) {
                        animationinterpolatorc0873g = new AccelerateInterpolator(context, asAttributeSet);
                    } else if (name.equals("decelerateInterpolator")) {
                        animationinterpolatorc0873g = new DecelerateInterpolator(context, asAttributeSet);
                    } else if (name.equals("accelerateDecelerateInterpolator")) {
                        animationinterpolatorc0873g = new AccelerateDecelerateInterpolator();
                    } else if (name.equals("cycleInterpolator")) {
                        animationinterpolatorc0873g = new CycleInterpolator(context, asAttributeSet);
                    } else if (name.equals("anticipateInterpolator")) {
                        animationinterpolatorc0873g = new AnticipateInterpolator(context, asAttributeSet);
                    } else if (name.equals("overshootInterpolator")) {
                        animationinterpolatorc0873g = new OvershootInterpolator(context, asAttributeSet);
                    } else if (name.equals("anticipateOvershootInterpolator")) {
                        animationinterpolatorc0873g = new AnticipateOvershootInterpolator(context, asAttributeSet);
                    } else if (name.equals("bounceInterpolator")) {
                        animationinterpolatorc0873g = new BounceInterpolator();
                    } else if (!name.equals("pathInterpolator")) {
                        throw new RuntimeException("Unknown interpolator name: " + xmlPullParser.getName());
                    } else {
                        animationinterpolatorc0873g = new animationInterpolatorC0873g(context, asAttributeSet, xmlPullParser);
                    }
                }
            }
        }
        return animationinterpolatorc0873g;
    }
}
