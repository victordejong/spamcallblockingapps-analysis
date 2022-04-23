package com.google.android.play.core.appupdate;

import com.google.android.play.core.appupdate.d;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/v.class */
final class v extends d.a {

    /* renamed from: a  reason: collision with root package name */
    Integer f31066a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f31067b;

    @Override // com.google.android.play.core.appupdate.d.a
    public final d.a a() {
        this.f31067b = Boolean.FALSE;
        return this;
    }

    @Override // com.google.android.play.core.appupdate.d.a
    public final d b() {
        String str = "";
        if (this.f31066a == null) {
            str = "".concat(" appUpdateType");
        }
        String str2 = str;
        if (this.f31067b == null) {
            str2 = String.valueOf(str).concat(" allowAssetPackDeletion");
        }
        if (str2.isEmpty()) {
            return new w(this.f31066a.intValue(), this.f31067b.booleanValue());
        }
        String valueOf = String.valueOf(str2);
        throw new IllegalStateException(valueOf.length() != 0 ? "Missing required properties:".concat(valueOf) : new String("Missing required properties:"));
    }
}
