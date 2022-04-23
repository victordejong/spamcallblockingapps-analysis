package gogolook.callgogolook2.gson;

import java.util.List;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/TutorialConfig.class */
public class TutorialConfig {
    @AbstractC10120c("devices")
    public List<Device> deviceList;

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/TutorialConfig$Device.class */
    public class Device {
        @AbstractC10120c("customs")
        public List<Custom> customList;
        @AbstractC10120c("default_url")
        public String defaultUrl;
        public String manufacturer;
        public final /* synthetic */ TutorialConfig this$0;

        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/TutorialConfig$Device$Custom.class */
        public class Custom {
            @AbstractC10120c("models")
            public List<String> modelList;
            public final /* synthetic */ Device this$1;
            public String url;

            /* renamed from: a */
            public List<String> m28178a() {
                return this.modelList;
            }

            /* renamed from: b */
            public String m28177b() {
                return this.url;
            }
        }

        /* renamed from: a */
        public List<Custom> m28181a() {
            return this.customList;
        }

        /* renamed from: b */
        public String m28180b() {
            return this.defaultUrl;
        }

        /* renamed from: c */
        public String m28179c() {
            return this.manufacturer;
        }
    }

    /* renamed from: a */
    public List<Device> m28182a() {
        return this.deviceList;
    }
}
