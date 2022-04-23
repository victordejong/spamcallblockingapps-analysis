package net.pubnative.lite.sdk.consent.db;

import java.util.Date;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import net.pubnative.lite.sdk.consent.db.ISelectionOperator;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0004\n\u0002\b\u000f\bf\u0018��*\u0014\b��\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020��*\u0014\b\u0001\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020��2\u00020\u0003:\u0001\u001bJ\r\u0010\u0004\u001a\u00028\u0001H&¢\u0006\u0002\u0010\u0005J%\u0010\u0006\u001a\u00028��2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH&¢\u0006\u0002\u0010\fJ%\u0010\u0006\u001a\u00028��2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\rH&¢\u0006\u0002\u0010\u000eJ\u001d\u0010\u000f\u001a\u00028��2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\bH&¢\u0006\u0002\u0010\u0011J\u001d\u0010\u0012\u001a\u00028��2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0003H&¢\u0006\u0002\u0010\u0013J\u001d\u0010\u0014\u001a\u00028��2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\rH&¢\u0006\u0002\u0010\u0015J\u001d\u0010\u0016\u001a\u00028��2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\rH&¢\u0006\u0002\u0010\u0015J\u001d\u0010\u0017\u001a\u00028��2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0003H&¢\u0006\u0002\u0010\u0013J\r\u0010\u0018\u001a\u00028\u0001H&¢\u0006\u0002\u0010\u0005J\u001d\u0010\u0019\u001a\u00028��2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\rH&¢\u0006\u0002\u0010\u0015J\u001d\u0010\u001a\u001a\u00028��2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\rH&¢\u0006\u0002\u0010\u0015¨\u0006\u001c"}, d2 = {"Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;", "WHERE", "OPERATOR", "", "and", "()Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;", "between", "key", "", "first", "Ljava/util/Date;", "second", "(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;", "", "(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;", "containString", "value", "(Ljava/lang/String;Ljava/lang/String;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;", "eq", "(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;", "greaterThan", "(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;", "greaterThanOrEq", "notEq", "or", "smallerThan", "smallerThanOrEq", "Order", "hybid.sdk.voyager_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/ISelectionOperator.class */
public interface ISelectionOperator<WHERE extends ISelectionOperator<WHERE, OPERATOR>, OPERATOR extends ISelectionOperator<WHERE, OPERATOR>> {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;", "", "(Ljava/lang/String;I)V", "getClauseString", "", "Ascending", "Descending", "hybid.sdk.voyager_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/ISelectionOperator$Order.class */
    public enum Order {
        Ascending,
        Descending;

        @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 2})
        /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/ISelectionOperator$Order$WhenMappings.class */
        public final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Order.values().length];
                $EnumSwitchMapping$0 = iArr;
                iArr[Order.Ascending.ordinal()] = 1;
                iArr[Order.Descending.ordinal()] = 2;
            }
        }

        public final String getClauseString() {
            int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
            if (i == 1) {
                return "ASC";
            }
            if (i == 2) {
                return "DESC";
            }
            throw new NoWhenBranchMatchedException();
        }
    }

    OPERATOR and();

    WHERE between(String str, Number number, Number number2);

    WHERE between(String str, Date date, Date date2);

    WHERE containString(String str, String str2);

    WHERE eq(String str, Object obj);

    WHERE greaterThan(String str, Number number);

    WHERE greaterThanOrEq(String str, Number number);

    WHERE notEq(String str, Object obj);

    OPERATOR or();

    WHERE smallerThan(String str, Number number);

    WHERE smallerThanOrEq(String str, Number number);
}
