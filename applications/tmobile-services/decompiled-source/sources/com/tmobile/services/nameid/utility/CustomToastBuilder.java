package com.tmobile.services.nameid.utility;

import android.content.Context;
import android.graphics.PorterDuff;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.StringRes;
import com.tmobile.services.C1517R;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/CustomToastBuilder.class */
public class CustomToastBuilder {
    @StringRes

    /* renamed from: a */
    private int f14247a;
    @Nullable

    /* renamed from: b */
    private String f14248b;
    @DrawableRes

    /* renamed from: c */
    private int f14249c;
    @ColorRes

    /* renamed from: d */
    private int f14250d = C1517R.C1518color.grey_1;
    @StringRes

    /* renamed from: e */
    private int f14251e;

    /* renamed from: a */
    public Toast m5796a(Context context) {
        Toast toast = new Toast(context);
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(C1517R.layout.custom_toast, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(C1517R.C1520id.custom_toast_text);
        int i = this.f14247a;
        if (i != 0) {
            textView.setText(i);
        } else {
            String str = this.f14248b;
            if (str != null && !str.isEmpty()) {
                textView.setText(this.f14248b);
            }
        }
        if (this.f14249c != 0) {
            ((ImageView) inflate.findViewById(C1517R.C1520id.custom_toast_image)).setImageResource(this.f14249c);
            ((ImageView) inflate.findViewById(C1517R.C1520id.custom_toast_image)).setColorFilter(context.getResources().getColor(C1517R.C1518color.white), PorterDuff.Mode.SRC_ATOP);
            if (this.f14251e != 0) {
                inflate.findViewById(C1517R.C1520id.custom_toast_image).setContentDescription(context.getString(this.f14251e));
            }
        }
        if (Build.VERSION.SDK_INT >= 23) {
            inflate.findViewById(C1517R.C1520id.custom_toast_actual_container).setBackgroundColor(context.getColor(this.f14250d));
        } else {
            inflate.findViewById(C1517R.C1520id.custom_toast_actual_container).setBackgroundColor(context.getResources().getColor(this.f14250d));
        }
        toast.setView(inflate);
        toast.setGravity(119, 0, 0);
        toast.setDuration(0);
        return toast;
    }

    /* renamed from: b */
    public CustomToastBuilder m5795b(@StringRes int i) {
        this.f14247a = i;
        return this;
    }
}
