package gogolook.callgogolook2.gson;

import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import gogolook.callgogolook2.gson.NumberInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import p459j.p460a.p515i0.p516a.C12419d;
import p459j.p460a.p582w0.C14017g4;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/CInfo.class */
public class CInfo {
    public String biz_category;
    public boolean cache;
    public boolean contact;
    public boolean has_spoof;
    public transient HashMap<String, Integer> hit_source;
    public boolean name;
    public String num;
    public boolean offline;
    public String offline_ver;
    public String region;
    public String server;
    public boolean spam;
    public String spam_type;
    public String lookup_source = "";
    public String name_type = "";
    public String name_d = "";
    public List<Double> lnglat = new ArrayList();
    public long server_latency = -1;

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/CInfo$HitSourceState.class */
    public enum HitSourceState {
        NO_INFO(0),
        HAS_INFO(1),
        HAS_INFO_BUT_HIDDEN(2),
        NOT_REACH(-1);
        
        public int state;

        HitSourceState(int i) {
            this.state = -1;
            this.state = i;
        }

        /* renamed from: a */
        public int m28554a() {
            return this.state;
        }
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/CInfo$ServerEnum.class */
    public enum ServerEnum {
        NO,
        SEARCHING,
        DATA,
        NETWORK_ERROR,
        SERVER_ERROR
    }

    public CInfo(String str) {
        this.region = "";
        this.num = "";
        this.offline_ver = "";
        this.server = "";
        this.num = str;
        this.server = ServerEnum.NO.toString();
        try {
            String n = C14017g4.m2810n();
            PhoneNumberUtil instance = PhoneNumberUtil.getInstance();
            this.region = instance.getRegionCodeForNumber(instance.parse(str, n.toUpperCase(Locale.US)));
            this.offline_ver = String.valueOf(C12419d.m6208e());
        } catch (NumberParseException e) {
            this.region = "";
            this.offline_ver = "";
        }
        this.lnglat.clear();
        this.lnglat.add(Double.valueOf(0.0d));
        this.lnglat.add(Double.valueOf(0.0d));
        this.hit_source = new HashMap<>();
        this.hit_source.put(NumberInfo.InfoSource.MEMORY_CACHE.m28282a(), Integer.valueOf(HitSourceState.NOT_REACH.m28554a()));
        this.hit_source.put(NumberInfo.InfoSource.OFFLINE_DB.m28282a(), Integer.valueOf(HitSourceState.NOT_REACH.m28554a()));
        this.hit_source.put(NumberInfo.InfoSource.PERSONAL_DB.m28282a(), Integer.valueOf(HitSourceState.NOT_REACH.m28554a()));
        this.hit_source.put(NumberInfo.InfoSource.DB_CACHE.m28282a(), Integer.valueOf(HitSourceState.NOT_REACH.m28554a()));
        this.hit_source.put(NumberInfo.InfoSource.SERVER.m28282a(), Integer.valueOf(HitSourceState.NOT_REACH.m28554a()));
    }

    public String toString() {
        return "CInfo{region='" + this.region + "', num='" + this.num + "', lookup_source='" + this.lookup_source + "', name=" + this.name + ", spam=" + this.spam + ", name_type='" + this.name_type + "', name_d='" + this.name_d + "', contact=" + this.contact + ", offline=" + this.offline + ", offline_ver='" + this.offline_ver + "', server='" + this.server + "', server_latency=" + this.server_latency + ", cache=" + this.cache + ", biz_category='" + this.biz_category + "', spam_type='" + this.spam_type + "', lnglat=" + this.lnglat + '}';
    }
}
