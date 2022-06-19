package p000;

import android.content.res.Resources;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
/* renamed from: ck0 */
/* loaded from: classes-dex2jar.jar:ck0.class */
public final class ck0 {
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a8 -> B:13:0x0066). Please submit an issue!!! */
    /* renamed from: a */
    public static List<String> m5320a(View view) {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.add(qk0.h(view));
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

    /* renamed from: b */
    public static List<String> m5319b(View view) {
        ArrayList arrayList = new ArrayList();
        if (view instanceof EditText) {
            return arrayList;
        }
        if (!(view instanceof TextView)) {
            for (View view2 : qk0.b(view)) {
                arrayList.addAll(m5319b(view2));
            }
            return arrayList;
        }
        String charSequence = ((TextView) view).getText().toString();
        if (!charSequence.isEmpty() && charSequence.length() < 100) {
            arrayList.add(charSequence.toLowerCase());
        }
        return arrayList;
    }

    /* renamed from: c */
    public static boolean m5318c(String str, List<String> list) {
        for (String str2 : list) {
            if (str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public static boolean m5317d(List<String> list, List<String> list2) {
        for (String str : list) {
            if (m5318c(str, list2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public static boolean m5316e(String str, String str2) {
        return str.matches(str2);
    }
}
