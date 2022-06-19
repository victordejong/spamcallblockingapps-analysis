package com.facebook.p094a.p095a;

import android.content.res.Resources;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.facebook.p094a.p096b.p097a.C1829f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.facebook.a.a.b */
/* loaded from: classes-dex2jar.jar:com/facebook/a/a/b.class */
final class C1811b {

    /* renamed from: a */
    private static final String f5503a = C1811b.class.getCanonicalName();

    C1811b() {
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a8 -> B:13:0x0066). Please submit an issue!!! */
    /* renamed from: a */
    public static List<String> m16225a(View view) {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.add(C1829f.m16169f(view));
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
    }

    /* renamed from: a */
    public static boolean m16224a(String str, String str2) {
        return str.matches(str2);
    }

    /* renamed from: a */
    static boolean m16223a(String str, List<String> list) {
        boolean z;
        Iterator<String> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (str.contains(it.next())) {
                z = true;
                break;
            }
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m16222a(List<String> list, List<String> list2) {
        boolean z;
        Iterator<String> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else if (m16223a(it.next(), list2)) {
                z = true;
                break;
            }
        }
        return z;
    }

    /* renamed from: b */
    public static List<String> m16221b(View view) {
        ArrayList arrayList = new ArrayList();
        if (!(view instanceof EditText)) {
            if (view instanceof TextView) {
                String charSequence = ((TextView) view).getText().toString();
                if (!charSequence.isEmpty() && charSequence.length() < 100) {
                    arrayList.add(charSequence.toLowerCase());
                }
            } else {
                for (View view2 : C1829f.m16173b(view)) {
                    arrayList.addAll(m16221b(view2));
                }
            }
        }
        return arrayList;
    }
}
