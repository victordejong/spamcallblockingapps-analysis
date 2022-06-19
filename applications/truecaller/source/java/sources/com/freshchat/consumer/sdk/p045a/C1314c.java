package com.freshchat.consumer.sdk.p045a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.FreshchatImageLoader;
import com.freshchat.consumer.sdk.FreshchatImageLoaderRequest;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.p057j.C1610af;
import com.freshchat.consumer.sdk.p057j.C1612ah;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1627at;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1719n;
import com.freshchat.consumer.sdk.service.p067d.C1869c;
import java.util.List;
import java.util.Map;
/* renamed from: com.freshchat.consumer.sdk.a.c */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/c.class */
public class C1314c extends BaseAdapter {

    /* renamed from: ao */
    private final List<Channel> f3547ao;

    /* renamed from: ap */
    private final Map<Long, Integer> f3548ap;
    private final Context context;

    /* renamed from: cr */
    private final LayoutInflater f3549cr;

    /* renamed from: com.freshchat.consumer.sdk.a.c$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/c$a.class */
    public static class C1315a {

        /* renamed from: cs */
        private final TextView f3550cs;

        /* renamed from: ct */
        private final ImageView f3551ct;

        /* renamed from: cu */
        private final TextView f3552cu;

        /* renamed from: cv */
        private final TextView f3553cv;

        /* renamed from: cw */
        private final TextView f3554cw;

        /* renamed from: cx */
        private final TextView f3555cx;

        public C1315a(View view) {
            this.f3550cs = (TextView) view.findViewById(C1298R.C1300id.freshchat_channel_name);
            this.f3551ct = (ImageView) view.findViewById(C1298R.C1300id.freshchat_channel_icon);
            this.f3552cu = (TextView) view.findViewById(C1298R.C1300id.freshchat_channel_icon_alt_text);
            this.f3554cw = (TextView) view.findViewById(C1298R.C1300id.freshchat_channel_desc);
            this.f3553cv = (TextView) view.findViewById(C1298R.C1300id.freshchat_channel_unread_count);
            this.f3555cx = (TextView) view.findViewById(C1298R.C1300id.freshchat_channel_last_updated);
        }

        /* renamed from: aR */
        public TextView m41521aR() {
            return this.f3550cs;
        }

        /* renamed from: aS */
        public ImageView m41520aS() {
            return this.f3551ct;
        }

        /* renamed from: aT */
        public TextView m41519aT() {
            return this.f3552cu;
        }

        /* renamed from: aU */
        public TextView m41518aU() {
            return this.f3554cw;
        }

        /* renamed from: aV */
        public TextView m41517aV() {
            return this.f3553cv;
        }

        /* renamed from: aW */
        public TextView m41516aW() {
            return this.f3555cx;
        }
    }

    public C1314c(Context context, List<Channel> list, Map<Long, Integer> map) {
        this.context = context;
        this.f3547ao = list;
        this.f3548ap = map;
        this.f3549cr = LayoutInflater.from(context);
    }

    /* renamed from: e */
    public Channel getItem(int i) {
        List<Channel> list = this.f3547ao;
        if (list != null) {
            return list.get(i);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return C1716k.m39900b(this.f3547ao);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C1315a c1315a;
        Map<Long, Integer> map;
        TextView textView;
        if (view == null) {
            view = this.f3549cr.inflate(C1298R.layout.freshchat_listitem_channel, viewGroup, false);
            c1315a = new C1315a(view);
            view.setTag(c1315a);
        } else {
            c1315a = (C1315a) view.getTag();
        }
        Channel item = getItem(i);
        c1315a.m41521aR().setText(item.getName());
        if (!C1626as.isEmpty(item.getIconUrl()) || !C1626as.m40233a(item.getName())) {
            c1315a.m41520aS().setVisibility(0);
            c1315a.m41519aT().setVisibility(8);
            FreshchatImageLoaderRequest m41530dM = new FreshchatImageLoaderRequest.C1297a(item.getIconUrl()).m41530dM();
            FreshchatImageLoader m40305eK = C1610af.m40305eK();
            if (m40305eK != null) {
                m40305eK.load(m41530dM, c1315a.m41520aS());
            }
        } else {
            c1315a.m41520aS().setVisibility(8);
            c1315a.m41519aT().setVisibility(0);
            c1315a.m41519aT().setText(item.getName().substring(0, 1).toUpperCase(C1612ah.m40290bb(this.context)));
        }
        Message latestOrWelcomeMessage = item.getLatestOrWelcomeMessage();
        if (latestOrWelcomeMessage != null) {
            c1315a.m41518aU().setText(C1626as.fromHtml(C1869c.m39387f(this.context, latestOrWelcomeMessage)).toString());
            c1315a.m41516aW().setVisibility(0);
            if (!C1869c.m39386i(latestOrWelcomeMessage) && latestOrWelcomeMessage.getCreatedMillis() != 0 && C1626as.isEmpty(latestOrWelcomeMessage.getFlowStepId())) {
                c1315a.m41516aW().setText(C1719n.m39884a(this.context, latestOrWelcomeMessage.getCreatedMillis(), false));
                map = this.f3548ap;
                if (map != null || !map.containsKey(Long.valueOf(item.getId()))) {
                    c1315a.m41517aV().setVisibility(8);
                } else {
                    int intValue = this.f3548ap.get(Long.valueOf(item.getId())).intValue();
                    c1315a.m41517aV().setVisibility(0);
                    c1315a.m41517aV().setText(C1627at.m40220n(this.context, intValue));
                }
                return view;
            }
            textView = c1315a.m41516aW();
        } else {
            c1315a.m41516aW().setVisibility(8);
            textView = c1315a.m41518aU();
        }
        textView.setText("");
        map = this.f3548ap;
        if (map != null) {
        }
        c1315a.m41517aV().setVisibility(8);
        return view;
    }
}
