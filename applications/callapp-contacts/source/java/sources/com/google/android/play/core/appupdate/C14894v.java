package com.google.android.play.core.appupdate;

import com.google.android.play.core.appupdate.AbstractC14875d;
/* renamed from: com.google.android.play.core.appupdate.v */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/appupdate/v.class */
final class C14894v extends AbstractC14875d.AbstractC14876a {

    /* renamed from: a */
    Integer f54352a;

    /* renamed from: b */
    private Boolean f54353b;

    @Override // com.google.android.play.core.appupdate.AbstractC14875d.AbstractC14876a
    /* renamed from: a */
    public final AbstractC14875d.AbstractC14876a mo9797a() {
        this.f54353b = Boolean.FALSE;
        return this;
    }

    @Override // com.google.android.play.core.appupdate.AbstractC14875d.AbstractC14876a
    /* renamed from: b */
    public final AbstractC14875d mo9796b() {
        String str = "";
        if (this.f54352a == null) {
            str = "".concat(" appUpdateType");
        }
        String str2 = str;
        if (this.f54353b == null) {
            str2 = String.valueOf(str).concat(" allowAssetPackDeletion");
        }
        if (!str2.isEmpty()) {
            String valueOf = String.valueOf(str2);
            throw new IllegalStateException(valueOf.length() != 0 ? "Missing required properties:".concat(valueOf) : new String("Missing required properties:"));
        }
        return new C14895w(this.f54352a.intValue(), this.f54353b.booleanValue());
    }
}
