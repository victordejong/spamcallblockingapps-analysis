package com.verizon.ads.verizonnativecontroller;

import android.view.View;
import com.verizon.ads.Component;
import com.verizon.ads.support.FileStorageCache;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/NativeComponent.class */
public interface NativeComponent extends Component {
    void applyStyle(View view, Map<String, String> map);

    Object getStyleAttributeValue(String str, Object obj);

    String getType();

    void overrideStyle(View view, Map<String, String> map);

    void queueFilesForDownload(FileStorageCache fileStorageCache);
}
