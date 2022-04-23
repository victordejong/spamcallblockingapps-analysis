package com.verizon.ads.verizonnativecontroller;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.verizon.ads.AdSession;
import com.verizon.ads.Component;
import com.verizon.ads.ComponentFactory;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.support.FileStorageCache;
import com.verizon.ads.support.utils.ViewUtils;
import com.verizon.ads.utils.ThreadUtils;
import java.io.File;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent.class */
class VerizonNativeImageComponent extends VerizonNativeComponent implements NativeImageComponent {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35748a = Logger.getInstance(VerizonNativeImageComponent.class);

    /* renamed from: b  reason: collision with root package name */
    private static final String f35749b = VerizonNativeImageComponent.class.getSimpleName();

    /* renamed from: c  reason: collision with root package name */
    private ImageView f35750c;
    private int e;
    private int f;
    private String g;
    private FileStorageCache h;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent$Factory.class */
    static class Factory implements ComponentFactory {
        @Override // com.verizon.ads.ComponentFactory
        public Component newInstance(Context context, JSONObject jSONObject, Object... objArr) {
            if (jSONObject == null) {
                VerizonNativeImageComponent.f35748a.e("componentInfo cannot be null.");
                return null;
            } else if (objArr == null || objArr.length < 2 || !(objArr[0] instanceof AdSession) || !(objArr[1] instanceof String)) {
                VerizonNativeImageComponent.f35748a.e("Call to newInstance requires AdSession and component ID");
                return null;
            } else {
                AdSession adSession = (AdSession) objArr[0];
                String str = (String) objArr[1];
                try {
                    String string = jSONObject.getString("contentType");
                    JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                    return new VerizonNativeImageComponent(adSession, str, string, jSONObject, jSONObject2.getString("url"), jSONObject2.optInt("width", -1), jSONObject2.optInt("height", -1));
                } catch (JSONException e) {
                    VerizonNativeImageComponent.f35748a.e("Error occurred creating VerizonImageView", e);
                    return null;
                }
            }
        }
    }

    VerizonNativeImageComponent(AdSession adSession, String str, String str2, JSONObject jSONObject, String str3, int i, int i2) {
        super(adSession, str, str2, jSONObject);
        this.g = str3;
        this.e = i;
        this.f = i2;
    }

    private Bitmap a(boolean z) {
        BitmapFactory.Options options;
        FileStorageCache fileStorageCache = this.h;
        if (fileStorageCache == null) {
            f35748a.e("File cache is null");
            return null;
        }
        File file = fileStorageCache.getFile(this.g);
        if (file == null || !file.exists()) {
            f35748a.e("Image file does not exist");
            return null;
        }
        if (z) {
            f35748a.d("Retrieving image width and height");
            options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
        } else {
            options = null;
        }
        try {
            Bitmap decodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
            if (this.e == -1) {
                this.e = z ? options.outWidth : decodeFile.getWidth();
            }
            if (this.f == -1) {
                this.f = z ? options.outHeight : decodeFile.getHeight();
            }
            if (Logger.isLogLevelEnabled(3)) {
                f35748a.d(String.format("Bitmap width: %d, height: %d", Integer.valueOf(this.e), Integer.valueOf(this.f)));
            }
            return decodeFile;
        } catch (Exception e) {
            f35748a.e("Error decoding image file", e);
            return null;
        }
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeMediaComponent
    public int getHeight() {
        if (this.f == -1) {
            a(true);
        }
        return this.f;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeImageComponent
    public float getOpacity() {
        ImageView imageView = this.f35750c;
        if (imageView == null) {
            return 1.0f;
        }
        return imageView.getAlpha();
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeImageComponent
    public Uri getUri() {
        return Uri.parse(this.g);
    }

    @Override // com.verizon.ads.ViewComponent
    public View getView(Context context) {
        if (!ThreadUtils.isUiThread()) {
            f35748a.e("Must be on the UI thread to get the view");
            return null;
        }
        if (this.f35750c == null) {
            if (context == null) {
                f35748a.e("Context is null");
                return null;
            }
            ErrorInfo prepareView = prepareView(new ImageView(context));
            if (prepareView != null) {
                f35748a.e(prepareView.toString());
                return null;
            }
        }
        return this.f35750c;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeMediaComponent
    public int getWidth() {
        if (this.e == -1) {
            a(true);
        }
        return this.e;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeViewComponent
    public boolean isDescendantOf(ViewGroup viewGroup) {
        return a(viewGroup, this.f35750c);
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeViewComponent
    public ErrorInfo prepareView(View view) {
        if (this.f35750c != null) {
            return new ErrorInfo(f35749b, "View already exists for component", -1);
        }
        if (!(view instanceof ImageView)) {
            return new ErrorInfo(f35749b, "View is not an instance of ImageView", -1);
        }
        if (!ThreadUtils.isUiThread()) {
            return new ErrorInfo(f35749b, "Must be on the UI thread to prepare the view", -1);
        }
        Bitmap a2 = a(false);
        if (a2 == null) {
            return new ErrorInfo(f35749b, "Bitmap could not be loaded", -1);
        }
        ImageView imageView = (ImageView) view;
        this.f35750c = imageView;
        if (imageView.getLayoutParams() == null) {
            this.f35750c.setLayoutParams(new ViewGroup.LayoutParams(this.e, this.f));
        }
        this.f35750c.setImageBitmap(a2);
        a(this.f35750c);
        b(view);
        return null;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeComponent
    public void queueFilesForDownload(FileStorageCache fileStorageCache) {
        this.h = fileStorageCache;
        fileStorageCache.queueFileForDownload(this.g);
    }

    @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeComponent, com.verizon.ads.Component
    public void release() {
        f35748a.d("Releasing image component");
        ImageView imageView = this.f35750c;
        if (imageView != null) {
            ViewUtils.removeFromParent(imageView);
        }
        super.release();
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeImageComponent
    public void setBackgroundColor(int i) {
        ImageView imageView = this.f35750c;
        if (imageView != null) {
            imageView.setBackgroundColor(i);
        }
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeImageComponent
    public void setColorFilter(int i) {
        ImageView imageView = this.f35750c;
        if (imageView != null) {
            imageView.setColorFilter(i);
        }
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeImageComponent
    public void setOpacity(float f) {
        ImageView imageView = this.f35750c;
        if (imageView != null) {
            imageView.setAlpha(f);
        }
    }
}
