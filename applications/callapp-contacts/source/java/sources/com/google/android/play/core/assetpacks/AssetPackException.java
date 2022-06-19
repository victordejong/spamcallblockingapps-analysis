package com.google.android.play.core.assetpacks;

import com.google.android.play.core.assetpacks.model.C14986a;
import com.google.android.play.core.tasks.AbstractC15186j;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/AssetPackException.class */
public class AssetPackException extends AbstractC15186j {

    /* renamed from: a */
    private final int f54364a;

    public AssetPackException(int i) {
        super(String.format("Asset Pack Download Error(%d): %s", Integer.valueOf(i), C14986a.m9697a(i)));
        if (i != 0) {
            this.f54364a = i;
            return;
        }
        throw new IllegalArgumentException("errorCode should not be 0.");
    }
}
