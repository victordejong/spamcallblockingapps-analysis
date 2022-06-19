package com.facebook.gamingservices;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import java.io.File;
import java.io.FileNotFoundException;
/* loaded from: classes-dex2jar.jar:com/facebook/gamingservices/GamingImageUploader.class */
public class GamingImageUploader {
    private static final String photoUploadEdge = "me/photos";
    private Context context;

    public GamingImageUploader(Context context) {
        this.context = context;
    }

    public void uploadToMediaLibrary(String str, Bitmap bitmap, boolean z) {
        uploadToMediaLibrary(str, bitmap, z, (GraphRequest.Callback) null);
    }

    public void uploadToMediaLibrary(String str, Bitmap bitmap, boolean z, GraphRequest.Callback callback) {
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        if (z) {
            callback = new OpenGamingMediaDialog(this.context, callback);
        }
        GraphRequest.newUploadPhotoRequest(currentAccessToken, "me/photos", bitmap, str, (Bundle) null, callback).executeAsync();
    }

    public void uploadToMediaLibrary(String str, Uri uri, boolean z) throws FileNotFoundException {
        uploadToMediaLibrary(str, uri, z, (GraphRequest.Callback) null);
    }

    public void uploadToMediaLibrary(String str, Uri uri, boolean z, GraphRequest.Callback callback) throws FileNotFoundException {
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        if (z) {
            callback = new OpenGamingMediaDialog(this.context, callback);
        }
        GraphRequest.newUploadPhotoRequest(currentAccessToken, "me/photos", uri, str, (Bundle) null, callback).executeAsync();
    }

    public void uploadToMediaLibrary(String str, File file, boolean z) throws FileNotFoundException {
        uploadToMediaLibrary(str, file, z, (GraphRequest.Callback) null);
    }

    public void uploadToMediaLibrary(String str, File file, boolean z, GraphRequest.Callback callback) throws FileNotFoundException {
        AccessToken currentAccessToken = AccessToken.getCurrentAccessToken();
        if (z) {
            callback = new OpenGamingMediaDialog(this.context, callback);
        }
        GraphRequest.newUploadPhotoRequest(currentAccessToken, "me/photos", file, str, (Bundle) null, callback).executeAsync();
    }
}
