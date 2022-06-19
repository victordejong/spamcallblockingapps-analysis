package androidx.media;

import android.content.Context;
import android.media.browse.MediaBrowser;
import android.os.Parcel;
import android.service.media.MediaBrowserService;
import androidx.media.C0867b;
/* renamed from: androidx.media.c */
/* loaded from: classes-dex2jar.jar:androidx/media/c.class */
class C0872c {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/c$a.class */
    public static class C0873a extends C0867b.C0869b {
        public C0873a(Context context, AbstractC0874b abstractC0874b) {
            super(context, abstractC0874b);
        }

        @Override // android.service.media.MediaBrowserService
        public void onLoadItem(String str, MediaBrowserService.Result<MediaBrowser.MediaItem> result) {
            ((AbstractC0874b) this.f3877d).mo32239b(str, new C0867b.C0870c<>(result));
        }
    }

    /* renamed from: androidx.media.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/media/c$b.class */
    public interface AbstractC0874b extends C0867b.AbstractC0871d {
        /* renamed from: b */
        void mo32239b(String str, C0867b.C0870c<Parcel> c0870c);
    }

    /* renamed from: a */
    public static Object m32240a(Context context, AbstractC0874b abstractC0874b) {
        return new C0873a(context, abstractC0874b);
    }
}
