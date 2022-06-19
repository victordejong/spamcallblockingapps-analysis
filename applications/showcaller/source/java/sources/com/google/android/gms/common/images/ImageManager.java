package com.google.android.gms.common.images;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.base.C7286e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager.class */
public final class ImageManager {

    /* renamed from: a */
    private static final Object f19428a = new Object();

    /* renamed from: b */
    private static HashSet<Uri> f19429b = new HashSet<>();

    @KeepName
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/images/ImageManager$ImageReceiver.class */
    public final class ImageReceiver extends ResultReceiver {

        /* renamed from: d */
        private final Uri f19430d;

        /* renamed from: e */
        private final ArrayList<AbstractC6102c> f19431e;

        /* renamed from: f */
        final /* synthetic */ ImageManager f19432f;

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
            ImageManager.m17170h(this.f19432f).execute(new RunnableC6100a(this.f19432f, this.f19430d, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }
    }

    /* renamed from: a */
    public static /* synthetic */ Map m17177a(ImageManager imageManager) {
        throw null;
    }

    /* renamed from: b */
    public static /* synthetic */ Context m17176b(ImageManager imageManager) {
        throw null;
    }

    /* renamed from: c */
    public static /* synthetic */ C7286e m17175c(ImageManager imageManager) {
        throw null;
    }

    /* renamed from: d */
    public static /* synthetic */ Map m17174d(ImageManager imageManager) {
        throw null;
    }

    /* renamed from: e */
    public static /* synthetic */ Map m17173e(ImageManager imageManager) {
        throw null;
    }

    /* renamed from: h */
    static /* synthetic */ ExecutorService m17170h(ImageManager imageManager) {
        throw null;
    }

    /* renamed from: i */
    public static /* synthetic */ Handler m17169i(ImageManager imageManager) {
        throw null;
    }
}
