package com.freshchat.consumer.sdk.service.p068e;

import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.service.e.ah */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/e/ah.class */
public class C1885ah implements AbstractC1906j {
    private String categoryId;

    /* renamed from: rh */
    private int f4728rh;
    private List<String> tags;

    public C1885ah(int i, String str, List<String> list) {
        this.f4728rh = i;
        this.categoryId = str;
        this.tags = list;
    }

    public String getCategoryId() {
        return this.categoryId;
    }

    public List<String> getTags() {
        return this.tags;
    }

    /* renamed from: iU */
    public int m39357iU() {
        return this.f4728rh;
    }
}
