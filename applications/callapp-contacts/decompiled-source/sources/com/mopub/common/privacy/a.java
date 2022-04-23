package com.mopub.common.privacy;

import com.mopub.common.Preconditions;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/a.class */
final class a {

    /* renamed from: a  reason: collision with root package name */
    private final String f33987a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str) {
        Preconditions.checkNotNull(str);
        this.f33987a = str;
    }

    public final String getHtml() {
        return this.f33987a;
    }
}
