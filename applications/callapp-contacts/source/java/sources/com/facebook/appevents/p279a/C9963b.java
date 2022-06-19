package com.facebook.appevents.p279a;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.facebook.appevents.p280b.p281a.C9981f;
import com.facebook.internal.p299b.p301b.C10249a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.facebook.appevents.a.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/a/b.class */
public final class C9963b {

    /* renamed from: a */
    private static final String f33142a = "com.facebook.appevents.a.b";

    C9963b() {
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00bb -> B:19:0x0070). Please submit an issue!!! */
    /* renamed from: a */
    public static List<String> m23743a(View view) {
        if (C10249a.m23108a(C9963b.class)) {
            return null;
        }
        try {
            ArrayList<String> arrayList = new ArrayList();
            arrayList.add(C9981f.m23696f(view));
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
                    String[] split = view.getResources().getResourceName(view.getId()).split("/");
                    if (split.length == 2) {
                        arrayList.add(split[1]);
                    }
                }
            } catch (Resources.NotFoundException e) {
            }
            ArrayList arrayList2 = new ArrayList();
            for (String str : arrayList) {
                if (!str.isEmpty() && str.length() <= 100) {
                    arrayList2.add(str.toLowerCase());
                }
            }
            return arrayList2;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9963b.class);
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m23742a(String str, String str2) {
        if (C10249a.m23108a(C9963b.class)) {
            return false;
        }
        try {
            return str.matches(str2);
        } catch (Throwable th) {
            C10249a.m23106a(th, C9963b.class);
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m23741a(String str, List<String> list) {
        if (C10249a.m23108a(C9963b.class)) {
            return false;
        }
        try {
            Iterator<String> it2 = list.iterator();
            do {
                if (!it2.hasNext()) {
                    return false;
                }
            } while (!str.contains(it2.next()));
            return true;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9963b.class);
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m23740a(List<String> list, List<String> list2) {
        if (C10249a.m23108a(C9963b.class)) {
            return false;
        }
        try {
            Iterator<String> it2 = list.iterator();
            do {
                if (!it2.hasNext()) {
                    return false;
                }
            } while (!m23741a(it2.next(), list2));
            return true;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9963b.class);
            return false;
        }
    }

    /* renamed from: b */
    public static List<String> m23739b(View view) {
        if (C10249a.m23108a(C9963b.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            ViewGroup m23705a = C9981f.m23705a(view);
            if (m23705a != null) {
                for (View view2 : C9981f.m23700b(m23705a)) {
                    if (view != view2) {
                        arrayList.addAll(m23738c(view2));
                    }
                }
            }
            return arrayList;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9963b.class);
            return null;
        }
    }

    /* renamed from: c */
    private static List<String> m23738c(View view) {
        if (C10249a.m23108a(C9963b.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            if (view instanceof EditText) {
                return arrayList;
            }
            if (!(view instanceof TextView)) {
                for (View view2 : C9981f.m23700b(view)) {
                    arrayList.addAll(m23738c(view2));
                }
                return arrayList;
            }
            String charSequence = ((TextView) view).getText().toString();
            if (!charSequence.isEmpty() && charSequence.length() < 100) {
                arrayList.add(charSequence.toLowerCase());
            }
            return arrayList;
        } catch (Throwable th) {
            C10249a.m23106a(th, C9963b.class);
            return null;
        }
    }
}
