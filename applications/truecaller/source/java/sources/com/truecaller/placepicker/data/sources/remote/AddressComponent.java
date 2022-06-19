package com.truecaller.placepicker.data.sources.remote;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001d\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\t\u001a\u00020\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u0003HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\n\u001a\u00020��2\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\b\u0002\u0010\t\u001a\u00020\u0003HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\f\u0010\u0007J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\t\u001a\u00020\u00038\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0015\u0010\u0007R\u001f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0005¨\u0006\u001a"}, d2 = {"Lcom/truecaller/placepicker/data/sources/remote/AddressComponent;", "", "", "", "component1", "()Ljava/util/List;", "component2", "()Ljava/lang/String;", "types", "long_name", "copy", "(Ljava/util/List;Ljava/lang/String;)Lcom/truecaller/placepicker/data/sources/remote/AddressComponent;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getLong_name", "Ljava/util/List;", "getTypes", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "placepicker_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes11-dex2jar.jar:com/truecaller/placepicker/data/sources/remote/AddressComponent.class */
public final class AddressComponent {
    private final String long_name;
    private final List<String> types;

    public AddressComponent(List<String> list, String str) {
        l.e(list, "types");
        l.e(str, "long_name");
        this.types = list;
        this.long_name = str;
    }

    public static /* synthetic */ AddressComponent copy$default(AddressComponent addressComponent, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = addressComponent.types;
        }
        if ((i & 2) != 0) {
            str = addressComponent.long_name;
        }
        return addressComponent.copy(list, str);
    }

    public final List<String> component1() {
        return this.types;
    }

    public final String component2() {
        return this.long_name;
    }

    public final AddressComponent copy(List<String> list, String str) {
        l.e(list, "types");
        l.e(str, "long_name");
        return new AddressComponent(list, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AddressComponent)) {
                return false;
            }
            AddressComponent addressComponent = (AddressComponent) obj;
            return l.a(this.types, addressComponent.types) && l.a(this.long_name, addressComponent.long_name);
        }
        return true;
    }

    public final String getLong_name() {
        return this.long_name;
    }

    public final List<String> getTypes() {
        return this.types;
    }

    public int hashCode() {
        List<String> list = this.types;
        int i = 0;
        int hashCode = list != null ? list.hashCode() : 0;
        String str = this.long_name;
        if (str != null) {
            i = str.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AddressComponent(types=");
        m8728C.append(this.types);
        m8728C.append(", long_name=");
        return C22128a.m8618h(m8728C, this.long_name, ")");
    }
}
