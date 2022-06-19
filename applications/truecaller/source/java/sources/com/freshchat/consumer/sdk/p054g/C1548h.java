package com.freshchat.consumer.sdk.p054g;

import android.content.Context;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.p049c.C1506c;
import com.freshchat.consumer.sdk.p049c.C1508e;
import com.freshchat.consumer.sdk.p049c.C1511g;
import com.freshchat.consumer.sdk.p057j.C1716k;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
/* renamed from: com.freshchat.consumer.sdk.g.h */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/g/h.class */
public class C1548h extends AbstractC1543c<Channel> {

    /* renamed from: ap */
    private Map<Long, Integer> f4182ap;

    /* renamed from: av */
    private final C1511g f4183av;

    /* renamed from: eT */
    private final C1508e f4184eT;

    /* renamed from: eU */
    private final C1506c f4185eU;

    /* renamed from: kQ */
    private final boolean f4186kQ;

    /* renamed from: re */
    private boolean f4187re;
    private List<String> tags;

    /* renamed from: com.freshchat.consumer.sdk.g.h$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/g/h$a.class */
    public class C1549a implements Comparator<Channel> {
        private C1549a() {
            C1548h.this = r4;
        }

        /* renamed from: a */
        public int compare(Channel channel, Channel channel2) {
            if (channel == null || channel2 == null) {
                return 0;
            }
            int i = 1;
            if (channel.getLatestOrWelcomeMessage() == null && channel2.getLatestOrWelcomeMessage() == null) {
                if (channel.getPosition() <= channel2.getPosition()) {
                    i = -1;
                }
                return i;
            } else if (channel.getLatestOrWelcomeMessage() == null) {
                return -1;
            } else {
                if (channel2.getLatestOrWelcomeMessage() == null) {
                    return 1;
                }
                long createdMillis = channel.getLatestOrWelcomeMessage().getCreatedMillis();
                long createdMillis2 = channel2.getLatestOrWelcomeMessage().getCreatedMillis();
                if (createdMillis <= 0 && createdMillis2 <= 0) {
                    return channel.getPosition() > channel2.getPosition() ? 1 : -1;
                }
                int i2 = 1;
                if (createdMillis > createdMillis2) {
                    i2 = -1;
                }
                return i2;
            }
        }
    }

    public C1548h(Context context, boolean z) {
        super(context);
        this.f4185eU = new C1506c(context);
        this.f4183av = new C1511g(context);
        this.f4184eT = new C1508e(context);
        this.f4186kQ = z;
    }

    public C1548h(Context context, boolean z, List<String> list) {
        this(context, z);
        this.tags = list;
    }

    @Override // com.freshchat.consumer.sdk.p054g.AbstractC1543c
    /* renamed from: dd */
    public List<Channel> mo40564dd() {
        if (this.f4186kQ) {
            this.f4184eT.m40757fR();
        }
        List<Channel> m40777a = this.f4185eU.m40777a(this.tags, false);
        if (C1716k.isEmpty(m40777a)) {
            Channel m40773cw = this.f4185eU.m40773cw();
            if (m40773cw != null) {
                m40777a.add(m40773cw);
                this.f4187re = true;
            }
        } else {
            this.f4187re = false;
        }
        Collections.sort(m40777a, new C1549a());
        this.f4182ap = this.f4183av.m40723cF();
        return m40777a;
    }

    /* renamed from: iT */
    public Map<Long, Integer> m40568iT() {
        return this.f4182ap;
    }
}
