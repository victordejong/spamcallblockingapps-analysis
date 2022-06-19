package com.truecaller.videocallerid.p186db.hiddencontacts;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087\b\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0005\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0010\u001a\u0004\b\u0011\u0010\u0004¨\u0006\u0014"}, d2 = {"Lcom/truecaller/videocallerid/db/hiddencontacts/HiddenContact;", "", "", "component1", "()Ljava/lang/String;", "contactNumber", "copy", "(Ljava/lang/String;)Lcom/truecaller/videocallerid/db/hiddencontacts/HiddenContact;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getContactNumber", "<init>", "(Ljava/lang/String;)V", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* renamed from: com.truecaller.videocallerid.db.hiddencontacts.HiddenContact */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/db/hiddencontacts/HiddenContact.class */
public final class HiddenContact {
    private final String contactNumber;

    public HiddenContact(String str) {
        l.e(str, "contactNumber");
        this.contactNumber = str;
    }

    public static /* synthetic */ HiddenContact copy$default(HiddenContact hiddenContact, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = hiddenContact.contactNumber;
        }
        return hiddenContact.copy(str);
    }

    public final String component1() {
        return this.contactNumber;
    }

    public final HiddenContact copy(String str) {
        l.e(str, "contactNumber");
        return new HiddenContact(str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof HiddenContact) && l.a(this.contactNumber, ((HiddenContact) obj).contactNumber);
        }
        return true;
    }

    public final String getContactNumber() {
        return this.contactNumber;
    }

    public int hashCode() {
        String str = this.contactNumber;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8618h(C22128a.m8728C("HiddenContact(contactNumber="), this.contactNumber, ")");
    }
}
