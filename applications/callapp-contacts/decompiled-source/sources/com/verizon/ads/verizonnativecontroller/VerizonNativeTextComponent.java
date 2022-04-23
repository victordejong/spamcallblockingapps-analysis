package com.verizon.ads.verizonnativecontroller;

import android.content.Context;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.verizon.ads.AdSession;
import com.verizon.ads.Component;
import com.verizon.ads.ComponentFactory;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.support.FileStorageCache;
import com.verizon.ads.support.utils.ViewUtils;
import com.verizon.ads.utils.ThreadUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent.class */
class VerizonNativeTextComponent extends VerizonNativeComponent implements NativeTextComponent {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35752a = Logger.getInstance(VerizonNativeTextComponent.class);

    /* renamed from: b  reason: collision with root package name */
    private static final String f35753b = VerizonNativeTextComponent.class.getSimpleName();

    /* renamed from: c  reason: collision with root package name */
    private TextView f35754c;
    private final String e;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/VerizonNativeTextComponent$Factory.class */
    static class Factory implements ComponentFactory {
        @Override // com.verizon.ads.ComponentFactory
        public Component newInstance(Context context, JSONObject jSONObject, Object... objArr) {
            if (jSONObject == null) {
                VerizonNativeTextComponent.f35752a.e("componentInfo cannot be null.");
                return null;
            } else if (objArr == null || objArr.length < 2 || !(objArr[0] instanceof AdSession) || !(objArr[1] instanceof String)) {
                VerizonNativeTextComponent.f35752a.e("Call to newInstance requires AdSession and component ID");
                return null;
            } else {
                try {
                    return new VerizonNativeTextComponent((AdSession) objArr[0], (String) objArr[1], jSONObject.getString("contentType"), jSONObject, jSONObject.getJSONObject("data").getString("value"));
                } catch (JSONException e) {
                    VerizonNativeTextComponent.f35752a.e("Attribute not found in the component information structure.", e);
                    return null;
                }
            }
        }
    }

    VerizonNativeTextComponent(AdSession adSession, String str, String str2, JSONObject jSONObject, String str3) {
        super(adSession, str, str2, jSONObject);
        this.e = str3;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeTextComponent
    public String getText() {
        TextView textView = this.f35754c;
        if (textView == null || textView.getText() == null) {
            return null;
        }
        return this.f35754c.getText().toString();
    }

    @Override // com.verizon.ads.ViewComponent
    public View getView(Context context) {
        if (!ThreadUtils.isUiThread()) {
            f35752a.e("Must be on the UI thread to get the view");
            return null;
        }
        if (this.f35754c == null) {
            if (context == null) {
                f35752a.e("Context is null");
                return null;
            }
            ErrorInfo prepareView = prepareView(new AppCompatTextView(context));
            if (prepareView != null) {
                f35752a.e(prepareView.toString());
                return null;
            }
        }
        return this.f35754c;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeViewComponent
    public boolean isDescendantOf(ViewGroup viewGroup) {
        return a(viewGroup, this.f35754c);
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeViewComponent
    public ErrorInfo prepareView(View view) {
        if (this.f35754c != null) {
            return new ErrorInfo(f35753b, "View already exists for component", -1);
        }
        if (!(view instanceof TextView)) {
            return new ErrorInfo(f35753b, "View is not an instance of TextView", -1);
        }
        if (!ThreadUtils.isUiThread()) {
            return new ErrorInfo(f35753b, "Must be on the UI thread to prepare the view", -1);
        }
        TextView textView = (TextView) view;
        this.f35754c = textView;
        textView.setText(this.e);
        a(this.f35754c);
        b(view);
        return null;
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeComponent
    public void queueFilesForDownload(FileStorageCache fileStorageCache) {
    }

    @Override // com.verizon.ads.verizonnativecontroller.VerizonNativeComponent, com.verizon.ads.Component
    public void release() {
        f35752a.d("Releasing text component");
        TextView textView = this.f35754c;
        if (textView != null) {
            ViewUtils.removeFromParent(textView);
        }
        super.release();
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeTextComponent
    public void setBackgroundColor(int i) {
        TextView textView = this.f35754c;
        if (textView != null) {
            textView.setBackgroundColor(i);
        }
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeTextComponent
    public void setTextColor(int i) {
        TextView textView = this.f35754c;
        if (textView != null) {
            textView.setTextColor(i);
        }
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeTextComponent
    public void setTextSize(int i, float f) {
        TextView textView = this.f35754c;
        if (textView != null) {
            textView.setTextSize(i, f);
        }
    }

    @Override // com.verizon.ads.verizonnativecontroller.NativeTextComponent
    public void setTypeface(Typeface typeface) {
        TextView textView = this.f35754c;
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }
}
