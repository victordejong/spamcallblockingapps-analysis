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

    /* renamed from: a */
    private static final Logger f61931a = Logger.getInstance(VerizonNativeImageComponent.class);

    /* renamed from: b */
    private static final String f61932b = VerizonNativeImageComponent.class.getSimpleName();

    /* renamed from: c */
    private ImageView f61933c;

    /* renamed from: e */
    private int f61934e;

    /* renamed from: f */
    private int f61935f;

    /* renamed from: g */
    private String f61936g;

    /* renamed from: h */
    private FileStorageCache f61937h;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeImageComponent$Factory.class */
    static class Factory implements ComponentFactory {
        @Override // com.verizon.ads.ComponentFactory
        public Component newInstance(Context context, JSONObject jSONObject, Object... objArr) {
            if (jSONObject == null) {
                VerizonNativeImageComponent.f61931a.m5565e("componentInfo cannot be null.");
                return null;
            } else if (objArr == null || objArr.length < 2 || !(objArr[0] instanceof AdSession) || !(objArr[1] instanceof String)) {
                VerizonNativeImageComponent.f61931a.m5565e("Call to newInstance requires AdSession and component ID");
                return null;
            } else {
                AdSession adSession = (AdSession) objArr[0];
                String str = (String) objArr[1];
                try {
                    String string = jSONObject.getString("contentType");
                    JSONObject jSONObject2 = jSONObject.getJSONObject("data");
                    return new VerizonNativeImageComponent(adSession, str, string, jSONObject, jSONObject2.getString("url"), jSONObject2.optInt("width", -1), jSONObject2.optInt("height", -1));
                } catch (JSONException e) {
                    VerizonNativeImageComponent.f61931a.m5564e("Error occurred creating VerizonImageView", e);
                    return null;
                }
            }
        }
    }

    VerizonNativeImageComponent(AdSession adSession, String str, String str2, JSONObject jSONObject, String str3, int i, int i2) {
        super(adSession, str, str2, jSONObject);
        this.f61936g = str3;
        this.f61934e = i;
        this.f61935f = i2;
    }

    /* renamed from: a */
    private Bitmap m5136a(boolean z) {
        BitmapFactory.Options options;
        FileStorageCache fileStorageCache = this.f61937h;
        if (fileStorageCache == null) {
            f61931a.m5565e("File cache is null");
            return null;
        }
        File file = fileStorageCache.getFile(this.f61936g);
        if (file == null || !file.exists()) {
            f61931a.m5565e("Image file does not exist");
            return null;
        }
        if (z) {
            f61931a.m5567d("Retrieving image width and height");
            options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
        } else {
            options = null;
        }
        try {
            Bitmap decodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
            if (this.f61934e == -1) {
                this.f61934e = z ? options.outWidth : decodeFile.getWidth();
            }
            if (this.f61935f == -1) {
                this.f61935f = z ? options.outHeight : decodeFile.getHeight();
            }
            if (Logger.isLogLevelEnabled(3)) {
                f61931a.m5567d(String.format("Bitmap width: %d, height: %d", Integer.valueOf(this.f61934e), Integer.valueOf(this.f61935f)));
            }
            return decodeFile;
        } catch (Exception e) {
            f61931a.m5564e("Error decoding image file", e);
            return null;
        }
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeMediaComponent
    public int getHeight() {
        if (this.f61935f == -1) {
            m5136a(true);
        }
        return this.f61935f;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeImageComponent
    public float getOpacity() {
        ImageView imageView = this.f61933c;
        if (imageView == null) {
            return 1.0f;
        }
        return imageView.getAlpha();
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeImageComponent
    public Uri getUri() {
        return Uri.parse(this.f61936g);
    }

    @Override // com.verizon.ads.ViewComponent
    public View getView(Context context) {
        if (!ThreadUtils.isUiThread()) {
            f61931a.m5565e("Must be on the UI thread to get the view");
            return null;
        }
        if (this.f61933c == null) {
            if (context == null) {
                f61931a.m5565e("Context is null");
                return null;
            }
            ErrorInfo prepareView = prepareView(new ImageView(context));
            if (prepareView != null) {
                f61931a.m5565e(prepareView.toString());
                return null;
            }
        }
        return this.f61933c;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeMediaComponent
    public int getWidth() {
        if (this.f61934e == -1) {
            m5136a(true);
        }
        return this.f61934e;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeViewComponent
    public boolean isDescendantOf(ViewGroup viewGroup) {
        return m5157a(viewGroup, this.f61933c);
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeViewComponent
    public ErrorInfo prepareView(View view) {
        if (this.f61933c != null) {
            return new ErrorInfo(f61932b, "View already exists for component", -1);
        }
        if (!(view instanceof ImageView)) {
            return new ErrorInfo(f61932b, "View is not an instance of ImageView", -1);
        }
        if (!ThreadUtils.isUiThread()) {
            return new ErrorInfo(f61932b, "Must be on the UI thread to prepare the view", -1);
        }
        Bitmap m5136a = m5136a(false);
        if (m5136a == null) {
            return new ErrorInfo(f61932b, "Bitmap could not be loaded", -1);
        }
        ImageView imageView = (ImageView) view;
        this.f61933c = imageView;
        if (imageView.getLayoutParams() == null) {
            this.f61933c.setLayoutParams(new ViewGroup.LayoutParams(this.f61934e, this.f61935f));
        }
        this.f61933c.setImageBitmap(m5136a);
        m5159a(this.f61933c);
        m5148b(view);
        return null;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeComponent
    public void queueFilesForDownload(FileStorageCache fileStorageCache) {
        this.f61937h = fileStorageCache;
        fileStorageCache.queueFileForDownload(this.f61936g);
    }

    @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeComponent, com.verizon.ads.Component
    public void release() {
        f61931a.m5567d("Releasing image component");
        ImageView imageView = this.f61933c;
        if (imageView != null) {
            ViewUtils.removeFromParent(imageView);
        }
        super.release();
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeImageComponent
    public void setBackgroundColor(int i) {
        ImageView imageView = this.f61933c;
        if (imageView != null) {
            imageView.setBackgroundColor(i);
        }
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeImageComponent
    public void setColorFilter(int i) {
        ImageView imageView = this.f61933c;
        if (imageView != null) {
            imageView.setColorFilter(i);
        }
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeImageComponent
    public void setOpacity(float f) {
        ImageView imageView = this.f61933c;
        if (imageView != null) {
            imageView.setAlpha(f);
        }
    }
}
