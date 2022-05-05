package p081h.p119d.p120a.p124s.p125h;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.flurry.sdk.C3496r;
import java.io.FileNotFoundException;
import java.io.IOException;
/* renamed from: h.d.a.s.h.e */
/* loaded from: classes-dex2jar.jar:h/d/a/s/h/e.class */
public class C5815e extends AbstractC5820g<ParcelFileDescriptor> {
    public C5815e(Context context, Uri uri) {
        super(context, uri);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5820g
    /* renamed from: a */
    public ParcelFileDescriptor mo5520a(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        return contentResolver.openAssetFileDescriptor(uri, C3496r.f6031a).getParcelFileDescriptor();
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo5518a(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        parcelFileDescriptor.close();
    }
}
