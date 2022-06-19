package com.bytedance.sdk.openadsdk.preload.geckox.utils;

import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.utils.k */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/utils/k.class */
public class C5427k {
    /* renamed from: a */
    public static Long m32344a(File file) {
        Long l;
        if (file == null) {
            return null;
        }
        File[] listFiles = file.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.utils.k.1
            @Override // java.io.FileFilter
            public final boolean accept(File file2) {
                return file2.isDirectory();
            }
        });
        Long l2 = null;
        if (listFiles != null) {
            if (listFiles.length != 0) {
                int length = listFiles.length;
                int i = 0;
                Long l3 = null;
                while (true) {
                    Long l4 = l3;
                    l2 = l4;
                    if (i >= length) {
                        break;
                    }
                    try {
                        long longValue = Long.valueOf(listFiles[i].getName()).longValue();
                        if (l4 == null) {
                            l = Long.valueOf(longValue);
                        } else {
                            l = l4;
                            if (longValue > l4.longValue()) {
                                l = Long.valueOf(longValue);
                            }
                        }
                    } catch (Exception e) {
                        l = l4;
                    }
                    i++;
                    l3 = l;
                }
            } else {
                l2 = null;
            }
        }
        return l2;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005b -> B:16:0x0053). Please submit an issue!!! */
    /* renamed from: b */
    public static List<Long> m32343b(File file) {
        if (file == null) {
            return null;
        }
        File[] listFiles = file.listFiles(new FileFilter() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.utils.k.2
            @Override // java.io.FileFilter
            public final boolean accept(File file2) {
                return file2.isDirectory();
            }
        });
        ArrayList arrayList = null;
        if (listFiles != null) {
            if (listFiles.length != 0) {
                ArrayList arrayList2 = new ArrayList();
                int length = listFiles.length;
                int i = 0;
                while (true) {
                    arrayList = arrayList2;
                    if (i >= length) {
                        break;
                    }
                    try {
                        arrayList2.add(Long.valueOf(Long.valueOf(listFiles[i].getName()).longValue()));
                    } catch (Exception e) {
                    }
                    i++;
                }
            } else {
                arrayList = null;
            }
        }
        return arrayList;
    }
}
