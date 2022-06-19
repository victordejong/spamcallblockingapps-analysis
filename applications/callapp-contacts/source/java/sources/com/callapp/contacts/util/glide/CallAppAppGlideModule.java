package com.callapp.contacts.util.glide;

import android.content.Context;
import com.bumptech.glide.C3556d;
import com.bumptech.glide.load.engine.p120b.C3745g;
import com.bumptech.glide.load.engine.p120b.C3748i;
import com.bumptech.glide.load.engine.p121c.ExecutorServiceC3756a;
import com.bumptech.glide.load.resource.bitmap.AbstractC3870k;
import com.bumptech.glide.p110c.AbstractC3550a;
import com.bumptech.glide.p112e.C3605h;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/glide/CallAppAppGlideModule.class */
public class CallAppAppGlideModule extends AbstractC3550a {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r1v6 */
    @Override // com.bumptech.glide.p110c.AbstractC3550a, com.bumptech.glide.p110c.AbstractC3551b
    /* renamed from: a */
    public final void mo27114a(Context context, C3556d c3556d) {
        if (CallAppApplication.get().getResources().getBoolean(2131034115)) {
            c3556d.f13554l = 2;
        }
        long totalExternalStorageSizeMB = (long) (IoUtils.getTotalExternalStorageSizeMB() * 1024 * 1024 * 0.2d);
        ?? min = totalExternalStorageSizeMB != 0 ? Math.min(2147483648L, totalExternalStorageSizeMB) : true;
        CLog.m27611a(CallAppAppGlideModule.class, "diskCacheSizeBytes: " + (min == true ? 1L : 0L) + ", 2gb: 2147483648, 20 Percent of total external storage size: " + totalExternalStorageSizeMB);
        c3556d.f13548f = new C3745g((long) new C3748i.C3749a(context).m37425a().m37424b().f13938b);
        c3556d.f13550h = ExecutorServiceC3756a.m37417a().m37410a(4).m37411a();
        c3556d.m37714a(new C3605h().mo27092a(AbstractC3870k.f14227a));
    }

    @Override // com.bumptech.glide.p110c.AbstractC3550a
    public boolean isManifestParsingEnabled() {
        return false;
    }
}
