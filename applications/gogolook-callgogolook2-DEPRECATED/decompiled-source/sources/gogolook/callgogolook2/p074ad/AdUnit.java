package gogolook.callgogolook2.p074ad;

import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\u0017\b\u0086\u0001\u0018�� \u00192\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u0019B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018¨\u0006\u001a"}, m815d2 = {"Lgogolook/callgogolook2/ad/AdUnit;", "", "definition", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getDefinition", "()Ljava/lang/String;", "BLOCK", "OFFLINE_DB_MAIN_PAGE", "CALL_LOG_STICKY", "SMS_LOG_STICKY", "NDP", "SMS", "OFFLINE_DB_UPDATE", "CALL_END_FULL", "CALL_END_BANNER", "CALL_END_DIALOG", "ENTER", "AFTER_DB_UPDATE", "CALL_END_NDP", "CALL_LOG_CONTENT_FEED", "PROTECTION_PAGE", "SMS_SCANNING_PAGE", "SMS_SCAN_RESULT_STICKY", "UNKNOWN", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: gogolook.callgogolook2.ad.AdUnit */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdUnit.class */
public enum AdUnit {
    BLOCK("Block"),
    OFFLINE_DB_MAIN_PAGE("OfflineDb_main_page"),
    CALL_LOG_STICKY("Call_log_sticky"),
    SMS_LOG_STICKY("Sms_log_sticky"),
    NDP("Ndp"),
    SMS("Sms"),
    OFFLINE_DB_UPDATE("Offline_db_update"),
    CALL_END_FULL("Call_end_full"),
    CALL_END_BANNER("Call_end_banner"),
    CALL_END_DIALOG("Call_end_dialog"),
    ENTER("Enter"),
    AFTER_DB_UPDATE("After_db_update"),
    CALL_END_NDP("Call_end_ndp"),
    CALL_LOG_CONTENT_FEED("Call_log_content_feed"),
    PROTECTION_PAGE("WC_Protection_page_ad"),
    SMS_SCANNING_PAGE("WC_SMS_scanning_page"),
    SMS_SCAN_RESULT_STICKY("WC_SMS_scan_result_page"),
    UNKNOWN("Unknown");
    
    public static final Companion Companion = new Companion(null);
    public final String definition;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, m815d2 = {"Lgogolook/callgogolook2/ad/AdUnit$Companion;", "", "()V", "findAdUnitBy", "Lgogolook/callgogolook2/ad/AdUnit;", "adUnitName", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.ad.AdUnit$Companion */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ad/AdUnit$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final AdUnit m28820a(String str) {
            AdUnit adUnit;
            C15149k.m377b(str, "adUnitName");
            AdUnit[] values = AdUnit.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    adUnit = null;
                    break;
                }
                AdUnit adUnit2 = values[i];
                if (C15149k.m384a((Object) adUnit2.m28821a(), (Object) str)) {
                    adUnit = adUnit2;
                    break;
                }
                i++;
            }
            if (adUnit == null) {
                adUnit = AdUnit.UNKNOWN;
            }
            return adUnit;
        }
    }

    AdUnit(String str) {
        C15149k.m377b(str, "definition");
        this.definition = str;
    }

    /* renamed from: a */
    public final String m28821a() {
        return this.definition;
    }
}
