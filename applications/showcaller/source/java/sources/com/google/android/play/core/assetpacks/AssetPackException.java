package com.google.android.play.core.assetpacks;

import com.google.android.play.core.assetpacks.p276k2.C8405a;
import com.google.android.play.core.tasks.AbstractC8578j;
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/AssetPackException.class */
public class AssetPackException extends AbstractC8578j {

    /* renamed from: a */
    private final int f37649a;

    public AssetPackException(int i) {
        super(String.format("Asset Pack Download Error(%d): %s", Integer.valueOf(i), C8405a.m3720a(i)));
        if (i != 0) {
            this.f37649a = i;
            return;
        }
        throw new IllegalArgumentException("errorCode should not be 0.");
    }

    @Override // com.google.android.play.core.tasks.AbstractC8578j
    public int getErrorCode() {
        return this.f37649a;
    }
}
