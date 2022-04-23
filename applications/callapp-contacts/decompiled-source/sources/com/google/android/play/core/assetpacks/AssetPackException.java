package com.google.android.play.core.assetpacks;

import com.google.android.play.core.assetpacks.model.a;
import com.google.android.play.core.tasks.j;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/AssetPackException.class */
public class AssetPackException extends j {

    /* renamed from: a  reason: collision with root package name */
    private final int f31076a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AssetPackException(int i) {
        super(String.format("Asset Pack Download Error(%d): %s", Integer.valueOf(i), a.a(i)));
        if (i != 0) {
            this.f31076a = i;
            return;
        }
        throw new IllegalArgumentException("errorCode should not be 0.");
    }
}
