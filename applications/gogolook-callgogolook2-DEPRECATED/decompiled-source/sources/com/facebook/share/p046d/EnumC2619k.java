package com.facebook.share.p046d;

import com.facebook.internal.AbstractC2404f;
/* renamed from: com.facebook.share.d.k */
/* loaded from: classes-dex2jar.jar:com/facebook/share/d/k.class */
public enum EnumC2619k implements AbstractC2404f {
    MESSAGE_DIALOG(20140204),
    PHOTOS(20140324),
    VIDEO(20141218),
    MESSENGER_GENERIC_TEMPLATE(20171115),
    MESSENGER_OPEN_GRAPH_MUSIC_TEMPLATE(20171115),
    MESSENGER_MEDIA_TEMPLATE(20171115);
    

    /* renamed from: a */
    public int f3542a;

    EnumC2619k(int i) {
        this.f3542a = i;
    }

    @Override // com.facebook.internal.AbstractC2404f
    /* renamed from: a */
    public int mo34025a() {
        return this.f3542a;
    }

    @Override // com.facebook.internal.AbstractC2404f
    /* renamed from: b */
    public String mo34024b() {
        return "com.facebook.platform.action.request.MESSAGE_DIALOG";
    }
}
