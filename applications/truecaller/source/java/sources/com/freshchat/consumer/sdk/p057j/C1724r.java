package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.content.res.Resources;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.ChannelResponseTime;
import com.freshchat.consumer.sdk.beans.reqres.ChannelsResponseTimeResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.freshchat.consumer.sdk.j.r */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/r.class */
public class C1724r {

    /* renamed from: hC */
    private static Map<Long, ChannelResponseTime> f4525hC = new HashMap();

    /* renamed from: hD */
    private static long f4526hD;

    /* renamed from: com.freshchat.consumer.sdk.j.r$1 */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/r$1.class */
    public /* synthetic */ class C17251 {

        /* renamed from: kw */
        public static final /* synthetic */ int[] f4527kw;

        static {
            ChannelResponseTime.ResponseTimeType.values();
            int[] iArr = new int[4];
            f4527kw = iArr;
            try {
                ChannelResponseTime.ResponseTimeType responseTimeType = ChannelResponseTime.ResponseTimeType.CURRENT_AVG;
                iArr[0] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                int[] iArr2 = f4527kw;
                ChannelResponseTime.ResponseTimeType responseTimeType2 = ChannelResponseTime.ResponseTimeType.LAST_WEEK_AVG;
                iArr2[1] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.j.r$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/r$a.class */
    public enum EnumC1726a {
        UNDER_1_MIN(C1298R.string.freshchat_typically_replies_within_a_minute, C1298R.string.freshchat_currently_replying_in_a_minute),
        UNDER_X_MINS(C1298R.string.freshchat_typically_replies_within_x_minutes, C1298R.string.freshchat_currently_replying_in_x_minutes),
        UNDER_AN_HR(C1298R.string.freshchat_typically_replies_within_an_hour, C1298R.string.freshchat_currently_replying_in_an_hour),
        UNDER_2_HRS(C1298R.string.freshchat_typically_replies_within_2_hours, C1298R.string.freshchat_currently_replying_in_2_hours),
        UNDER_FEW_HRS(C1298R.string.freshchat_typically_replies_within_few_hours, C1298R.string.freshchat_currently_replying_in_few_hours);
        

        /* renamed from: kC */
        private int f4534kC;

        /* renamed from: kD */
        private int f4535kD;

        EnumC1726a(int i, int i2) {
            this.f4534kC = i;
            this.f4535kD = i2;
        }

        /* renamed from: a */
        public String m39816a(Context context, ChannelResponseTime.ResponseTimeType responseTimeType) {
            Resources resources;
            int i;
            if (responseTimeType == null || context == null) {
                return null;
            }
            int i2 = C17251.f4527kw[responseTimeType.ordinal()];
            if (i2 == 1) {
                resources = context.getResources();
                i = this.f4535kD;
            } else if (i2 != 2) {
                return null;
            } else {
                resources = context.getResources();
                i = this.f4534kC;
            }
            return resources.getString(i);
        }
    }

    /* renamed from: a */
    private static String m39822a(Context context, ChannelResponseTime channelResponseTime) {
        if (context == null || channelResponseTime == null) {
            return null;
        }
        if (channelResponseTime.getResponseTimeType() == ChannelResponseTime.ResponseTimeType.ALL_MEMBERS_AWAY_RESPONSE) {
            return context.getString(C1298R.string.freshchat_all_members_away_message);
        }
        if (channelResponseTime.getResponseTimeType() == ChannelResponseTime.ResponseTimeType.CUSTOM_RESPONSE) {
            return channelResponseTime.getCustomResponseTimeMessage();
        }
        long responseTime = channelResponseTime.getResponseTime();
        ChannelResponseTime.ResponseTimeType responseTimeType = channelResponseTime.getResponseTimeType();
        float f = ((float) responseTime) / 60.0f;
        if (f < 1.0f) {
            return EnumC1726a.UNDER_1_MIN.m39816a(context, responseTimeType);
        }
        if (f >= 55.0f) {
            return f < 60.0f ? EnumC1726a.UNDER_AN_HR.m39816a(context, responseTimeType) : f < 120.0f ? EnumC1726a.UNDER_2_HRS.m39816a(context, responseTimeType) : EnumC1726a.UNDER_FEW_HRS.m39816a(context, responseTimeType);
        }
        try {
            return EnumC1726a.UNDER_X_MINS.m39816a(context, responseTimeType).replace(context.getString(C1298R.string.freshchat_placeholder_minutes), String.valueOf(f < 10.0f ? (int) Math.ceil(f) : ((int) Math.ceil(f / 5.0f)) * 5));
        } catch (Exception e) {
            C1613ai.m40283e("FRESHCHAT_WARNING", "Channels response time to String conversation error");
            return null;
        }
    }

    /* renamed from: a */
    public static void m39821a(Context context, ChannelsResponseTimeResponse channelsResponseTimeResponse) {
        f4525hC.clear();
        if (channelsResponseTimeResponse == null) {
            return;
        }
        List<ChannelResponseTime> channelResponseTimesFor7Days = channelsResponseTimeResponse.getChannelResponseTimesFor7Days();
        List<ChannelResponseTime> channelResponseTime = channelsResponseTimeResponse.getChannelResponseTime();
        List<ChannelResponseTime> channelsCustomResponseTimeMessage = channelsResponseTimeResponse.getChannelsCustomResponseTimeMessage();
        List<ChannelResponseTime> channelsWithAllMembersAway = channelsResponseTimeResponse.getChannelsWithAllMembersAway();
        if (C1716k.m39902a(channelResponseTimesFor7Days)) {
            for (ChannelResponseTime channelResponseTime2 : channelResponseTimesFor7Days) {
                channelResponseTime2.setResponseTimeType(ChannelResponseTime.ResponseTimeType.LAST_WEEK_AVG);
                f4525hC.put(Long.valueOf(channelResponseTime2.getChannelId()), channelResponseTime2);
            }
        }
        if (C1716k.m39902a(channelResponseTime)) {
            for (ChannelResponseTime channelResponseTime3 : channelResponseTime) {
                channelResponseTime3.setResponseTimeType(ChannelResponseTime.ResponseTimeType.CURRENT_AVG);
                f4525hC.put(Long.valueOf(channelResponseTime3.getChannelId()), channelResponseTime3);
            }
        }
        if (C1716k.m39902a(channelsCustomResponseTimeMessage)) {
            for (ChannelResponseTime channelResponseTime4 : channelsCustomResponseTimeMessage) {
                channelResponseTime4.setResponseTimeType(ChannelResponseTime.ResponseTimeType.CUSTOM_RESPONSE);
                if (channelResponseTime4.getCustomResponseTimeMessage() != null && !channelResponseTime4.getCustomResponseTimeMessage().isEmpty()) {
                    f4525hC.put(Long.valueOf(channelResponseTime4.getChannelId()), channelResponseTime4);
                }
            }
        }
        if (C1716k.m39902a(channelsWithAllMembersAway)) {
            boolean z = false;
            if (context != null) {
                z = C1626as.m40233a(context.getString(C1298R.string.freshchat_all_members_away_message));
            }
            if (z) {
                for (ChannelResponseTime channelResponseTime5 : channelsWithAllMembersAway) {
                    channelResponseTime5.setResponseTimeType(ChannelResponseTime.ResponseTimeType.ALL_MEMBERS_AWAY_RESPONSE);
                    f4525hC.put(Long.valueOf(channelResponseTime5.getChannelId()), channelResponseTime5);
                }
            }
        }
        m39819ex();
    }

    /* renamed from: d */
    public static String m39820d(Context context, long j) {
        if (context == null || j == 0) {
            return null;
        }
        return m39822a(context, m39817r(j));
    }

    /* renamed from: ex */
    private static void m39819ex() {
        f4526hD = System.currentTimeMillis();
    }

    /* renamed from: ey */
    public static long m39818ey() {
        return f4526hD;
    }

    /* renamed from: r */
    private static ChannelResponseTime m39817r(long j) {
        if (!C1716k.m39894d(f4525hC) || !f4525hC.containsKey(Long.valueOf(j))) {
            return null;
        }
        return f4525hC.get(Long.valueOf(j));
    }
}
