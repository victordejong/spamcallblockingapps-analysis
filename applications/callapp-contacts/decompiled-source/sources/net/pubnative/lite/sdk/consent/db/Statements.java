package net.pubnative.lite.sdk.consent.db;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0011\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018��2\u00020\u0001B)\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0007J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0016\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J8\u0010\u0011\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u001b\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\r\u0010\t¨\u0006\u0019"}, d2 = {"Lnet/pubnative/lite/sdk/consent/db/Statements;", "", "whereClause", "", "whereArgs", "", "order", "(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V", "getOrder", "()Ljava/lang/String;", "getWhereArgs", "()[Ljava/lang/String;", "[Ljava/lang/String;", "getWhereClause", "component1", "component2", "component3", "copy", "(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lnet/pubnative/lite/sdk/consent/db/Statements;", "equals", "", "other", "hashCode", "", "toString", "hybid.sdk.voyager_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/Statements.class */
public final class Statements {
    private final String order;
    private final String[] whereArgs;
    private final String whereClause;

    public Statements(String str, String[] strArr, String str2) {
        this.whereClause = str;
        this.whereArgs = strArr;
        this.order = str2;
    }

    public static /* synthetic */ Statements copy$default(Statements statements, String str, String[] strArr, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = statements.whereClause;
        }
        if ((i & 2) != 0) {
            strArr = statements.whereArgs;
        }
        if ((i & 4) != 0) {
            str2 = statements.order;
        }
        return statements.copy(str, strArr, str2);
    }

    public final String component1() {
        return this.whereClause;
    }

    public final String[] component2() {
        return this.whereArgs;
    }

    public final String component3() {
        return this.order;
    }

    public final Statements copy(String str, String[] strArr, String str2) {
        return new Statements(str, strArr, str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Statements)) {
            return false;
        }
        Statements statements = (Statements) obj;
        return p.a((Object) this.whereClause, (Object) statements.whereClause) && p.a(this.whereArgs, statements.whereArgs) && p.a((Object) this.order, (Object) statements.order);
    }

    public final String getOrder() {
        return this.order;
    }

    public final String[] getWhereArgs() {
        return this.whereArgs;
    }

    public final String getWhereClause() {
        return this.whereClause;
    }

    public final int hashCode() {
        String str = this.whereClause;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String[] strArr = this.whereArgs;
        int hashCode2 = strArr != null ? Arrays.hashCode(strArr) : 0;
        String str2 = this.order;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public final String toString() {
        return "Statements(whereClause=" + this.whereClause + ", whereArgs=" + Arrays.toString(this.whereArgs) + ", order=" + this.order + ")";
    }
}
