package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.C0118R;
import com.tenor.android.core.constant.StringConstant;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/coordinatorlayout/widget/CoordinatorLayout$f.class */
public class CoordinatorLayout$f extends ViewGroup.MarginLayoutParams {

    /* renamed from: a */
    public CoordinatorLayout$c f675a;

    /* renamed from: b */
    public boolean f676b;

    /* renamed from: c */
    public int f677c;

    /* renamed from: d */
    public int f678d;

    /* renamed from: e */
    public int f679e;

    /* renamed from: f */
    public int f680f;

    /* renamed from: g */
    public int f681g;

    /* renamed from: h */
    public int f682h;

    /* renamed from: i */
    public int f683i;

    /* renamed from: j */
    public int f684j;

    /* renamed from: k */
    public View f685k;

    /* renamed from: l */
    public View f686l;

    /* renamed from: m */
    public boolean f687m;

    /* renamed from: n */
    public boolean f688n;

    /* renamed from: o */
    public boolean f689o;

    /* renamed from: p */
    public boolean f690p;

    /* renamed from: q */
    public final Rect f691q;

    public CoordinatorLayout$f(int i, int i2) {
        super(i, i2);
        this.f676b = false;
        this.f677c = 0;
        this.f678d = 0;
        this.f679e = -1;
        this.f680f = -1;
        this.f681g = 0;
        this.f682h = 0;
        this.f691q = new Rect();
    }

    public CoordinatorLayout$f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        CoordinatorLayout$c coordinatorLayout$c;
        String str;
        this.f676b = false;
        this.f677c = 0;
        this.f678d = 0;
        this.f679e = -1;
        this.f680f = -1;
        this.f681g = 0;
        this.f682h = 0;
        this.f691q = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0118R.styleable.CoordinatorLayout_Layout);
        this.f677c = obtainStyledAttributes.getInteger(C0118R.styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
        this.f680f = obtainStyledAttributes.getResourceId(C0118R.styleable.CoordinatorLayout_Layout_layout_anchor, -1);
        this.f678d = obtainStyledAttributes.getInteger(C0118R.styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
        this.f679e = obtainStyledAttributes.getInteger(C0118R.styleable.CoordinatorLayout_Layout_layout_keyline, -1);
        this.f681g = obtainStyledAttributes.getInt(C0118R.styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
        this.f682h = obtainStyledAttributes.getInt(C0118R.styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
        int i = C0118R.styleable.CoordinatorLayout_Layout_layout_behavior;
        boolean hasValue = obtainStyledAttributes.hasValue(i);
        this.f676b = hasValue;
        if (hasValue) {
            String string = obtainStyledAttributes.getString(i);
            String str2 = CoordinatorLayout.u;
            if (TextUtils.isEmpty(string)) {
                coordinatorLayout$c = null;
            } else {
                if (string.startsWith(StringConstant.DOT)) {
                    str = context.getPackageName() + string;
                } else if (string.indexOf(46) >= 0) {
                    str = string;
                } else {
                    String str3 = CoordinatorLayout.u;
                    str = string;
                    if (!TextUtils.isEmpty(str3)) {
                        str = C22128a.m8615h2(str3, '.', string);
                    }
                }
                try {
                    ThreadLocal threadLocal = CoordinatorLayout.w;
                    Map map = (Map) threadLocal.get();
                    Map map2 = map;
                    if (map == null) {
                        map2 = new HashMap();
                        threadLocal.set(map2);
                    }
                    Constructor<?> constructor = (Constructor) map2.get(str);
                    Constructor<?> constructor2 = constructor;
                    if (constructor == null) {
                        constructor2 = Class.forName(str, false, context.getClassLoader()).getConstructor(CoordinatorLayout.v);
                        constructor2.setAccessible(true);
                        map2.put(str, constructor2);
                    }
                    coordinatorLayout$c = (CoordinatorLayout$c) constructor2.newInstance(context, attributeSet);
                } catch (Exception e) {
                    throw new RuntimeException(C22128a.m8543z2("Could not inflate Behavior subclass ", str), e);
                }
            }
            this.f675a = coordinatorLayout$c;
        }
        obtainStyledAttributes.recycle();
        CoordinatorLayout$c coordinatorLayout$c2 = this.f675a;
        if (coordinatorLayout$c2 != null) {
            coordinatorLayout$c2.m43016f(this);
        }
    }

    public CoordinatorLayout$f(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f676b = false;
        this.f677c = 0;
        this.f678d = 0;
        this.f679e = -1;
        this.f680f = -1;
        this.f681g = 0;
        this.f682h = 0;
        this.f691q = new Rect();
    }

    public CoordinatorLayout$f(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f676b = false;
        this.f677c = 0;
        this.f678d = 0;
        this.f679e = -1;
        this.f680f = -1;
        this.f681g = 0;
        this.f682h = 0;
        this.f691q = new Rect();
    }

    public CoordinatorLayout$f(CoordinatorLayout$f coordinatorLayout$f) {
        super((ViewGroup.MarginLayoutParams) coordinatorLayout$f);
        this.f676b = false;
        this.f677c = 0;
        this.f678d = 0;
        this.f679e = -1;
        this.f680f = -1;
        this.f681g = 0;
        this.f682h = 0;
        this.f691q = new Rect();
    }

    /* renamed from: a */
    public boolean m42995a(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f689o;
            }
            return false;
        }
        return this.f688n;
    }

    /* renamed from: b */
    public void m42994b(CoordinatorLayout$c coordinatorLayout$c) {
        CoordinatorLayout$c coordinatorLayout$c2 = this.f675a;
        if (coordinatorLayout$c2 != coordinatorLayout$c) {
            if (coordinatorLayout$c2 != null) {
                coordinatorLayout$c2.m43013i();
            }
            this.f675a = coordinatorLayout$c;
            this.f676b = true;
            if (coordinatorLayout$c == null) {
                return;
            }
            coordinatorLayout$c.m43016f(this);
        }
    }

    /* renamed from: c */
    public void m42993c(int i, boolean z) {
        if (i == 0) {
            this.f688n = z;
        } else if (i != 1) {
        } else {
            this.f689o = z;
        }
    }
}
