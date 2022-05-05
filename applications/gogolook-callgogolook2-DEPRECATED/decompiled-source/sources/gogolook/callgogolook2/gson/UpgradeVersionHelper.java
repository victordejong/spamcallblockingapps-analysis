package gogolook.callgogolook2.gson;

import androidx.media2.exoplayer.external.text.webvtt.WebvttCueParser;
import com.mopub.network.ImpressionData;
import gogolook.callgogolook2.gson.UpgradeVersion;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import p081h.p203i.p384e.C10099e;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.p587d5.C13978e;
import p626l.p631e0.C14966w;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0012\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018�� .2\u00020\u0001:\u0001.B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J0\u0010\u001b\u001a\u0004\u0018\u00010\u00032\u0014\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u0003H\u0002J\"\u0010 \u001a\u0004\u0018\u00010!2\u000e\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010#2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0012\u0010$\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J \u0010%\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0005J \u0010'\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0005J\u000e\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0005J\u0006\u0010+\u001a\u00020)J\u000e\u0010,\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0005J\u0006\u0010-\u001a\u00020)R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR$\u0010\u0010\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00058F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016R$\u0010\u0017\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00058F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0018\u0010\u0012\"\u0004\b\u0019\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u0012¨\u0006/"}, m815d2 = {"Lgogolook/callgogolook2/gson/UpgradeVersionHelper;", "", "region", "", "versionCode", "", "(Ljava/lang/String;I)V", "config", "Lgogolook/callgogolook2/gson/UpgradeVersion;", C13032a.f29462d, "", "forceUpgradeLastViewTime", "getForceUpgradeLastViewTime", "()J", "setForceUpgradeLastViewTime", "(J)V", "forceUpgradeViewCount", "getForceUpgradeViewCount", "()I", "setForceUpgradeViewCount", "(I)V", "getRegion", "()Ljava/lang/String;", "suggestUpgradeCondition", "getSuggestUpgradeCondition", "setSuggestUpgradeCondition", "getVersionCode", "extractCopyWriting", "stringMap", "", WebvttCueParser.TAG_LANG, ImpressionData.COUNTRY, "findAvailableUpgradeVersionRange", "Lgogolook/callgogolook2/gson/UpgradeVersion$Version;", "versionRange", "", "getConfig", "getContent", "upgradeType", "getTitle", "isForceUpgradeRuleProved", "", "viewType", "isForceVersionRangeAvailable", "isSuggestUpgradeRuleProved", "isSuggestVersionRangeAvailable", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/UpgradeVersionHelper.class */
public final class UpgradeVersionHelper {
    public static final Companion Companion = new Companion(null);
    public static final int UPGRADE_TYPE_FORCE = 10001;
    public static final int UPGRADE_TYPE_SUGGEST = 10002;
    public static final int VIEW_TYPE_FORCE_DIALOG = 4;
    public static final int VIEW_TYPE_FORCE_NOTIFICATION = 3;
    public static final int VIEW_TYPE_SUGGEST_DIALOG = 2;
    public static final int VIEW_TYPE_SUGGEST_NOTIFICATION = 1;
    public UpgradeVersion config;
    public final String region;
    public final int versionCode;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\n"}, m815d2 = {"Lgogolook/callgogolook2/gson/UpgradeVersionHelper$Companion;", "", "()V", "UPGRADE_TYPE_FORCE", "", "UPGRADE_TYPE_SUGGEST", "VIEW_TYPE_FORCE_DIALOG", "VIEW_TYPE_FORCE_NOTIFICATION", "VIEW_TYPE_SUGGEST_DIALOG", "VIEW_TYPE_SUGGEST_NOTIFICATION", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/UpgradeVersionHelper$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }
    }

    public UpgradeVersionHelper(String str, int i) {
        C15149k.m377b(str, "region");
        this.region = str;
        this.versionCode = i;
        this.config = m28161a(this.region);
    }

    /* renamed from: a */
    public final long m28164a() {
        return C13978e.f31386a.m9460a("force_upgrade_last_view_time", (Long) 0L);
    }

    /* renamed from: a */
    public final UpgradeVersion.Version m28159a(List<UpgradeVersion.Version> list, int i) {
        boolean z;
        UpgradeVersion.Version version = null;
        Object obj = null;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                obj = it.next();
                UpgradeVersion.Version version2 = (UpgradeVersion.Version) obj;
                Integer b = version2.m28165b();
                int intValue = b != null ? b.intValue() : 0;
                Integer a = version2.m28166a();
                if (intValue > (a != null ? a.intValue() : 0)) {
                    C14080m2.m2612a((Throwable) new IllegalStateException("Illegal version range."));
                    z = false;
                } else {
                    Integer b2 = version2.m28165b();
                    z = false;
                    if (b2 == null || i >= b2.intValue()) {
                        Integer a2 = version2.m28166a();
                        z = false;
                        if (a2 == null || i <= a2.intValue()) {
                            z = true;
                        }
                    }
                }
                if (z) {
                    break;
                }
            }
            version = (UpgradeVersion.Version) obj;
        }
        return version;
    }

    /* renamed from: a */
    public final UpgradeVersion m28161a(String str) {
        UpgradeVersion upgradeVersion;
        UpgradeVersion upgradeVersion2;
        String d = C13640c.m3745d().m3744d("force_update_version");
        if (d == null || C14966w.m724a((CharSequence) d)) {
            upgradeVersion2 = null;
        } else {
            try {
                upgradeVersion = (UpgradeVersion) new C10099e().m13388a().m30982a(d, (Class<Object>) UpgradeVersion.class);
            } catch (RuntimeException e) {
                C14080m2.m2612a((Throwable) e);
                upgradeVersion = null;
            }
            upgradeVersion2 = null;
            if (upgradeVersion != null) {
                List<String> a = upgradeVersion.m28176a();
                upgradeVersion2 = null;
                if (a != null) {
                    upgradeVersion2 = null;
                    if (a.contains(str)) {
                        upgradeVersion2 = upgradeVersion;
                    }
                }
            }
        }
        return upgradeVersion2;
    }

    /* renamed from: a */
    public final String m28160a(String str, String str2, int i) {
        C15149k.m377b(str, WebvttCueParser.TAG_LANG);
        C15149k.m377b(str2, ImpressionData.COUNTRY);
        UpgradeVersion upgradeVersion = this.config;
        String str3 = null;
        if (upgradeVersion != null) {
            if (i == 10001) {
                str3 = m28158a(upgradeVersion.m28175b(), str, str2);
            } else if (i != 10002) {
                str3 = null;
            } else {
                str3 = m28158a(upgradeVersion.m28171f(), str, str2);
            }
        }
        return str3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0093, code lost:
        if ((!p626l.p631e0.C14966w.m724a((java.lang.CharSequence) r6)) != false) goto L_0x00a5;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ac  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m28158a(java.util.Map<java.lang.String, java.lang.String> r5, java.lang.String r6, java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.gson.UpgradeVersionHelper.m28158a(java.util.Map, java.lang.String, java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public final void m28162a(long j) {
        C13978e.f31386a.m9459a("force_upgrade_last_view_time", (String) Long.valueOf(j));
    }

    /* renamed from: a */
    public final boolean m28163a(int i) {
        Integer a;
        Integer b;
        boolean z = true;
        if (i != 3) {
            return true;
        }
        if (this.config == null) {
            this.config = m28161a(this.region);
        }
        UpgradeVersion upgradeVersion = this.config;
        if (upgradeVersion != null) {
            UpgradeVersion.UpgradeRule d = upgradeVersion.m28173d();
            int intValue = (d == null || (b = d.m28167b()) == null) ? 7 : b.intValue();
            UpgradeVersion.UpgradeRule d2 = upgradeVersion.m28173d();
            int intValue2 = (d2 == null || (a = d2.m28168a()) == null) ? 1 : a.intValue();
            if (m28157b() >= intValue || TimeUnit.MILLISECONDS.toDays(System.currentTimeMillis() - m28164a()) <= intValue2) {
                return false;
            }
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final int m28157b() {
        return C13978e.f31386a.m9461a("force_upgrade_view_count", (Integer) 0);
    }

    /* renamed from: b */
    public final String m28155b(String str, String str2, int i) {
        C15149k.m377b(str, WebvttCueParser.TAG_LANG);
        C15149k.m377b(str2, ImpressionData.COUNTRY);
        UpgradeVersion upgradeVersion = this.config;
        String str3 = null;
        if (upgradeVersion != null) {
            if (i == 10001) {
                str3 = m28158a(upgradeVersion.m28174c(), str, str2);
            } else if (i != 10002) {
                str3 = null;
            } else {
                str3 = m28158a(upgradeVersion.m28170g(), str, str2);
            }
        }
        return str3;
    }

    /* renamed from: b */
    public final boolean m28156b(int i) {
        return (m28154c() & i) != i;
    }

    /* renamed from: c */
    public final int m28154c() {
        return C13978e.f31386a.m9461a("suggest_upgrade_view_condition", (Integer) 0);
    }

    /* renamed from: c */
    public final void m28153c(int i) {
        C13978e.f31386a.m9459a("force_upgrade_view_count", (String) Integer.valueOf(i));
    }

    /* renamed from: d */
    public final void m28151d(int i) {
        C13978e.f31386a.m9459a("suggest_upgrade_view_condition", (String) Integer.valueOf(i));
    }

    /* renamed from: d */
    public final boolean m28152d() {
        if (this.config == null) {
            this.config = m28161a(this.region);
        }
        UpgradeVersion upgradeVersion = this.config;
        return m28159a(upgradeVersion != null ? upgradeVersion.m28172e() : null, this.versionCode) != null;
    }

    /* renamed from: e */
    public final boolean m28150e() {
        if (this.config == null) {
            this.config = m28161a(this.region);
        }
        UpgradeVersion upgradeVersion = this.config;
        return m28159a(upgradeVersion != null ? upgradeVersion.m28169h() : null, this.versionCode) != null;
    }
}
