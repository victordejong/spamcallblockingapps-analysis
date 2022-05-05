package com.google.firebase.appindexing.internal;

import android.annotation.TargetApi;
import android.app.slice.SliceManager;
import android.content.Context;
import android.net.Uri;
@TargetApi(28)
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzab.class */
final class zzab extends zzaa {
    private final SliceManager zzfx;

    public zzab(Context context) {
        this.zzfx = (SliceManager) context.getSystemService(SliceManager.class);
    }

    @Override // com.google.firebase.appindexing.internal.zzaa
    public final void grantSlicePermission(String str, Uri uri) {
        this.zzfx.grantSlicePermission(str, uri);
    }
}
