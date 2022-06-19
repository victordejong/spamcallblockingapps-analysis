package com.freshchat.consumer.sdk.p055h;

import android.content.Intent;
import com.freshchat.consumer.sdk.p057j.C1611ag;
/* renamed from: com.freshchat.consumer.sdk.h.a */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/h/a.class */
public class C1554a {
    private long channelId;
    private long conversationId;

    /* renamed from: ej */
    private String f4204ej;

    /* renamed from: fb */
    private int f4205fb;

    /* renamed from: fc */
    private String f4206fc;

    /* renamed from: fd */
    private String f4207fd;

    /* renamed from: fe */
    private boolean f4208fe;

    /* renamed from: ff */
    private String f4209ff;

    /* renamed from: fg */
    private String f4210fg;

    /* renamed from: fh */
    private String f4211fh;
    private long marketingId;
    private long timestamp;

    public C1554a(Intent intent) {
        m40545o(C1611ag.m40297e(intent, "notif_type"));
        m40557ai(C1611ag.m40300b(intent, "body"));
        m40556aj(C1611ag.m40300b(intent, "img_url"));
        setTimestamp(C1611ag.m40298d(intent, "timestamp"));
        m40546l(C1611ag.m40299c(intent, "ephemeral"));
        setChannelId(C1611ag.m40298d(intent, "channel_id"));
        setConversationId(C1611ag.m40298d(intent, "conv_id"));
        setMarketingId(C1611ag.m40298d(intent, "marketing_id"));
        m40555ak(C1611ag.m40300b(intent, "msg_alias"));
        m40554al(C1611ag.m40300b(intent, "target_user_alias"));
        m40553am(C1611ag.m40300b(intent, "user_name"));
        m40552an(C1611ag.m40300b(intent, "link_uri_1"));
    }

    /* renamed from: ai */
    public void m40557ai(String str) {
        this.f4206fc = str;
    }

    /* renamed from: aj */
    public void m40556aj(String str) {
        this.f4207fd = str;
    }

    /* renamed from: ak */
    public void m40555ak(String str) {
        this.f4204ej = str;
    }

    /* renamed from: al */
    public void m40554al(String str) {
        this.f4209ff = str;
    }

    /* renamed from: am */
    public void m40553am(String str) {
        this.f4210fg = str;
    }

    /* renamed from: an */
    public void m40552an(String str) {
        this.f4211fh = str;
    }

    /* renamed from: dl */
    public String m40551dl() {
        return this.f4207fd;
    }

    /* renamed from: dm */
    public boolean m40550dm() {
        return this.f4208fe;
    }

    /* renamed from: dn */
    public String m40549dn() {
        return this.f4204ej;
    }

    /* renamed from: do */
    public String m40548do() {
        return this.f4209ff;
    }

    /* renamed from: fK */
    public int m40547fK() {
        return this.f4205fb;
    }

    public String getBody() {
        return this.f4206fc;
    }

    public long getChannelId() {
        return this.channelId;
    }

    public long getConversationId() {
        return this.conversationId;
    }

    public long getMarketingId() {
        return this.marketingId;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    /* renamed from: l */
    public void m40546l(boolean z) {
        this.f4208fe = z;
    }

    /* renamed from: o */
    public void m40545o(int i) {
        this.f4205fb = i;
    }

    public void setChannelId(long j) {
        this.channelId = j;
    }

    public void setConversationId(long j) {
        this.conversationId = j;
    }

    public void setMarketingId(long j) {
        this.marketingId = j;
    }

    public void setTimestamp(long j) {
        this.timestamp = j;
    }
}
