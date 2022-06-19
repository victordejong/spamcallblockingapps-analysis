package androidx.media;

import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Bundle;
import android.os.Parcel;
import android.service.media.MediaBrowserService;
import android.support.p003v4.media.session.MediaSessionCompat;
import android.util.Log;
import androidx.media.C0872c;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media.d */
/* loaded from: classes-dex2jar.jar:androidx/media/d.class */
public class C0875d {

    /* renamed from: a */
    static Field f3879a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/d$a.class */
    public static class C0876a extends C0872c.C0873a {
        C0876a(Context context, AbstractC0878c abstractC0878c) {
            super(context, abstractC0878c);
        }

        @Override // android.service.media.MediaBrowserService
        public void onLoadChildren(String str, MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result, Bundle bundle) {
            MediaSessionCompat.m35842a(bundle);
            ((AbstractC0878c) this.f3877d).mo32235d(str, new C0877b(result), bundle);
        }
    }

    /* renamed from: androidx.media.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/media/d$b.class */
    static class C0877b {

        /* renamed from: a */
        MediaBrowserService.Result f3880a;

        C0877b(MediaBrowserService.Result result) {
            this.f3880a = result;
        }

        /* renamed from: a */
        List<MediaBrowser.MediaItem> m32237a(List<Parcel> list) {
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
        public void m32236b(List<Parcel> list, int i) {
            try {
                C0875d.f3879a.setInt(this.f3880a, i);
            } catch (IllegalAccessException e) {
                Log.w("MBSCompatApi26", e);
            }
            this.f3880a.sendResult(m32237a(list));
        }
    }

    /* renamed from: androidx.media.d$c */
    /* loaded from: classes-dex2jar.jar:androidx/media/d$c.class */
    public interface AbstractC0878c extends C0872c.AbstractC0874b {
        /* renamed from: d */
        void mo32235d(String str, C0877b c0877b, Bundle bundle);
    }

    static {
        try {
            Field declaredField = MediaBrowserService.Result.class.getDeclaredField("mFlags");
            f3879a = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            Log.w("MBSCompatApi26", e);
        }
    }

    /* renamed from: a */
    public static Object m32238a(Context context, AbstractC0878c abstractC0878c) {
        return new C0876a(context, abstractC0878c);
    }
}
