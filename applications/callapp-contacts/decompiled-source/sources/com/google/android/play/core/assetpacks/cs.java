package com.google.android.play.core.assetpacks;

import android.os.ParcelFileDescriptor;
import com.google.android.play.core.tasks.d;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/cs.class */
interface cs {
    d<List<String>> a(Map<String, Long> map);

    void a();

    void a(int i);

    void a(int i, String str);

    void a(int i, String str, String str2, int i2);

    void a(List<String> list);

    d<ParcelFileDescriptor> b(int i, String str, String str2, int i2);
}
