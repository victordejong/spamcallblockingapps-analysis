package gogolook.callgogolook2.messaging.datamodel.data;

import android.graphics.Rect;
import android.net.Uri;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/data/MediaPickerMessagePartData.class */
public class MediaPickerMessagePartData extends MessagePartData {

    /* renamed from: m */
    public final Rect f11204m;

    public MediaPickerMessagePartData(Rect rect, String str, Uri uri, int i, int i2) {
        this(rect, null, str, uri, i, i2);
    }

    public MediaPickerMessagePartData(Rect rect, String str, String str2, Uri uri, int i, int i2) {
        this(rect, str, str2, uri, i, i2, false);
    }

    public MediaPickerMessagePartData(Rect rect, String str, String str2, Uri uri, int i, int i2, boolean z) {
        super(str, str2, uri, i, i2, z);
        this.f11204m = rect;
    }

    /* renamed from: F */
    public Rect m27647F() {
        return this.f11204m;
    }

    /* renamed from: a */
    public void m27646a(Rect rect) {
        this.f11204m.set(rect);
    }
}
