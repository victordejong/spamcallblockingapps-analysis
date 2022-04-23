package com.callapp.contacts.util.glide;

import android.content.Context;
import com.bumptech.glide.c.a;
import com.bumptech.glide.d;
import com.bumptech.glide.e.h;
import com.bumptech.glide.load.engine.b.g;
import com.bumptech.glide.load.engine.b.i;
import com.bumptech.glide.load.resource.bitmap.k;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/CallAppAppGlideModule.class */
public class CallAppAppGlideModule extends a {
    @Override // com.bumptech.glide.c.a, com.bumptech.glide.c.b
    public final void a(Context context, d dVar) {
        if (CallAppApplication.get().getResources().getBoolean(2131034115)) {
            dVar.l = 2;
        }
        long totalExternalStorageSizeMB = (long) (IoUtils.getTotalExternalStorageSizeMB() * 1024 * 1024 * 0.2d);
        long min = totalExternalStorageSizeMB != 0 ? Math.min(2147483648L, totalExternalStorageSizeMB) : 262144000L;
        CLog.a(CallAppAppGlideModule.class, "diskCacheSizeBytes: " + min + ", 2gb: 2147483648, 20 Percent of total external storage size: " + totalExternalStorageSizeMB);
        dVar.f = new g((long) new i.a(context).a().b().f7492b);
        dVar.h = com.bumptech.glide.load.engine.c.a.a().a(4).a();
        dVar.a(new h().a(k.f7664a));
    }

    @Override // com.bumptech.glide.c.a
    public boolean isManifestParsingEnabled() {
        return false;
    }
}
