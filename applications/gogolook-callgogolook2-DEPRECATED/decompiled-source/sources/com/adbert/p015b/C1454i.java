package com.adbert.p015b;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.adbert.p009a.p012c.EnumC1384d;
import com.adbert.p009a.p012c.EnumC1385e;
import gogolook.callgogolook2.gson.UserProfile;
/* renamed from: com.adbert.b.i */
/* loaded from: classes-dex2jar.jar:com/adbert/b/i.class */
public class C1454i extends LinearLayout {

    /* renamed from: a */
    public String[] f774a = {"download", "web", "phone", "fb", UserProfile.TYPE_CONTACT_INFO_LINE};

    /* renamed from: com.adbert.b.i$a */
    /* loaded from: classes-dex2jar.jar:com/adbert/b/i$a.class */
    public interface AbstractC1456a {
        /* renamed from: a */
        void mo37044a(int i);
    }

    public C1454i(Context context, int i) {
        super(context);
        setOrientation(i);
        setBackgroundColor(EnumC1384d.endingCardBg.m37188a());
        if (i == 1) {
            setGravity(1);
        } else {
            setGravity(16);
        }
    }

    /* renamed from: a */
    public void m37045a(boolean[] zArr, int i, final AbstractC1456a aVar) {
        for (final int i2 = 0; i2 < this.f774a.length; i2++) {
            RelativeLayout relativeLayout = new RelativeLayout(getContext());
            addView(relativeLayout);
            ((LinearLayout.LayoutParams) relativeLayout.getLayoutParams()).weight = 1.0f;
            ImageView imageView = new ImageView(getContext());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            relativeLayout.addView(imageView, layoutParams);
            layoutParams.addRule(13);
            imageView.setImageDrawable(EnumC1385e.download.m37185a(getContext(), i2));
            imageView.getLayoutParams().width = i;
            imageView.getLayoutParams().height = i;
            if (zArr[i2]) {
                relativeLayout.setVisibility(0);
            } else {
                relativeLayout.setVisibility(8);
            }
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.adbert.b.i.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    aVar.mo37044a(i2);
                }
            });
        }
    }
}
