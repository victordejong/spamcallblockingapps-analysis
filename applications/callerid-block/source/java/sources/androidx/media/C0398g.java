package androidx.media;

import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Parcel;
import android.service.media.MediaBrowserService;
import android.util.Log;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.media.g */
/* loaded from: classes-dex2jar.jar:androidx/media/g.class */
class C0398g {

    /* renamed from: a */
    static Field f2138a;

    /* renamed from: androidx.media.g$b */
    /* loaded from: classes-dex2jar.jar:androidx/media/g$b.class */
    static class C0399b {

        /* renamed from: a */
        MediaBrowserService.Result f2139a;

        C0399b(MediaBrowserService.Result result) {
            this.f2139a = result;
        }

        /* renamed from: a */
        List<MediaBrowser.MediaItem> m12904a(List<Parcel> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Parcel parcel : list) {
                parcel.setDataPosition(0);
                arrayList.add(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            }
            return arrayList;
        }

        /* renamed from: b */
        public void m12903b(List<Parcel> list, int i) {
            try {
                C0398g.f2138a.setInt(this.f2139a, i);
            } catch (IllegalAccessException e) {
                Log.w("MBSCompatApi26", e);
            }
            this.f2139a.sendResult(m12904a(list));
        }
    }

    static {
        try {
            Field declaredField = MediaBrowserService.Result.class.getDeclaredField("mFlags");
            f2138a = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            Log.w("MBSCompatApi26", e);
        }
    }

    /* renamed from: a */
    public static Object m12905a(Context context, c cVar) {
        return new a(context, cVar);
    }
}
