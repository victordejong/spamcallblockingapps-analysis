package com.facebook.appevents.aam;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/aam/MetadataMatcher.class */
final class MetadataMatcher {
    private static final int MAX_INDICATOR_LENGTH = 100;
    private static final String TAG = "com.facebook.appevents.aam.MetadataMatcher";

    MetadataMatcher() {
    }

    public static List<String> getAroundViewIndicators(View view) {
        if (CrashShieldHandler.isObjectCrashing(MetadataMatcher.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            ViewGroup parentOfView = ViewHierarchy.getParentOfView(view);
            if (parentOfView != null) {
                for (View view2 : ViewHierarchy.getChildrenOfView(parentOfView)) {
                    if (view != view2) {
                        arrayList.addAll(getTextIndicators(view2));
                    }
                }
            }
            return arrayList;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataMatcher.class);
            return null;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00bb -> B:19:0x0070). Please submit an issue!!! */
    public static List<String> getCurrentViewIndicators(View view) {
        if (CrashShieldHandler.isObjectCrashing(MetadataMatcher.class)) {
            return null;
        }
        try {
            ArrayList<String> arrayList = new ArrayList();
            arrayList.add(ViewHierarchy.getHintOfView(view));
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
            CrashShieldHandler.handleThrowable(th, MetadataMatcher.class);
            return null;
        }
    }

    static List<String> getTextIndicators(View view) {
        if (CrashShieldHandler.isObjectCrashing(MetadataMatcher.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            if (view instanceof EditText) {
                return arrayList;
            }
            if (!(view instanceof TextView)) {
                for (View view2 : ViewHierarchy.getChildrenOfView(view)) {
                    arrayList.addAll(getTextIndicators(view2));
                }
                return arrayList;
            }
            String charSequence = ((TextView) view).getText().toString();
            if (!charSequence.isEmpty() && charSequence.length() < 100) {
                arrayList.add(charSequence.toLowerCase());
            }
            return arrayList;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataMatcher.class);
            return null;
        }
    }

    static boolean matchIndicator(String str, List<String> list) {
        if (CrashShieldHandler.isObjectCrashing(MetadataMatcher.class)) {
            return false;
        }
        try {
            Iterator<String> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    return false;
                }
            } while (!str.contains(it.next()));
            return true;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataMatcher.class);
            return false;
        }
    }

    public static boolean matchIndicator(List<String> list, List<String> list2) {
        if (CrashShieldHandler.isObjectCrashing(MetadataMatcher.class)) {
            return false;
        }
        try {
            Iterator<String> it = list.iterator();
            do {
                if (!it.hasNext()) {
                    return false;
                }
            } while (!matchIndicator(it.next(), list2));
            return true;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataMatcher.class);
            return false;
        }
    }

    public static boolean matchValue(String str, String str2) {
        if (CrashShieldHandler.isObjectCrashing(MetadataMatcher.class)) {
            return false;
        }
        try {
            return str.matches(str2);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataMatcher.class);
            return false;
        }
    }
}
