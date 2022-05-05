package gogolook.callgogolook2.gson;

import java.util.List;
import kotlin.Metadata;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B\u0017\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u0011\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u001b\u0010\t\u001a\u00020��2\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, m815d2 = {"Lgogolook/callgogolook2/gson/AdLayoutSettings;", "", "adLayoutSettings", "", "Lgogolook/callgogolook2/gson/LayoutSetting;", "(Ljava/util/List;)V", "getAdLayoutSettings", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/AdLayoutSettings.class */
public final class AdLayoutSettings {
    @AbstractC10120c(AdsSettingsKt.KEY_LAYOUT_SETTINGS)
    public final List<LayoutSetting> adLayoutSettings;

    public AdLayoutSettings() {
        this(null, 1, null);
    }

    public AdLayoutSettings(List<LayoutSetting> list) {
        this.adLayoutSettings = list;
    }

    public /* synthetic */ AdLayoutSettings(List list, int i, C15145g gVar) {
        this((i & 1) != 0 ? null : list);
    }

    /* renamed from: a */
    public final List<LayoutSetting> m28563a() {
        return this.adLayoutSettings;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof AdLayoutSettings) && C15149k.m384a(this.adLayoutSettings, ((AdLayoutSettings) obj).adLayoutSettings);
        }
        return true;
    }

    public int hashCode() {
        List<LayoutSetting> list = this.adLayoutSettings;
        return list != null ? list.hashCode() : 0;
    }

    public String toString() {
        return "AdLayoutSettings(adLayoutSettings=" + this.adLayoutSettings + ")";
    }
}
