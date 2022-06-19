package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.FreshchatImageLoader;
import com.freshchat.consumer.sdk.FreshchatImageLoaderRequest;
import com.freshchat.consumer.sdk.p061k.C1754p;
/* renamed from: com.freshchat.consumer.sdk.j.ci */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/ci.class */
public class C1684ci {
    /* renamed from: a */
    private void m40015a(ImageView imageView, String str) {
        if (C1626as.m40233a(str)) {
            FreshchatImageLoaderRequest m41530dM = new FreshchatImageLoaderRequest.C1297a(str).m41533a(imageView.getWidth(), imageView.getHeight()).m41530dM();
            FreshchatImageLoader m40305eK = C1610af.m40305eK();
            if (m40305eK == null) {
                return;
            }
            m40305eK.load(m41530dM, imageView);
        }
    }

    /* renamed from: a */
    public void m40016a(View view, C1754p c1754p, int i) {
        Context context = view.getContext();
        TextView textView = (TextView) view.findViewById(C1298R.C1300id.freshchat_calendar_timeslot_view);
        TextView textView2 = (TextView) view.findViewById(C1298R.C1300id.freshchat_calendar_day_label);
        ImageView imageView = (ImageView) view.findViewById(C1298R.C1300id.freshchat_calendar_agent_avatar);
        View findViewById = view.findViewById(C1298R.C1300id.freshchat_calendar_avatars_container);
        imageView.bringToFront();
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) findViewById.getLayoutParams();
        layoutParams.width = ((context.getResources().getDimensionPixelSize(i) * 90) / 100) * 2;
        findViewById.setLayoutParams(layoutParams);
        textView.setText(c1754p.m39690ii());
        textView2.setText(c1754p.m39689ij());
        if (c1754p.m39688ik()) {
            m40015a(imageView, c1754p.m39692hL());
            return;
        }
        int m40240a = C1623aq.m40240a(context, C1298R.attr.freshchatTeamMemberAvatarIcon, false);
        if (m40240a <= 0) {
            return;
        }
        imageView.setImageResource(m40240a);
    }
}
