package com.taiwanmobile.p055pt.adp.view.webview.mraid;
/* renamed from: com.taiwanmobile.pt.adp.view.webview.mraid.MraidOrientationProperties */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/mraid/MraidOrientationProperties.class */
public class MraidOrientationProperties {

    /* renamed from: a */
    public Orientation f10102a = Orientation.NONE;

    /* renamed from: b */
    public boolean f10103b = true;

    /* renamed from: com.taiwanmobile.pt.adp.view.webview.mraid.MraidOrientationProperties$Orientation */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/mraid/MraidOrientationProperties$Orientation.class */
    public enum Orientation {
        PORTRAIT("portrait"),
        LANDSCAPE("landscape"),
        NONE("none");
        

        /* renamed from: a */
        public final String f10105a;

        Orientation(String str) {
            this.f10105a = str;
        }

        public String getString() {
            return this.f10105a;
        }
    }

    public Orientation getOrientation() {
        return this.f10102a;
    }

    public boolean isAllowOrientationChange() {
        return this.f10103b;
    }

    public void setAllowOrientationChange(boolean z) {
        if (this.f10103b != z) {
            this.f10103b = z;
        }
    }

    public void setOrientation(Orientation orientation) {
        if (this.f10102a != orientation && orientation != null) {
            this.f10102a = orientation;
        }
    }

    public void setOrientation(String str) {
        if (!this.f10102a.getString().equals(str) && str != null) {
            char c = 65535;
            int hashCode = str.hashCode();
            if (hashCode != 3387192) {
                if (hashCode != 729267099) {
                    if (hashCode == 1430647483 && str.equals("landscape")) {
                        c = 2;
                    }
                } else if (str.equals("portrait")) {
                    c = 1;
                }
            } else if (str.equals("none")) {
                c = 0;
            }
            if (c == 0) {
                this.f10102a = Orientation.NONE;
            } else if (c == 1) {
                this.f10102a = Orientation.PORTRAIT;
            } else if (c != 2) {
                this.f10102a = Orientation.NONE;
            } else {
                this.f10102a = Orientation.LANDSCAPE;
            }
        }
    }
}
