package p020b.p074t.p075a.p076a;

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
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p020b.p062n.p063a.p064a.C1753a;
import p020b.p062n.p063a.p064a.C1754b;
import p020b.p062n.p063a.p064a.C1755c;
/* renamed from: b.t.a.a.d */
/* loaded from: classes-dex2jar.jar:b/t/a/a/d.class */
public class C1798d {
    /* renamed from: a */
    private static Interpolator m28882a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser) {
        int depth = xmlPullParser.getDepth();
        animationInterpolatorC1802g animationinterpolatorc1802g = null;
        while (true) {
            int next = xmlPullParser.next();
            if ((next != 3 || xmlPullParser.getDepth() > depth) && next != 1) {
                if (next == 2) {
                    AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
                    String name = xmlPullParser.getName();
                    if (name.equals("linearInterpolator")) {
                        animationinterpolatorc1802g = new LinearInterpolator();
                    } else if (name.equals("accelerateInterpolator")) {
                        animationinterpolatorc1802g = new AccelerateInterpolator(context, asAttributeSet);
                    } else if (name.equals("decelerateInterpolator")) {
                        animationinterpolatorc1802g = new DecelerateInterpolator(context, asAttributeSet);
                    } else if (name.equals("accelerateDecelerateInterpolator")) {
                        animationinterpolatorc1802g = new AccelerateDecelerateInterpolator();
                    } else if (name.equals("cycleInterpolator")) {
                        animationinterpolatorc1802g = new CycleInterpolator(context, asAttributeSet);
                    } else if (name.equals("anticipateInterpolator")) {
                        animationinterpolatorc1802g = new AnticipateInterpolator(context, asAttributeSet);
                    } else if (name.equals("overshootInterpolator")) {
                        animationinterpolatorc1802g = new OvershootInterpolator(context, asAttributeSet);
                    } else if (name.equals("anticipateOvershootInterpolator")) {
                        animationinterpolatorc1802g = new AnticipateOvershootInterpolator(context, asAttributeSet);
                    } else if (name.equals("bounceInterpolator")) {
                        animationinterpolatorc1802g = new BounceInterpolator();
                    } else if (!name.equals("pathInterpolator")) {
                        throw new RuntimeException("Unknown interpolator name: " + xmlPullParser.getName());
                    } else {
                        animationinterpolatorc1802g = new animationInterpolatorC1802g(context, asAttributeSet, xmlPullParser);
                    }
                }
            }
        }
        return animationinterpolatorc1802g;
    }

    /* renamed from: b */
    public static Interpolator m28881b(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return AnimationUtils.loadInterpolator(context, i);
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                if (i == 17563663) {
                    return new C1753a();
                }
                if (i == 17563661) {
                    return new C1754b();
                }
                if (i == 17563662) {
                    return new C1755c();
                }
                XmlResourceParser animation = context.getResources().getAnimation(i);
                Interpolator m28882a = m28882a(context, context.getResources(), context.getTheme(), animation);
                if (animation != null) {
                    animation.close();
                }
                return m28882a;
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
}
