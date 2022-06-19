package p1727n3.p1874y.p1907d;

import androidx.media2.common.MediaItem;
import java.util.HashMap;
import java.util.Map;
/* renamed from: n3.y.d.b */
/* loaded from: classes-dex2jar.jar:n3/y/d/b.class */
public class C27496b {

    /* renamed from: a */
    public static final Map<String, String> f77405a;

    /* renamed from: b */
    public static final Map<String, String> f77406b = new HashMap();

    static {
        HashMap hashMap = new HashMap();
        f77405a = hashMap;
        hashMap.put("android.media.metadata.ADVERTISEMENT", "androidx.media2.metadata.ADVERTISEMENT");
        hashMap.put("android.media.metadata.BT_FOLDER_TYPE", "androidx.media2.metadata.BROWSABLE");
        hashMap.put("android.media.metadata.DOWNLOAD_STATUS", "androidx.media2.metadata.DOWNLOAD_STATUS");
        for (Map.Entry entry : hashMap.entrySet()) {
            Map<String, String> map = f77406b;
            if (map.containsKey(entry.getValue())) {
                throw new RuntimeException("Shouldn't map to the same value");
            }
            map.put((String) entry.getValue(), (String) entry.getKey());
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: a */
    public static MediaItem m198a(MediaItem mediaItem) {
        MediaItem mediaItem2 = mediaItem;
        if (mediaItem != null) {
            if (mediaItem.getClass() == MediaItem.class) {
                mediaItem2 = mediaItem;
            } else {
                char c = mediaItem.c;
                if (c < 0) {
                    c = 0;
                }
                ?? r0 = mediaItem.d;
                char c2 = r0;
                if (r0 < 0) {
                    c2 = 65535;
                }
                mediaItem2 = new MediaItem(mediaItem.e(), c, c2);
            }
        }
        return mediaItem2;
    }
}
