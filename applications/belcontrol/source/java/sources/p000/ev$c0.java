package p000;

import androidx.media2.common.FileMediaItem;
import androidx.media2.common.MediaItem;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: ev$c0 */
/* loaded from: classes-dex2jar.jar:ev$c0.class */
public class ev$c0 {

    /* renamed from: a */
    public ArrayList<MediaItem> f6430a = new ArrayList<>();

    /* renamed from: a */
    public void m2051a() {
        Iterator<MediaItem> it = this.f6430a.iterator();
        while (it.hasNext()) {
            FileMediaItem fileMediaItem = (MediaItem) it.next();
            if (fileMediaItem instanceof FileMediaItem) {
                fileMediaItem.j();
            }
        }
        this.f6430a.clear();
    }

    /* renamed from: b */
    public int m2050b(Object obj) {
        return this.f6430a.indexOf(obj);
    }
}
