package com.asus.updatesdk.cache;

import android.content.Context;
import android.os.Environment;
import com.bumptech.glide.e.a;
import com.bumptech.glide.f;
import com.bumptech.glide.load.b.b.a;
import com.bumptech.glide.load.b.b.e;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/cache/CacheGlideModule.class */
public class CacheGlideModule implements a {
    @Override // com.bumptech.glide.e.a
    public void applyOptions(final Context context, f fVar) {
        if (context.getPackageManager().checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", context.getPackageName()) == 0) {
            fVar.h = new a.AbstractC0098a() { // from class: com.asus.updatesdk.cache.CacheGlideModule.1
                @Override // com.bumptech.glide.load.b.b.a.AbstractC0098a
                public com.bumptech.glide.load.b.b.a build() {
                    File file = new File(Environment.getExternalStorageDirectory().getPath() + "/Android/data/com.asus.asusupdatesdk/cache/", "icons");
                    return file.mkdirs() ? e.a(file, 52428800) : e.a(context.getCacheDir(), 52428800);
                }
            };
        } else {
            fVar.h = new com.bumptech.glide.load.b.b.f(context, (byte) 0);
        }
    }

    @Override // com.bumptech.glide.e.a
    public void registerComponents(Context context, com.bumptech.glide.e eVar) {
    }
}
