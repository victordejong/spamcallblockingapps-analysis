package gogolook.callgogolook2.gson;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import p081h.p203i.p384e.C10099e;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C14080m2;
import p626l.p632u.C15005e0;
import p626l.p632u.C15021m;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\b\u0018�� \u00112\u00020\u0001:\u0002\u0011\u0012B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020��2\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0013"}, m815d2 = {"Lgogolook/callgogolook2/gson/DefaultSettingList;", "", "settingList", "", "Lgogolook/callgogolook2/gson/DefaultSettingList$SettingConfig;", "(Ljava/util/List;)V", "getSettingList", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Companion", "SettingConfig", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/DefaultSettingList.class */
public final class DefaultSettingList {
    public static final Companion Companion = new Companion(null);
    @AbstractC10120c("default_setting_list")
    public final List<SettingConfig> settingList;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0007¨\u0006\u0006"}, m815d2 = {"Lgogolook/callgogolook2/gson/DefaultSettingList$Companion;", "", "()V", "generateRemoteDefaultSettingMap", "", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/DefaultSettingList$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final Map<String, Object> m28434a() {
            Map<String, Object> map;
            try {
                HashMap hashMap = new HashMap();
                DefaultSettingList defaultSettingList = (DefaultSettingList) new C10099e().m13388a().m30982a(C13640c.m3745d().m3744d("default_setting_value_list"), (Class<Object>) DefaultSettingList.class);
                List<SettingConfig> a = defaultSettingList != null ? defaultSettingList.m28435a() : null;
                if (a == null) {
                    a = C15021m.m565a();
                }
                Iterator<SettingConfig> it = a.iterator();
                while (true) {
                    map = hashMap;
                    if (!it.hasNext()) {
                        break;
                    }
                    SettingConfig next = it.next();
                    if (!(next.m28432b() == null || next.m28433a() == null)) {
                        hashMap.put(next.m28432b(), next.m28433a());
                    }
                }
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
                map = C15005e0.m629a();
            }
            return map;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\bJ&\u0010\u000e\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, m815d2 = {"Lgogolook/callgogolook2/gson/DefaultSettingList$SettingConfig;", "", "settingKey", "", "defaultValue", "", "(Ljava/lang/String;Ljava/lang/Boolean;)V", "getDefaultValue", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getSettingKey", "()Ljava/lang/String;", "component1", "component2", "copy", "(Ljava/lang/String;Ljava/lang/Boolean;)Lgogolook/callgogolook2/gson/DefaultSettingList$SettingConfig;", "equals", "other", "hashCode", "", "toString", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/DefaultSettingList$SettingConfig.class */
    public static final class SettingConfig {
        @AbstractC10120c("default_value")
        public final Boolean defaultValue;
        @AbstractC10120c("setting_key")
        public final String settingKey;

        public SettingConfig() {
            this(null, null, 3, null);
        }

        public SettingConfig(String str, Boolean bool) {
            this.settingKey = str;
            this.defaultValue = bool;
        }

        public /* synthetic */ SettingConfig(String str, Boolean bool, int i, C15145g gVar) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : bool);
        }

        /* renamed from: a */
        public final Boolean m28433a() {
            return this.defaultValue;
        }

        /* renamed from: b */
        public final String m28432b() {
            return this.settingKey;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SettingConfig)) {
                return false;
            }
            SettingConfig settingConfig = (SettingConfig) obj;
            return C15149k.m384a((Object) this.settingKey, (Object) settingConfig.settingKey) && C15149k.m384a(this.defaultValue, settingConfig.defaultValue);
        }

        public int hashCode() {
            String str = this.settingKey;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            Boolean bool = this.defaultValue;
            if (bool != null) {
                i = bool.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            return "SettingConfig(settingKey=" + this.settingKey + ", defaultValue=" + this.defaultValue + ")";
        }
    }

    /* renamed from: a */
    public final List<SettingConfig> m28435a() {
        return this.settingList;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof DefaultSettingList) && C15149k.m384a(this.settingList, ((DefaultSettingList) obj).settingList);
        }
        return true;
    }

    public int hashCode() {
        List<SettingConfig> list = this.settingList;
        return list != null ? list.hashCode() : 0;
    }

    public String toString() {
        return "DefaultSettingList(settingList=" + this.settingList + ")";
    }
}
