package com.truecaller.backup;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\f\b\u0087\b\u0018��2\u00020\u0001B\u0019\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J&\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\f\u0010\u0007J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0011\u001a\u00020\u00022\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u001b\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0013\u001a\u0004\b\u0014\u0010\u0007R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0015\u001a\u0004\b\u0016\u0010\u0004¨\u0006\u0019"}, d2 = {"Lcom/truecaller/backup/LanguageBackupItem;", "", "", "component1", "()Z", "", "component2", "()Ljava/lang/String;", "auto", "languageISOCode", "copy", "(ZLjava/lang/String;)Lcom/truecaller/backup/LanguageBackupItem;", "toString", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getLanguageISOCode", "Z", "getAuto", "<init>", "(ZLjava/lang/String;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/backup/LanguageBackupItem.class */
public final class LanguageBackupItem {
    private final boolean auto;
    private final String languageISOCode;

    public LanguageBackupItem(boolean z, String str) {
        this.auto = z;
        this.languageISOCode = str;
    }

    public static /* synthetic */ LanguageBackupItem copy$default(LanguageBackupItem languageBackupItem, boolean z, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            z = languageBackupItem.auto;
        }
        if ((i & 2) != 0) {
            str = languageBackupItem.languageISOCode;
        }
        return languageBackupItem.copy(z, str);
    }

    public final boolean component1() {
        return this.auto;
    }

    public final String component2() {
        return this.languageISOCode;
    }

    public final LanguageBackupItem copy(boolean z, String str) {
        return new LanguageBackupItem(z, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof LanguageBackupItem)) {
                return false;
            }
            LanguageBackupItem languageBackupItem = (LanguageBackupItem) obj;
            return this.auto == languageBackupItem.auto && l.a(this.languageISOCode, languageBackupItem.languageISOCode);
        }
        return true;
    }

    public final boolean getAuto() {
        return this.auto;
    }

    public final String getLanguageISOCode() {
        return this.languageISOCode;
    }

    public int hashCode() {
        boolean z = this.auto;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        String str = this.languageISOCode;
        return ((z2 ? 1 : 0) * 31) + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("LanguageBackupItem(auto=");
        m8728C.append(this.auto);
        m8728C.append(", languageISOCode=");
        return C22128a.m8618h(m8728C, this.languageISOCode, ")");
    }
}
