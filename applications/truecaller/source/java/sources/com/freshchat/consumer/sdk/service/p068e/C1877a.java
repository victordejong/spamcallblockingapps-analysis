package com.freshchat.consumer.sdk.service.p068e;

import com.freshchat.consumer.sdk.beans.User;
import com.freshchat.consumer.sdk.p057j.C1597ab;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.service.e.a */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/service/e/a.class */
public class C1877a implements AbstractC1906j {

    /* renamed from: fE */
    private boolean f4722fE;

    /* renamed from: fF */
    private boolean f4723fF;
    @C1597ab.AbstractC1599b
    private User user;

    /* renamed from: cN */
    public boolean m39367cN() {
        return this.f4722fE;
    }

    /* renamed from: cY */
    public boolean m39366cY() {
        return this.f4723fF;
    }

    public User getUser() {
        return this.user;
    }

    /* renamed from: n */
    public void m39365n(boolean z) {
        this.f4722fE = z;
    }

    /* renamed from: o */
    public void m39364o(boolean z) {
        this.f4723fF = z;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CreateOrUpdateUserRequest [user=");
        m8728C.append(this.user);
        m8728C.append(", forceUserCreate = ");
        return C22128a.m8590o(m8728C, this.f4722fE, "]");
    }
}
