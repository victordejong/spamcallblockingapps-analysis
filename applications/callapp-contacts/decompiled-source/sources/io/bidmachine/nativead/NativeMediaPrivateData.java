package io.bidmachine.nativead;

import android.graphics.Bitmap;
import android.net.Uri;
import com.explorestack.iab.vast.VastRequest;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/NativeMediaPrivateData.class */
public interface NativeMediaPrivateData extends NativeMediaPublicData {
    VastRequest getVastRequest();

    void setIconBitmap(Bitmap bitmap);

    void setIconUri(Uri uri);

    void setImageBitmap(Bitmap bitmap);

    void setImageUri(Uri uri);

    void setVastRequest(VastRequest vastRequest);

    void setVideoUri(Uri uri);
}
