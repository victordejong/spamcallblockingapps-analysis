package com.gogolook.whoscallsdk.p051ml.callback;

import com.gogolook.whoscallsdk.p051ml.request.Data;
import java.util.List;
import kotlin.Metadata;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0016\u0010\u0004\u001a\u00020\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH&¨\u0006\u000b"}, m815d2 = {"Lcom/gogolook/whoscallsdk/ml/callback/InferCallback;", "", "onInferComplete", "", "onInferFailed", "keyList", "", "", "onInferSuccess", "data", "Lcom/gogolook/whoscallsdk/ml/request/Data;", "whoscallSDK_ml_release"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: com.gogolook.whoscallsdk.ml.callback.InferCallback */
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/ml/callback/InferCallback.class */
public interface InferCallback {
    void onInferComplete();

    void onInferFailed(List<String> list);

    void onInferSuccess(Data data);
}
