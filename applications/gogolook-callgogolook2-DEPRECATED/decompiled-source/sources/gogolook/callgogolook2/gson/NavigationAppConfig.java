package gogolook.callgogolook2.gson;

import java.util.List;
import p081h.p203i.p384e.p385v.AbstractC10120c;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/NavigationAppConfig.class */
public class NavigationAppConfig {
    @AbstractC10120c("navigation_app")
    public List<NavigationApp> navigationAppList;

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/NavigationAppConfig$NavigationApp.class */
    public class NavigationApp {
        @AbstractC10120c("app_name")
        public String appName;
        @AbstractC10120c("package_name")
        public String packageName;
        public final /* synthetic */ NavigationAppConfig this$0;

        /* renamed from: a */
        public String m28396a() {
            return this.packageName;
        }
    }

    /* renamed from: a */
    public List<NavigationApp> m28397a() {
        return this.navigationAppList;
    }
}
