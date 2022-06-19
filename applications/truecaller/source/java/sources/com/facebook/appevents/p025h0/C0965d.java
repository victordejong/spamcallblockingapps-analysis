package com.facebook.appevents.p025h0;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.facebook.appevents.p026i0.p027n.C1000f;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.ViewAction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import s1.f0.h;
import s1.f0.v;
import s1.z.c.l;
@Metadata(d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\bÁ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\tH\u0007J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\tH\u0007J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\tH\u0002J\u001e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00072\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J$\u0010\f\u001a\u00020\r2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0007J\u0018\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0014"}, d2 = {"Lcom/facebook/appevents/aam/MetadataMatcher;", "", "()V", "MAX_INDICATOR_LENGTH", "", "getAroundViewIndicators", "", "", ViewAction.VIEW, "Landroid/view/View;", "getCurrentViewIndicators", "getTextIndicators", "matchIndicator", "", "indicator", "keys", "indicators", "matchValue", "text", "rule", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.h0.d */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/h0/d.class */
public final class C0965d {

    /* renamed from: a */
    public static final C0965d f2658a = new C0965d();

    /* renamed from: a */
    public static final List<String> m41967a(View view) {
        if (C1220a.m41623b(C0965d.class)) {
            return null;
        }
        try {
            l.e(view, ViewAction.VIEW);
            ArrayList arrayList = new ArrayList();
            C1000f c1000f = C1000f.f2756a;
            ViewGroup m41921i = C1000f.m41921i(view);
            if (m41921i != null) {
                for (View view2 : C1000f.m41929a(m41921i)) {
                    if (view != view2) {
                        arrayList.addAll(f2658a.m41965c(view2));
                    }
                }
            }
            return arrayList;
        } catch (Throwable th) {
            C1220a.m41624a(th, C0965d.class);
            return null;
        }
    }

    /* renamed from: b */
    public static final List<String> m41966b(View view) {
        if (C1220a.m41623b(C0965d.class)) {
            return null;
        }
        try {
            l.e(view, ViewAction.VIEW);
            ArrayList<String> arrayList = new ArrayList();
            C1000f c1000f = C1000f.f2756a;
            arrayList.add(C1000f.m41922h(view));
            Object tag = view.getTag();
            if (tag != null) {
                arrayList.add(tag.toString());
            }
            CharSequence contentDescription = view.getContentDescription();
            if (contentDescription != null) {
                arrayList.add(contentDescription.toString());
            }
            try {
                if (view.getId() != -1) {
                    String resourceName = view.getResources().getResourceName(view.getId());
                    l.d(resourceName, "resourceName");
                    Object[] array = new h(StringConstant.SLASH).f(resourceName, 0).toArray(new String[0]);
                    if (array == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                    String[] strArr = (String[]) array;
                    if (strArr.length == 2) {
                        arrayList.add(strArr[1]);
                    }
                }
            } catch (Resources.NotFoundException e) {
            }
            ArrayList arrayList2 = new ArrayList();
            for (String str : arrayList) {
                if ((str.length() > 0) && str.length() <= 100) {
                    String lowerCase = str.toLowerCase();
                    l.d(lowerCase, "(this as java.lang.String).toLowerCase()");
                    arrayList2.add(lowerCase);
                }
            }
            return arrayList2;
        } catch (Throwable th) {
            C1220a.m41624a(th, C0965d.class);
            return null;
        }
    }

    /* renamed from: d */
    public static final boolean m41964d(List<String> list, List<String> list2) {
        boolean z;
        if (C1220a.m41623b(C0965d.class)) {
            return false;
        }
        try {
            l.e(list, "indicators");
            l.e(list2, "keys");
            Iterator<String> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    return false;
                }
                String next = it.next();
                if (!C1220a.m41623b(f2658a)) {
                    Iterator<String> it2 = list2.iterator();
                    do {
                        if (it2.hasNext()) {
                        }
                    } while (!v.B(next, it2.next(), false, 2));
                    z = true;
                }
                z = false;
            } while (!z);
            return true;
        } catch (Throwable th) {
            C1220a.m41624a(th, C0965d.class);
            return false;
        }
    }

    /* renamed from: c */
    public final List<String> m41965c(View view) {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            if (view instanceof EditText) {
                return arrayList;
            }
            if (!(view instanceof TextView)) {
                C1000f c1000f = C1000f.f2756a;
                for (View view2 : C1000f.m41929a(view)) {
                    arrayList.addAll(m41965c(view2));
                }
                return arrayList;
            }
            String obj = ((TextView) view).getText().toString();
            if ((obj.length() > 0) && obj.length() < 100) {
                String lowerCase = obj.toLowerCase();
                l.d(lowerCase, "(this as java.lang.String).toLowerCase()");
                arrayList.add(lowerCase);
            }
            return arrayList;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }
}
