package androidx.webkit;
/* loaded from: classes-dex2jar.jar:androidx/webkit/WebMessageCompat.class */
public class WebMessageCompat {
    private String mData;
    private WebMessagePortCompat[] mPorts;

    public WebMessageCompat(String str) {
        this.mData = str;
    }

    public WebMessageCompat(String str, WebMessagePortCompat[] webMessagePortCompatArr) {
        this.mData = str;
        this.mPorts = webMessagePortCompatArr;
    }

    public String getData() {
        return this.mData;
    }

    public WebMessagePortCompat[] getPorts() {
        return this.mPorts;
    }
}
