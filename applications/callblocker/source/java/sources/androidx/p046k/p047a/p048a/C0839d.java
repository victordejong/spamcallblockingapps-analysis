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
import androidx.p032e.p033a.p034a.C0648a;
import androidx.p032e.p033a.p034a.C0649b;
import androidx.p032e.p033a.p034a.C0650c;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.k.a.a.d */
/* loaded from: classes-dex2jar.jar:androidx/k/a/a/d.class */
public class C0839d {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v58, types: [android.view.animation.Interpolator] */
    /* renamed from: a */
    public static Interpolator m19319a(Context context, int i) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 21) {
            obj = AnimationUtils.loadInterpolator(context, i);
        } else {
            Object obj2 = null;
            XmlResourceParser xmlResourceParser = null;
            XmlResourceParser xmlResourceParser2 = null;
            try {
                try {
                    if (i == 17563663) {
                        obj = new C0648a();
                        if (0 != 0) {
                            throw new NullPointerException();
                        }
                    } else if (i == 17563661) {
                        obj = new C0649b();
                        if (0 != 0) {
                            throw new NullPointerException();
                        }
                    } else if (i == 17563662) {
                        obj = new C0650c();
                        if (0 != 0) {
                            throw new NullPointerException();
                        }
                    } else {
                        XmlResourceParser animation = context.getResources().getAnimation(i);
                        xmlResourceParser2 = animation;
                        xmlResourceParser = animation;
                        obj2 = m19318a(context, context.getResources(), context.getTheme(), animation);
                        obj = obj2;
                        if (animation != null) {
                            animation.close();
                            obj = obj2;
                        }
                    }
                } catch (IOException e) {
                    XmlResourceParser xmlResourceParser3 = xmlResourceParser;
                    XmlResourceParser xmlResourceParser4 = xmlResourceParser;
                    XmlResourceParser xmlResourceParser5 = xmlResourceParser;
                    Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                    XmlResourceParser xmlResourceParser6 = xmlResourceParser;
                    notFoundException.initCause(e);
                    XmlResourceParser xmlResourceParser7 = xmlResourceParser;
                    throw notFoundException;
                } catch (XmlPullParserException e2) {
                    XmlResourceParser xmlResourceParser8 = xmlResourceParser2;
                    XmlResourceParser xmlResourceParser9 = xmlResourceParser2;
                    XmlResourceParser xmlResourceParser10 = xmlResourceParser2;
                    Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(i));
                    XmlResourceParser xmlResourceParser11 = xmlResourceParser2;
                    notFoundException2.initCause(e2);
                    XmlResourceParser xmlResourceParser12 = xmlResourceParser2;
                    throw notFoundException2;
                }
            } catch (Throwable th) {
                if (obj2 != null) {
                    obj2.close();
                }
                throw th;
            }
        }
        return obj;
    }

    /* renamed from: a */
    private static Interpolator m19318a(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser) {
        animationInterpolatorC0843g animationinterpolatorc0843g = null;
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next != 3 || xmlPullParser.getDepth() > depth) && next != 1) {
                if (next == 2) {
                    AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
                    String name = xmlPullParser.getName();
                    if (name.equals("linearInterpolator")) {
                        animationinterpolatorc0843g = new LinearInterpolator();
                    } else if (name.equals("accelerateInterpolator")) {
                        animationinterpolatorc0843g = new AccelerateInterpolator(context, asAttributeSet);
                    } else if (name.equals("decelerateInterpolator")) {
                        animationinterpolatorc0843g = new DecelerateInterpolator(context, asAttributeSet);
                    } else if (name.equals("accelerateDecelerateInterpolator")) {
                        animationinterpolatorc0843g = new AccelerateDecelerateInterpolator();
                    } else if (name.equals("cycleInterpolator")) {
                        animationinterpolatorc0843g = new CycleInterpolator(context, asAttributeSet);
                    } else if (name.equals("anticipateInterpolator")) {
                        animationinterpolatorc0843g = new AnticipateInterpolator(context, asAttributeSet);
                    } else if (name.equals("overshootInterpolator")) {
                        animationinterpolatorc0843g = new OvershootInterpolator(context, asAttributeSet);
                    } else if (name.equals("anticipateOvershootInterpolator")) {
                        animationinterpolatorc0843g = new AnticipateOvershootInterpolator(context, asAttributeSet);
                    } else if (name.equals("bounceInterpolator")) {
                        animationinterpolatorc0843g = new BounceInterpolator();
                    } else if (!name.equals("pathInterpolator")) {
                        throw new RuntimeException("Unknown interpolator name: " + xmlPullParser.getName());
                    } else {
                        animationinterpolatorc0843g = new animationInterpolatorC0843g(context, asAttributeSet, xmlPullParser);
                    }
                }
            }
        }
        return animationinterpolatorc0843g;
    }
}
