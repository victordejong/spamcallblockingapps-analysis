package com.truecaller.backup;

import androidx.annotation.Keep;
import com.google.android.gms.ads.RequestConfiguration;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u0002B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00028��¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0004\u001a\u00020\u0003HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00028��HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0��2\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00028��HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\f\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\t\u001a\u00028��8\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0015\u0010\u0007R\u0019\u0010\b\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0005¨\u0006\u001a"}, d2 = {"Lcom/truecaller/backup/BackupSettingItem;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "", "component1", "()Ljava/lang/String;", "component2", "()Ljava/lang/Object;", AnalyticsConstants.KEY, "value", "copy", "(Ljava/lang/String;Ljava/lang/Object;)Lcom/truecaller/backup/BackupSettingItem;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/Object;", "getValue", "Ljava/lang/String;", "getKey", "<init>", "(Ljava/lang/String;Ljava/lang/Object;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/backup/BackupSettingItem.class */
public final class BackupSettingItem<T> {
    private final String key;
    private final T value;

    public BackupSettingItem(String str, T t) {
        l.e(str, AnalyticsConstants.KEY);
        this.key = str;
        this.value = t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BackupSettingItem copy$default(BackupSettingItem backupSettingItem, String str, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            str = backupSettingItem.key;
        }
        T t = obj;
        if ((i & 2) != 0) {
            t = backupSettingItem.value;
        }
        return backupSettingItem.copy(str, t);
    }

    public final String component1() {
        return this.key;
    }

    public final T component2() {
        return this.value;
    }

    public final BackupSettingItem<T> copy(String str, T t) {
        l.e(str, AnalyticsConstants.KEY);
        return new BackupSettingItem<>(str, t);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof BackupSettingItem)) {
                return false;
            }
            BackupSettingItem backupSettingItem = (BackupSettingItem) obj;
            return l.a(this.key, backupSettingItem.key) && l.a(this.value, backupSettingItem.value);
        }
        return true;
    }

    public final String getKey() {
        return this.key;
    }

    public final T getValue() {
        return this.value;
    }

    public int hashCode() {
        String str = this.key;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        T t = this.value;
        if (t != null) {
            i = t.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BackupSettingItem(key=");
        m8728C.append(this.key);
        m8728C.append(", value=");
        return C22128a.m8634d(m8728C, this.value, ")");
    }
}
