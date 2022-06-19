package com.freshchat.consumer.sdk.service.p066c;

import android.webkit.URLUtil;
import com.freshchat.consumer.sdk.FreshchatImageLoader;
import com.freshchat.consumer.sdk.FreshchatImageLoaderRequest;
import com.freshchat.consumer.sdk.beans.Category;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.p049c.C1506c;
import com.freshchat.consumer.sdk.p049c.C1513i;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1610af;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p057j.C1731w;
import com.freshchat.consumer.sdk.service.p068e.AbstractC1907k;
import com.freshchat.consumer.sdk.service.p068e.C1904h;
import com.freshchat.consumer.sdk.service.p068e.C1924z;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.service.c.w */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/c/w.class */
public class C1862w extends AbstractC1829a<C1924z, AbstractC1907k> {
    /* renamed from: dy */
    private void m39407dy() {
        List<Category> m40699cJ = new C1513i(getContext()).m40699cJ();
        C1594aa.m40342fF();
        for (Category category : m40699cJ) {
            if (category.getIconUrl() != null && URLUtil.isNetworkUrl(category.getIconUrl())) {
                try {
                    FreshchatImageLoaderRequest m41530dM = new FreshchatImageLoaderRequest.C1297a(category.getIconUrl()).m41530dM();
                    FreshchatImageLoader m40305eK = C1610af.m40305eK();
                    if (m40305eK != null) {
                        m40305eK.fetch(m41530dM);
                    }
                } catch (Exception e) {
                    C1723q.m39823a(e);
                }
            }
        }
    }

    /* renamed from: dz */
    private void m39406dz() {
        List<Channel> m40774cv = new C1506c(getContext()).m40774cv();
        C1594aa.m40342fF();
        for (Channel channel : m40774cv) {
            if (channel.getIconUrl() != null && URLUtil.isNetworkUrl(channel.getIconUrl())) {
                try {
                    FreshchatImageLoaderRequest m41530dM = new FreshchatImageLoaderRequest.C1297a(channel.getIconUrl()).m41530dM();
                    FreshchatImageLoader m40305eK = C1610af.m40305eK();
                    if (m40305eK != null) {
                        m40305eK.fetch(m41530dM);
                    }
                } catch (Exception e) {
                    C1723q.m39823a(e);
                }
            }
        }
    }

    /* renamed from: a */
    public AbstractC1907k mo39348b(C1924z c1924z) {
        C1904h c1904h = new C1904h(true);
        if (!m39408b(c1924z)) {
            return c1904h;
        }
        if (c1924z.m39310dR() == C1924z.EnumC1925a.FAQ_ICONS) {
            m39407dy();
        } else if (c1924z.m39310dR() == C1924z.EnumC1925a.CHANNEL_ICONS) {
            m39406dz();
        }
        return c1904h;
    }

    /* renamed from: b */
    public boolean m39408b(C1924z c1924z) {
        return C1731w.m39793ay(getContext());
    }
}
