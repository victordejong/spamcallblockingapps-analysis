package com.callapp.contacts.widget;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/RatingView.class */
public class RatingView extends LinearLayout {

    /* renamed from: a */
    private final ImageView[] f28848a;

    public RatingView(Context context) {
        this(context, null);
    }

    public RatingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RatingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f28848a = r0;
        inflate(getContext(), 2131559172, this);
        ThemeUtils.m27386a(getContext(), 2131099786);
        ImageView[] imageViewArr = {(ImageView) findViewById(2131363612), (ImageView) findViewById(2131363613), (ImageView) findViewById(2131363614), (ImageView) findViewById(2131363615), (ImageView) findViewById(2131363616)};
    }

    public void setRating(double d) {
        if (d < 0.0d || d > 5.0d) {
            "Cannot initiate view with rating=".concat(String.valueOf(d));
            CLog.m27606a("RatingView");
            return;
        }
        int floor = (int) Math.floor(d);
        int i = 0;
        while (i < floor) {
            ImageUtils.m27529a(this.f28848a[i], 2131231908, new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
            i++;
        }
        int i2 = i;
        if (floor < d) {
            ImageUtils.m27529a(this.f28848a[i], 2131231909, new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
            i2 = i + 1;
        }
        while (i2 < 5) {
            ImageUtils.m27529a(this.f28848a[i2], 2131231907, new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
            i2++;
        }
    }
}
