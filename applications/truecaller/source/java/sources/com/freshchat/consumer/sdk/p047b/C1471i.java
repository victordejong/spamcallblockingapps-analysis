package com.freshchat.consumer.sdk.p047b;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.IBinder;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.C0032R;
import androidx.appcompat.widget.SearchView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.p057j.C1612ah;
import com.freshchat.consumer.sdk.p057j.C1623aq;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1630aw;
import com.freshchat.consumer.sdk.p057j.C1722p;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.mopub.common.Constants;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1734b.p1735a.g$a;
/* renamed from: com.freshchat.consumer.sdk.b.i */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/b/i.class */
public class C1471i {
    /* renamed from: a */
    public static void m40855a(Context context, int i) {
        if (context == null || i == 0) {
            return;
        }
        m40837e(context, context.getString(i));
    }

    /* renamed from: a */
    public static void m40854a(Context context, IBinder iBinder) {
        ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(iBinder, 0);
    }

    /* renamed from: a */
    public static void m40853a(Context context, View view) {
        if (view != null) {
            m40854a(context, view.getWindowToken());
        }
    }

    /* renamed from: a */
    public static void m40852a(Context context, View view, int i, int i2) {
        if (view == null) {
            return;
        }
        m40851a(context, view, i, view.getPaddingTop(), i2, view.getPaddingBottom());
    }

    /* renamed from: a */
    public static void m40851a(Context context, View view, int i, int i2, int i3, int i4) {
        if (view == null) {
            return;
        }
        int i5 = i;
        int i6 = i3;
        if (C1722p.m39831aD(context)) {
            i6 = i;
            i5 = i3;
        }
        view.setPadding(i5, i2, i6, i4);
    }

    /* renamed from: a */
    public static void m40850a(Context context, final View view, final View view2) {
        if (context == null) {
            return;
        }
        int integer = context.getResources().getInteger(17694720);
        view2.setAlpha(0.0f);
        view2.setVisibility(0);
        long j = integer;
        view2.animate().alpha(1.0f).setDuration(j).setListener(new AnimatorListenerAdapter() { // from class: com.freshchat.consumer.sdk.b.i.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view2.setVisibility(0);
            }
        });
        view.animate().alpha(0.0f).setDuration(j).setListener(new AnimatorListenerAdapter() { // from class: com.freshchat.consumer.sdk.b.i.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setVisibility(8);
            }
        });
    }

    /* renamed from: a */
    public static void m40849a(Context context, EditText editText) {
        int i;
        int i2;
        if (editText != null && !C1630aw.m40195fH()) {
            String obj = editText.getText().toString();
            boolean m40233a = C1626as.m40233a(obj);
            if (m40233a) {
                i = 0;
                editText.setTextAlignment(0);
            } else {
                editText.setTextAlignment(5);
                i = C1612ah.getTextDirection();
            }
            editText.setTextDirection(i);
            if (!m40233a) {
                return;
            }
            boolean m40226c = C1626as.m40226c(obj, true);
            boolean m39831aD = C1722p.m39831aD(context);
            if (m40226c) {
                if (!m39831aD) {
                    i2 = 8388629;
                    editText.setGravity(i2);
                    return;
                }
                editText.setGravity(8388631);
            }
            if (!m39831aD) {
                i2 = 8388627;
                editText.setGravity(i2);
                return;
            }
            editText.setGravity(8388631);
        }
    }

    /* renamed from: a */
    public static void m40848a(Context context, TextView textView, int i) {
        int m40238j;
        if (context == null || textView == null || i == 0 || (m40238j = C1623aq.m40238j(context, i)) <= 0) {
            return;
        }
        if (C1630aw.m40193fa()) {
            textView.setTextAppearance(m40238j);
        } else {
            textView.setTextAppearance(context, m40238j);
        }
    }

    /* renamed from: a */
    public static void m40847a(Context context, EnumC1464c enumC1464c) {
        if (context == null || enumC1464c == null) {
            return;
        }
        Toast.makeText(context, enumC1464c.toString(), 1).show();
    }

    /* renamed from: a */
    public static void m40846a(View view, int i, int i2) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = i2;
        layoutParams.height = i;
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    public static void m40844a(SearchView searchView, AbstractC25393a abstractC25393a) {
        if (searchView == null || abstractC25393a == null) {
            return;
        }
        try {
            TypedArray obtainStyledAttributes = abstractC25393a.mo3558e().getTheme().obtainStyledAttributes(new int[]{C1298R.attr.actionBarItemBackground});
            if (obtainStyledAttributes != null && obtainStyledAttributes.getIndexCount() != 0) {
                int resourceId = obtainStyledAttributes.getResourceId(0, -1);
                if (resourceId > 0) {
                    searchView.setBackgroundResource(resourceId);
                }
                obtainStyledAttributes.recycle();
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: a */
    public static boolean m40845a(View view, MotionEvent motionEvent) {
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2).contains((int) rawX, (int) rawY);
    }

    /* renamed from: b */
    public static g$a m40843b(Context context, int i) {
        int i2 = i;
        if (i == 0) {
            i2 = C1298R.attr.freshchatAlertDialog;
        }
        return C1630aw.m40204eS() ? new g$a(context, C1623aq.m40238j(context, i2)) : new g$a(context);
    }

    /* renamed from: b */
    public static void m40842b(View view) {
        if (view != null) {
            view.setVisibility(0);
        }
    }

    /* renamed from: b */
    public static void m40841b(View view, int i) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = i;
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: c */
    public static void m40840c(View view) {
        if (view != null) {
            view.setVisibility(8);
        }
    }

    /* renamed from: ca */
    public static int m40839ca(Context context) {
        int i = 0;
        if (context == null) {
            return 0;
        }
        int identifier = context.getResources().getIdentifier("status_bar_height", "dimen", Constants.ANDROID_PLATFORM);
        if (identifier > 0) {
            i = C1623aq.m40235o(context, identifier);
        }
        int i2 = i;
        if (i <= 0) {
            i2 = C1623aq.m40235o(context, C1298R.dimen.freshchat_status_bar_height);
        }
        return i2;
    }

    /* renamed from: cb */
    public static int m40838cb(Context context) {
        int i = 0;
        if (context == null) {
            return 0;
        }
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(C0032R.attr.actionBarSize, typedValue, true)) {
            i = TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics());
        }
        int i2 = i;
        if (i <= 0) {
            i2 = C1623aq.m40235o(context, C1298R.dimen.freshchat_action_bar_height);
        }
        return i2;
    }

    /* renamed from: e */
    public static void m40837e(Context context, String str) {
        if (context == null || C1626as.isEmpty(str)) {
            return;
        }
        Toast.makeText(context, str, 1).show();
    }

    /* renamed from: e */
    public static void m40836e(View view) {
        if (m40835f(view)) {
            view.requestFocus();
        }
    }

    /* renamed from: f */
    public static boolean m40835f(View view) {
        return view != null && view.getVisibility() == 0;
    }

    /* renamed from: m */
    public static g$a m40834m(Context context) {
        return m40843b(context, 0);
    }
}
