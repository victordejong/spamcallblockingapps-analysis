package com.truecaller.backup;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Address;
import com.truecaller.data.entity.Link;
import java.util.Set;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0087\b\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001BQ\u0012\u0006\u0010\u0013\u001a\u00020\u0006\u0012\u0006\u0010\u0014\u001a\u00020\u0003\u0012\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000b\u0012\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000b\u0012\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000b\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b*\u0010+J\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020��H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0003HÆ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b\u000f\u0010\rJ\u0018\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b\u0011\u0010\rJ\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0004\b\u0012\u0010\bJf\u0010\u0019\u001a\u00020��2\b\b\u0002\u0010\u0013\u001a\u00020\u00062\b\b\u0002\u0010\u0014\u001a\u00020\u00032\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000b2\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000b2\u0010\b\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000b2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u001b\u0010\bJ\u0010\u0010\u001c\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u001c\u0010\nJ\u001a\u0010\u001f\u001a\u00020\u001e2\b\u0010\u0002\u001a\u0004\u0018\u00010\u001dHÖ\u0003¢\u0006\u0004\b\u001f\u0010 R\u001b\u0010\u0018\u001a\u0004\u0018\u00010\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u0018\u0010!\u001a\u0004\b\"\u0010\bR!\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u0010#\u001a\u0004\b$\u0010\rR!\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0016\u0010#\u001a\u0004\b%\u0010\rR\u0019\u0010\u0013\u001a\u00020\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010!\u001a\u0004\b&\u0010\bR!\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0015\u0010#\u001a\u0004\b'\u0010\rR\u0019\u0010\u0014\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010(\u001a\u0004\b)\u0010\n¨\u0006,"}, d2 = {"Lcom/truecaller/backup/ContactBackupItem;", "", "other", "", "compareTo", "(Lcom/truecaller/backup/ContactBackupItem;)I", "", "component1", "()Ljava/lang/String;", "component2", "()I", "", "component3", "()Ljava/util/Set;", "Lcom/truecaller/data/entity/Link;", "component4", "Lcom/truecaller/data/entity/Address;", "component5", "component6", AnalyticsConstants.NAME, "source", "numbers", "emails", "addresses", "avatarUrl", "copy", "(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)Lcom/truecaller/backup/ContactBackupItem;", "toString", "hashCode", "", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getAvatarUrl", "Ljava/util/Set;", "getAddresses", "getEmails", "getName", "getNumbers", "I", "getSource", "<init>", "(Ljava/lang/String;ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/backup/ContactBackupItem.class */
public final class ContactBackupItem implements Comparable<ContactBackupItem> {
    private final Set<Address> addresses;
    private final String avatarUrl;
    private final Set<Link> emails;
    private final String name;
    private final Set<String> numbers;
    private final int source;

    /* JADX WARN: Multi-variable type inference failed */
    public ContactBackupItem(String str, int i, Set<String> set, Set<? extends Link> set2, Set<? extends Address> set3, String str2) {
        l.e(str, AnalyticsConstants.NAME);
        this.name = str;
        this.source = i;
        this.numbers = set;
        this.emails = set2;
        this.addresses = set3;
        this.avatarUrl = str2;
    }

    public static /* synthetic */ ContactBackupItem copy$default(ContactBackupItem contactBackupItem, String str, int i, Set set, Set set2, Set set3, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = contactBackupItem.name;
        }
        if ((i2 & 2) != 0) {
            i = contactBackupItem.source;
        }
        if ((i2 & 4) != 0) {
            set = contactBackupItem.numbers;
        }
        if ((i2 & 8) != 0) {
            set2 = contactBackupItem.emails;
        }
        if ((i2 & 16) != 0) {
            set3 = contactBackupItem.addresses;
        }
        if ((i2 & 32) != 0) {
            str2 = contactBackupItem.avatarUrl;
        }
        return contactBackupItem.copy(str, i, set, set2, set3, str2);
    }

    public int compareTo(ContactBackupItem contactBackupItem) {
        l.e(contactBackupItem, "other");
        return C25225a.m4000K(getName(), contactBackupItem.getName());
    }

    public final String component1() {
        return this.name;
    }

    public final int component2() {
        return this.source;
    }

    public final Set<String> component3() {
        return this.numbers;
    }

    public final Set<Link> component4() {
        return this.emails;
    }

    public final Set<Address> component5() {
        return this.addresses;
    }

    public final String component6() {
        return this.avatarUrl;
    }

    public final ContactBackupItem copy(String str, int i, Set<String> set, Set<? extends Link> set2, Set<? extends Address> set3, String str2) {
        l.e(str, AnalyticsConstants.NAME);
        return new ContactBackupItem(str, i, set, set2, set3, str2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof ContactBackupItem)) {
                return false;
            }
            ContactBackupItem contactBackupItem = (ContactBackupItem) obj;
            return l.a(this.name, contactBackupItem.name) && this.source == contactBackupItem.source && l.a(this.numbers, contactBackupItem.numbers) && l.a(this.emails, contactBackupItem.emails) && l.a(this.addresses, contactBackupItem.addresses) && l.a(this.avatarUrl, contactBackupItem.avatarUrl);
        }
        return true;
    }

    public final Set<Address> getAddresses() {
        return this.addresses;
    }

    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    public final Set<Link> getEmails() {
        return this.emails;
    }

    public final String getName() {
        return this.name;
    }

    public final Set<String> getNumbers() {
        return this.numbers;
    }

    public final int getSource() {
        return this.source;
    }

    public int hashCode() {
        String str = this.name;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.source;
        Set<String> set = this.numbers;
        int hashCode2 = set != null ? set.hashCode() : 0;
        Set<Link> set2 = this.emails;
        int hashCode3 = set2 != null ? set2.hashCode() : 0;
        Set<Address> set3 = this.addresses;
        int hashCode4 = set3 != null ? set3.hashCode() : 0;
        String str2 = this.avatarUrl;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ContactBackupItem(name=");
        m8728C.append(this.name);
        m8728C.append(", source=");
        m8728C.append(this.source);
        m8728C.append(", numbers=");
        m8728C.append(this.numbers);
        m8728C.append(", emails=");
        m8728C.append(this.emails);
        m8728C.append(", addresses=");
        m8728C.append(this.addresses);
        m8728C.append(", avatarUrl=");
        return C22128a.m8618h(m8728C, this.avatarUrl, ")");
    }
}
