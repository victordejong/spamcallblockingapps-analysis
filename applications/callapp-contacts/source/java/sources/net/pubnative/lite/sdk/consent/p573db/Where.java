package net.pubnative.lite.sdk.consent.p573db;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18273i;
import kotlin.p518a.C18282n;
import net.pubnative.lite.sdk.consent.p573db.ISelectionOperator;
import org.apache.commons.lang3.StringUtils;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0004\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018�� )2\u000e\u0012\u0004\u0012\u00020��\u0012\u0004\u0012\u00020\u00020\u0001:\u000b()*+,-./012B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\b\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0005H\u0002J\b\u0010\n\u001a\u00020\u0002H\u0016J \u0010\u000b\u001a\u00020��2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J \u0010\u000b\u001a\u00020��2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020��2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\rH\u0016J\u0018\u0010\u0014\u001a\u00020��2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0015H\u0016J\u0017\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0017H��¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u0004\u0018\u00010\rH��¢\u0006\u0002\b\u001bJ\u000f\u0010\u001c\u001a\u0004\u0018\u00010\rH��¢\u0006\u0002\b\u001dJ\u0018\u0010\u001e\u001a\u00020��2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\u0018\u0010\u001f\u001a\u00020��2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\u0018\u0010 \u001a\u00020��2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0015H\u0016J\b\u0010!\u001a\u00020\u0002H\u0016J'\u0010\"\u001a\u00020��2\u0006\u0010#\u001a\u00020$2\u0012\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\r0\u0017\"\u00020\r¢\u0006\u0002\u0010%J\u0018\u0010&\u001a\u00020��2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\u0018\u0010'\u001a\u00020��2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0011H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007X\u0082\u0004¢\u0006\u0002\n��¨\u00063"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/db/Where;", "Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;", "Lnet/pubnative/lite/sdk/consent/db/Where$Operator;", "()V", "mOrder", "Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;", "mStatements", "Ljava/util/ArrayList;", "addOperatorFunction", "operatorFunction", "and", "between", "key", "", "first", "Ljava/util/Date;", "second", "", "containString", "value", "eq", "", "getArgs", "", "getArgs$hybid_sdk_voyager_release", "()[Ljava/lang/String;", "getClauseString", "getClauseString$hybid_sdk_voyager_release", "getOrder", "getOrder$hybid_sdk_voyager_release", "greaterThan", "greaterThanOrEq", "notEq", "or", "orderBy", "order", "Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;", "(Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;[Ljava/lang/String;)Lnet/pubnative/lite/sdk/consent/db/Where;", "smallerThan", "smallerThanOrEq", "BetweenStatement", "Companion", JsonDocumentFields.CONDITION, "EqStatement", "GreaterThanStatement", "IStatement", "LikeStatement", "NotEqStatement", "Operator", "OrderStatement", "SmallerThanStatement", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: net.pubnative.lite.sdk.consent.db.Where */
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/Where.class */
public final class Where implements ISelectionOperator<Where, Operator> {
    public static final Companion Companion = new Companion(null);
    private static final String SPACE = StringUtils.SPACE;
    private IStatement mOrder;
    private final ArrayList<IStatement> mStatements = new ArrayList<>();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J'\u0010\u0010\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\u0015\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0015H\u0016¢\u0006\u0002\u0010\u0016J\b\u0010\u0017\u001a\u00020\u0003H\u0016J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\f\u0010\t¨\u0006\u001b"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/db/Where$BetweenStatement;", "Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;", "key", "", "first", "", "second", "(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V", "getFirst", "()Ljava/lang/Object;", "getKey", "()Ljava/lang/String;", "getSecond", "component1", "component2", "component3", "copy", "equals", "", "other", "getArgs", "", "()[Ljava/lang/String;", "getStatementString", "hashCode", "", "toString", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: net.pubnative.lite.sdk.consent.db.Where$BetweenStatement */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/Where$BetweenStatement.class */
    public static final class BetweenStatement implements IStatement {
        private final Object first;
        private final String key;
        private final Object second;

        public BetweenStatement(String key, Object first, Object second) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(first, "first");
            C18524p.m3840d(second, "second");
            this.key = key;
            this.first = first;
            this.second = second;
        }

        public static /* synthetic */ BetweenStatement copy$default(BetweenStatement betweenStatement, String str, Object obj, Object obj2, int i, Object obj3) {
            if ((i & 1) != 0) {
                str = betweenStatement.key;
            }
            if ((i & 2) != 0) {
                obj = betweenStatement.first;
            }
            if ((i & 4) != 0) {
                obj2 = betweenStatement.second;
            }
            return betweenStatement.copy(str, obj, obj2);
        }

        public final String component1() {
            return this.key;
        }

        public final Object component2() {
            return this.first;
        }

        public final Object component3() {
            return this.second;
        }

        public final BetweenStatement copy(String key, Object first, Object second) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(first, "first");
            C18524p.m3840d(second, "second");
            return new BetweenStatement(key, first, second);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof BetweenStatement)) {
                    return false;
                }
                BetweenStatement betweenStatement = (BetweenStatement) obj;
                return C18524p.m3850a((Object) this.key, (Object) betweenStatement.key) && C18524p.m3850a(this.first, betweenStatement.first) && C18524p.m3850a(this.second, betweenStatement.second);
            }
            return true;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.Where.IStatement
        public final String[] getArgs() {
            Object obj = this.first;
            if (obj instanceof Date) {
                if (!(this.second instanceof Date)) {
                    return null;
                }
                return new String[]{String.valueOf(((Date) obj).getTime()), String.valueOf(((Date) this.second).getTime())};
            }
            return new String[]{obj.toString(), this.second.toString()};
        }

        public final Object getFirst() {
            return this.first;
        }

        public final String getKey() {
            return this.key;
        }

        public final Object getSecond() {
            return this.second;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.Where.IStatement
        public final String getStatementString() {
            return this.key + IStatement.Companion.getBetween();
        }

        public final int hashCode() {
            String str = this.key;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            Object obj = this.first;
            int hashCode2 = obj != null ? obj.hashCode() : 0;
            Object obj2 = this.second;
            if (obj2 != null) {
                i = obj2.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }

        public final String toString() {
            return "BetweenStatement(key=" + this.key + ", first=" + this.first + ", second=" + this.second + ")";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/db/Where$Companion;", "", "()V", "SPACE", "", "getSPACE", "()Ljava/lang/String;", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: net.pubnative.lite.sdk.consent.db.Where$Companion */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/Where$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String getSPACE() {
            return Where.SPACE;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u00012\u00020\u0002B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u0016¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\u0006H\u0016j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/db/Where$Condition;", "", "Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;", "(Ljava/lang/String;I)V", "getArgs", "", "", "()[Ljava/lang/String;", "getStatementString", "And", "Or", "Between", "Larger", "Smaller", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: net.pubnative.lite.sdk.consent.db.Where$Condition */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/Where$Condition.class */
    public enum Condition implements IStatement {
        And,
        Or,
        Between,
        Larger,
        Smaller;

        @Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 4, 2})
        /* renamed from: net.pubnative.lite.sdk.consent.db.Where$Condition$WhenMappings */
        /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/Where$Condition$WhenMappings.class */
        public final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Condition.values().length];
                $EnumSwitchMapping$0 = iArr;
                iArr[Condition.And.ordinal()] = 1;
                iArr[Condition.Or.ordinal()] = 2;
            }
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.Where.IStatement
        public final String[] getArgs() {
            return null;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.Where.IStatement
        public final String getStatementString() {
            int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
            return i != 1 ? i != 2 ? "" : "OR" : "AND";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\u0013\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u0012H\u0016¢\u0006\u0002\u0010\u0013J\b\u0010\u0014\u001a\u00020\u0003H\u0016J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u0018"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/db/Where$EqStatement;", "Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;", "key", "", "value", "", "(Ljava/lang/String;Ljava/lang/Object;)V", "getKey", "()Ljava/lang/String;", "getValue", "()Ljava/lang/Object;", "component1", "component2", "copy", "equals", "", "other", "getArgs", "", "()[Ljava/lang/String;", "getStatementString", "hashCode", "", "toString", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: net.pubnative.lite.sdk.consent.db.Where$EqStatement */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/Where$EqStatement.class */
    public static final class EqStatement implements IStatement {
        private final String key;
        private final Object value;

        public EqStatement(String key, Object value) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(value, "value");
            this.key = key;
            this.value = value;
        }

        public static /* synthetic */ EqStatement copy$default(EqStatement eqStatement, String str, Object obj, int i, Object obj2) {
            if ((i & 1) != 0) {
                str = eqStatement.key;
            }
            if ((i & 2) != 0) {
                obj = eqStatement.value;
            }
            return eqStatement.copy(str, obj);
        }

        public final String component1() {
            return this.key;
        }

        public final Object component2() {
            return this.value;
        }

        public final EqStatement copy(String key, Object value) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(value, "value");
            return new EqStatement(key, value);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof EqStatement)) {
                    return false;
                }
                EqStatement eqStatement = (EqStatement) obj;
                return C18524p.m3850a((Object) this.key, (Object) eqStatement.key) && C18524p.m3850a(this.value, eqStatement.value);
            }
            return true;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.Where.IStatement
        public final String[] getArgs() {
            return new String[]{this.value.toString()};
        }

        public final String getKey() {
            return this.key;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.Where.IStatement
        public final String getStatementString() {
            return this.key + IStatement.Companion.getEqual();
        }

        public final Object getValue() {
            return this.value;
        }

        public final int hashCode() {
            String str = this.key;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            Object obj = this.value;
            if (obj != null) {
                i = obj.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public final String toString() {
            return "EqStatement(key=" + this.key + ", value=" + this.value + ")";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0004\n��\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0007HÆ\u0003J'\u0010\u0011\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\u0013\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u0016H\u0016¢\u0006\u0002\u0010\u0017J\b\u0010\u0018\u001a\u00020\u0003H\u0016J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\f\u0010\r¨\u0006\u001c"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement;", "Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;", "key", "", "value", "", "isEqual", "", "(Ljava/lang/String;Ljava/lang/Number;Z)V", "()Z", "getKey", "()Ljava/lang/String;", "getValue", "()Ljava/lang/Number;", "component1", "component2", "component3", "copy", "equals", "other", "", "getArgs", "", "()[Ljava/lang/String;", "getStatementString", "hashCode", "", "toString", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: net.pubnative.lite.sdk.consent.db.Where$GreaterThanStatement */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/Where$GreaterThanStatement.class */
    public static final class GreaterThanStatement implements IStatement {
        private final boolean isEqual;
        private final String key;
        private final Number value;

        public GreaterThanStatement(String key, Number value, boolean z) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(value, "value");
            this.key = key;
            this.value = value;
            this.isEqual = z;
        }

        public /* synthetic */ GreaterThanStatement(String str, Number number, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, number, (i & 4) != 0 ? false : z);
        }

        public static /* synthetic */ GreaterThanStatement copy$default(GreaterThanStatement greaterThanStatement, String str, Number number, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = greaterThanStatement.key;
            }
            if ((i & 2) != 0) {
                number = greaterThanStatement.value;
            }
            if ((i & 4) != 0) {
                z = greaterThanStatement.isEqual;
            }
            return greaterThanStatement.copy(str, number, z);
        }

        public final String component1() {
            return this.key;
        }

        public final Number component2() {
            return this.value;
        }

        public final boolean component3() {
            return this.isEqual;
        }

        public final GreaterThanStatement copy(String key, Number value, boolean z) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(value, "value");
            return new GreaterThanStatement(key, value, z);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof GreaterThanStatement)) {
                    return false;
                }
                GreaterThanStatement greaterThanStatement = (GreaterThanStatement) obj;
                return C18524p.m3850a((Object) this.key, (Object) greaterThanStatement.key) && C18524p.m3850a(this.value, greaterThanStatement.value) && this.isEqual == greaterThanStatement.isEqual;
            }
            return true;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.Where.IStatement
        public final String[] getArgs() {
            return new String[]{this.value.toString()};
        }

        public final String getKey() {
            return this.key;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.Where.IStatement
        public final String getStatementString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append(this.key);
            boolean z = this.isEqual;
            if (z) {
                str = IStatement.Companion.getGreaterThanOrEq();
            } else if (z) {
                throw new NoWhenBranchMatchedException();
            } else {
                str = IStatement.Companion.getGreaterThan();
            }
            sb.append(str);
            return sb.toString();
        }

        public final Number getValue() {
            return this.value;
        }

        public final int hashCode() {
            String str = this.key;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            Number number = this.value;
            if (number != null) {
                i = number.hashCode();
            }
            boolean z = this.isEqual;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            return (((hashCode * 31) + i) * 31) + i2;
        }

        public final boolean isEqual() {
            return this.isEqual;
        }

        public final String toString() {
            return "GreaterThanStatement(key=" + this.key + ", value=" + this.value + ", isEqual=" + this.isEqual + ")";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\b`\u0018�� \u00072\u00020\u0001:\u0001\u0007J\u0015\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H&¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0004H&¨\u0006\b"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;", "", "getArgs", "", "", "()[Ljava/lang/String;", "getStatementString", "Companion", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: net.pubnative.lite.sdk.consent.db.Where$IStatement */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/Where$IStatement.class */
    public interface IStatement {
        public static final Companion Companion = Companion.$$INSTANCE;

        @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\f\u0010\u0006R\u0014\u0010\r\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u0006R\u0014\u0010\u000f\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0006R\u0014\u0010\u0011\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0006R\u0014\u0010\u0013\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0006¨\u0006\u0015"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/db/Where$IStatement$Companion;", "", "()V", "Between", "", "getBetween", "()Ljava/lang/String;", "Equal", "getEqual", "GreaterThan", "getGreaterThan", "GreaterThanOrEq", "getGreaterThanOrEq", "Like", "getLike", "NotEqual", "getNotEqual", "SmallerThan", "getSmallerThan", "SmallerThanOrEq", "getSmallerThanOrEq", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
        /* renamed from: net.pubnative.lite.sdk.consent.db.Where$IStatement$Companion */
        /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/Where$IStatement$Companion.class */
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            private static final String Equal = " = ?";
            private static final String NotEqual = " != ?";
            private static final String GreaterThan = " > ?";
            private static final String GreaterThanOrEq = " >= ?";
            private static final String SmallerThan = " < ?";
            private static final String SmallerThanOrEq = " <= ?";
            private static final String Between = " BETWEEN ? AND ?";
            private static final String Like = " LIKE ?";

            private Companion() {
            }

            public final String getBetween() {
                return Between;
            }

            public final String getEqual() {
                return Equal;
            }

            public final String getGreaterThan() {
                return GreaterThan;
            }

            public final String getGreaterThanOrEq() {
                return GreaterThanOrEq;
            }

            public final String getLike() {
                return Like;
            }

            public final String getNotEqual() {
                return NotEqual;
            }

            public final String getSmallerThan() {
                return SmallerThan;
            }

            public final String getSmallerThanOrEq() {
                return SmallerThanOrEq;
            }
        }

        String[] getArgs();

        String getStatementString();
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\u0013\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u0011H\u0016¢\u0006\u0002\u0010\u0012J\b\u0010\u0013\u001a\u00020\u0003H\u0016J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0007¨\u0006\u0017"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/db/Where$LikeStatement;", "Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;", "key", "", "value", "(Ljava/lang/String;Ljava/lang/String;)V", "getKey", "()Ljava/lang/String;", "getValue", "component1", "component2", "copy", "equals", "", "other", "", "getArgs", "", "()[Ljava/lang/String;", "getStatementString", "hashCode", "", "toString", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: net.pubnative.lite.sdk.consent.db.Where$LikeStatement */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/Where$LikeStatement.class */
    public static final class LikeStatement implements IStatement {
        private final String key;
        private final String value;

        public LikeStatement(String key, String value) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(value, "value");
            this.key = key;
            this.value = value;
        }

        public static /* synthetic */ LikeStatement copy$default(LikeStatement likeStatement, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = likeStatement.key;
            }
            if ((i & 2) != 0) {
                str2 = likeStatement.value;
            }
            return likeStatement.copy(str, str2);
        }

        public final String component1() {
            return this.key;
        }

        public final String component2() {
            return this.value;
        }

        public final LikeStatement copy(String key, String value) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(value, "value");
            return new LikeStatement(key, value);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof LikeStatement)) {
                    return false;
                }
                LikeStatement likeStatement = (LikeStatement) obj;
                return C18524p.m3850a((Object) this.key, (Object) likeStatement.key) && C18524p.m3850a((Object) this.value, (Object) likeStatement.value);
            }
            return true;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.Where.IStatement
        public final String[] getArgs() {
            return new String[]{"%" + this.value + '%'};
        }

        public final String getKey() {
            return this.key;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.Where.IStatement
        public final String getStatementString() {
            return this.key + IStatement.Companion.getLike();
        }

        public final String getValue() {
            return this.value;
        }

        public final int hashCode() {
            String str = this.key;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.value;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public final String toString() {
            return "LikeStatement(key=" + this.key + ", value=" + this.value + ")";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010��\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\u0013\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00030\u0012H\u0016¢\u0006\u0002\u0010\u0013J\b\u0010\u0014\u001a\u00020\u0003H\u0016J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u0018"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/db/Where$NotEqStatement;", "Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;", "key", "", "value", "", "(Ljava/lang/String;Ljava/lang/Object;)V", "getKey", "()Ljava/lang/String;", "getValue", "()Ljava/lang/Object;", "component1", "component2", "copy", "equals", "", "other", "getArgs", "", "()[Ljava/lang/String;", "getStatementString", "hashCode", "", "toString", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: net.pubnative.lite.sdk.consent.db.Where$NotEqStatement */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/Where$NotEqStatement.class */
    public static final class NotEqStatement implements IStatement {
        private final String key;
        private final Object value;

        public NotEqStatement(String key, Object value) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(value, "value");
            this.key = key;
            this.value = value;
        }

        public static /* synthetic */ NotEqStatement copy$default(NotEqStatement notEqStatement, String str, Object obj, int i, Object obj2) {
            if ((i & 1) != 0) {
                str = notEqStatement.key;
            }
            if ((i & 2) != 0) {
                obj = notEqStatement.value;
            }
            return notEqStatement.copy(str, obj);
        }

        public final String component1() {
            return this.key;
        }

        public final Object component2() {
            return this.value;
        }

        public final NotEqStatement copy(String key, Object value) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(value, "value");
            return new NotEqStatement(key, value);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof NotEqStatement)) {
                    return false;
                }
                NotEqStatement notEqStatement = (NotEqStatement) obj;
                return C18524p.m3850a((Object) this.key, (Object) notEqStatement.key) && C18524p.m3850a(this.value, notEqStatement.value);
            }
            return true;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.Where.IStatement
        public final String[] getArgs() {
            return new String[]{this.value.toString()};
        }

        public final String getKey() {
            return this.key;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.Where.IStatement
        public final String getStatementString() {
            return this.key + IStatement.Companion.getNotEqual();
        }

        public final Object getValue() {
            return this.value;
        }

        public final int hashCode() {
            String str = this.key;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            Object obj = this.value;
            if (obj != null) {
                i = obj.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public final String toString() {
            return "NotEqStatement(key=" + this.key + ", value=" + this.value + ")";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0004\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0007\u0018��2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020��0\u0001B\u000f\b��\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020��H\u0016J \u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0016J \u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\nH\u0016J\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u0018\u0010\u0014\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u0018\u0010\u0015\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0012H\u0016J\b\u0010\u0016\u001a\u00020��H\u0016J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016J\u0018\u0010\u0018\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000eH\u0016R\u0011\u0010\u0003\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0019"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/db/Where$Operator;", "Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;", "Lnet/pubnative/lite/sdk/consent/db/Where;", "where", "(Lnet/pubnative/lite/sdk/consent/db/Where;)V", "getWhere", "()Lnet/pubnative/lite/sdk/consent/db/Where;", "and", "between", "key", "", "first", "Ljava/util/Date;", "second", "", "containString", "value", "eq", "", "greaterThan", "greaterThanOrEq", "notEq", "or", "smallerThan", "smallerThanOrEq", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: net.pubnative.lite.sdk.consent.db.Where$Operator */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/Where$Operator.class */
    public static final class Operator implements ISelectionOperator<Where, Operator> {
        private final Where where;

        public Operator(Where where) {
            C18524p.m3840d(where, "where");
            this.where = where;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
        public final Operator and() {
            this.where.addOperatorFunction(Condition.And);
            return this;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
        public final Where between(String key, Number first, Number second) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(first, "first");
            C18524p.m3840d(second, "second");
            this.where.between(key, first, second);
            return this.where;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
        public final Where between(String key, Date first, Date second) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(first, "first");
            C18524p.m3840d(second, "second");
            this.where.between(key, first, second);
            return this.where;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
        public final Where containString(String key, String value) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(value, "value");
            this.where.containString(key, value);
            return this.where;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
        /* renamed from: eq */
        public final Where mo642eq(String key, Object value) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(value, "value");
            this.where.mo642eq(key, value);
            return this.where;
        }

        public final Where getWhere() {
            return this.where;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
        public final Where greaterThan(String key, Number value) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(value, "value");
            this.where.greaterThan(key, value);
            return this.where;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
        public final Where greaterThanOrEq(String key, Number value) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(value, "value");
            this.where.greaterThanOrEq(key, value);
            return this.where;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
        public final Where notEq(String key, Object value) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(value, "value");
            this.where.notEq(key, value);
            return this.where;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
        /* renamed from: or */
        public final Operator mo641or() {
            this.where.addOperatorFunction(Condition.Or);
            return this;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
        public final Where smallerThan(String key, Number value) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(value, "value");
            this.where.smallerThan(key, value);
            return this.where;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
        public final Where smallerThanOrEq(String key, Number value) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(value, "value");
            this.where.smallerThanOrEq(key, value);
            return this.where;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018��2\u00020\u0001B\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u000f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0006HÆ\u0003J#\u0010\u000e\u001a\u00020��2\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\u0015\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0004H\u0016J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0004HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\u001a"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/db/Where$OrderStatement;", "Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;", "key", "", "", "order", "Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;", "(Ljava/util/List;Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;)V", "getKey", "()Ljava/util/List;", "getOrder", "()Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;", "component1", "component2", "copy", "equals", "", "other", "", "getArgs", "", "()[Ljava/lang/String;", "getStatementString", "hashCode", "", "toString", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: net.pubnative.lite.sdk.consent.db.Where$OrderStatement */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/Where$OrderStatement.class */
    static final class OrderStatement implements IStatement {
        private final List<String> key;
        private final ISelectionOperator.Order order;

        public OrderStatement(List<String> key, ISelectionOperator.Order order) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(order, "order");
            this.key = key;
            this.order = order;
        }

        public static /* synthetic */ OrderStatement copy$default(OrderStatement orderStatement, List list, ISelectionOperator.Order order, int i, Object obj) {
            if ((i & 1) != 0) {
                list = orderStatement.key;
            }
            if ((i & 2) != 0) {
                order = orderStatement.order;
            }
            return orderStatement.copy(list, order);
        }

        public final List<String> component1() {
            return this.key;
        }

        public final ISelectionOperator.Order component2() {
            return this.order;
        }

        public final OrderStatement copy(List<String> key, ISelectionOperator.Order order) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(order, "order");
            return new OrderStatement(key, order);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof OrderStatement)) {
                    return false;
                }
                OrderStatement orderStatement = (OrderStatement) obj;
                return C18524p.m3850a(this.key, orderStatement.key) && C18524p.m3850a(this.order, orderStatement.order);
            }
            return true;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.Where.IStatement
        public final String[] getArgs() {
            return null;
        }

        public final List<String> getKey() {
            return this.key;
        }

        public final ISelectionOperator.Order getOrder() {
            return this.order;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.Where.IStatement
        public final String getStatementString() {
            StringBuilder sb = new StringBuilder();
            int i = 0;
            for (Object obj : this.key) {
                if (i < 0) {
                    C18282n.m4175a();
                }
                sb.append((String) obj);
                if (i < this.key.size() - 1) {
                    sb.append(",");
                }
                i++;
            }
            sb.append(Where.Companion.getSPACE());
            sb.append(this.order.getClauseString());
            String sb2 = sb.toString();
            C18524p.m3843b(sb2, "sb.toString()");
            return sb2;
        }

        public final int hashCode() {
            List<String> list = this.key;
            int i = 0;
            int hashCode = list != null ? list.hashCode() : 0;
            ISelectionOperator.Order order = this.order;
            if (order != null) {
                i = order.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public final String toString() {
            return "OrderStatement(key=" + this.key + ", order=" + this.order + ")";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0004\n��\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010��\n��\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0082\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0007HÆ\u0003J'\u0010\u0011\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\u0013\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u0016H\u0016¢\u0006\u0002\u0010\u0017J\b\u0010\u0018\u001a\u00020\u0003H\u0016J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\f\u0010\r¨\u0006\u001c"}, m4298d2 = {"Lnet/pubnative/lite/sdk/consent/db/Where$SmallerThanStatement;", "Lnet/pubnative/lite/sdk/consent/db/Where$IStatement;", "key", "", "value", "", "isEqual", "", "(Ljava/lang/String;Ljava/lang/Number;Z)V", "()Z", "getKey", "()Ljava/lang/String;", "getValue", "()Ljava/lang/Number;", "component1", "component2", "component3", "copy", "equals", "other", "", "getArgs", "", "()[Ljava/lang/String;", "getStatementString", "hashCode", "", "toString", "hybid.sdk.voyager_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: net.pubnative.lite.sdk.consent.db.Where$SmallerThanStatement */
    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/consent/db/Where$SmallerThanStatement.class */
    public static final class SmallerThanStatement implements IStatement {
        private final boolean isEqual;
        private final String key;
        private final Number value;

        public SmallerThanStatement(String key, Number value, boolean z) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(value, "value");
            this.key = key;
            this.value = value;
            this.isEqual = z;
        }

        public /* synthetic */ SmallerThanStatement(String str, Number number, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, number, (i & 4) != 0 ? false : z);
        }

        public static /* synthetic */ SmallerThanStatement copy$default(SmallerThanStatement smallerThanStatement, String str, Number number, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = smallerThanStatement.key;
            }
            if ((i & 2) != 0) {
                number = smallerThanStatement.value;
            }
            if ((i & 4) != 0) {
                z = smallerThanStatement.isEqual;
            }
            return smallerThanStatement.copy(str, number, z);
        }

        public final String component1() {
            return this.key;
        }

        public final Number component2() {
            return this.value;
        }

        public final boolean component3() {
            return this.isEqual;
        }

        public final SmallerThanStatement copy(String key, Number value, boolean z) {
            C18524p.m3840d(key, "key");
            C18524p.m3840d(value, "value");
            return new SmallerThanStatement(key, value, z);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof SmallerThanStatement)) {
                    return false;
                }
                SmallerThanStatement smallerThanStatement = (SmallerThanStatement) obj;
                return C18524p.m3850a((Object) this.key, (Object) smallerThanStatement.key) && C18524p.m3850a(this.value, smallerThanStatement.value) && this.isEqual == smallerThanStatement.isEqual;
            }
            return true;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.Where.IStatement
        public final String[] getArgs() {
            return new String[]{this.value.toString()};
        }

        public final String getKey() {
            return this.key;
        }

        @Override // net.pubnative.lite.sdk.consent.p573db.Where.IStatement
        public final String getStatementString() {
            String str;
            StringBuilder sb = new StringBuilder();
            sb.append(this.key);
            boolean z = this.isEqual;
            if (z) {
                str = IStatement.Companion.getSmallerThanOrEq();
            } else if (z) {
                throw new NoWhenBranchMatchedException();
            } else {
                str = IStatement.Companion.getSmallerThan();
            }
            sb.append(str);
            return sb.toString();
        }

        public final Number getValue() {
            return this.value;
        }

        public final int hashCode() {
            String str = this.key;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            Number number = this.value;
            if (number != null) {
                i = number.hashCode();
            }
            boolean z = this.isEqual;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            return (((hashCode * 31) + i) * 31) + i2;
        }

        public final boolean isEqual() {
            return this.isEqual;
        }

        public final String toString() {
            return "SmallerThanStatement(key=" + this.key + ", value=" + this.value + ", isEqual=" + this.isEqual + ")";
        }
    }

    public final Where addOperatorFunction(IStatement iStatement) {
        if (!this.mStatements.isEmpty()) {
            this.mStatements.add(iStatement);
            return this;
        }
        throw new IllegalArgumentException("And statement cannot be the first params");
    }

    @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
    public final Operator and() {
        return new Operator(this).and();
    }

    @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
    public final Where between(String key, Number first, Number second) {
        C18524p.m3840d(key, "key");
        C18524p.m3840d(first, "first");
        C18524p.m3840d(second, "second");
        this.mStatements.add(new BetweenStatement(key, first, second));
        return this;
    }

    @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
    public final Where between(String key, Date first, Date second) {
        C18524p.m3840d(key, "key");
        C18524p.m3840d(first, "first");
        C18524p.m3840d(second, "second");
        this.mStatements.add(new BetweenStatement(key, first, second));
        return this;
    }

    @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
    public final Where containString(String key, String value) {
        C18524p.m3840d(key, "key");
        C18524p.m3840d(value, "value");
        this.mStatements.add(new LikeStatement(key, value));
        return this;
    }

    @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
    /* renamed from: eq */
    public final Where mo642eq(String key, Object value) {
        C18524p.m3840d(key, "key");
        C18524p.m3840d(value, "value");
        this.mStatements.add(new EqStatement(key, value));
        return this;
    }

    public final String[] getArgs$hybid_sdk_voyager_release() {
        ArrayList arrayList = new ArrayList();
        for (IStatement iStatement : this.mStatements) {
            String[] args = iStatement.getArgs();
            if (args != null) {
                C18282n.m4157a((Collection) arrayList, (Object[]) args);
            }
        }
        if (!arrayList.isEmpty()) {
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        }
        return null;
    }

    public final String getClauseString$hybid_sdk_voyager_release() {
        StringBuilder sb = new StringBuilder();
        for (IStatement iStatement : this.mStatements) {
            sb.append(iStatement.getStatementString());
            sb.append(SPACE);
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    public final String getOrder$hybid_sdk_voyager_release() {
        IStatement iStatement = this.mOrder;
        if (iStatement != null) {
            return iStatement.getStatementString();
        }
        return null;
    }

    @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
    public final Where greaterThan(String key, Number value) {
        C18524p.m3840d(key, "key");
        C18524p.m3840d(value, "value");
        this.mStatements.add(new GreaterThanStatement(key, value, false, 4, null));
        return this;
    }

    @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
    public final Where greaterThanOrEq(String key, Number value) {
        C18524p.m3840d(key, "key");
        C18524p.m3840d(value, "value");
        this.mStatements.add(new GreaterThanStatement(key, value, true));
        return this;
    }

    @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
    public final Where notEq(String key, Object value) {
        C18524p.m3840d(key, "key");
        C18524p.m3840d(value, "value");
        this.mStatements.add(new NotEqStatement(key, value));
        return this;
    }

    @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
    /* renamed from: or */
    public final Operator mo641or() {
        return new Operator(this).mo641or();
    }

    public final Where orderBy(ISelectionOperator.Order order, String... key) {
        C18524p.m3840d(order, "order");
        C18524p.m3840d(key, "key");
        this.mOrder = new OrderStatement(C18273i.m4183i(key), order);
        return this;
    }

    @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
    public final Where smallerThan(String key, Number value) {
        C18524p.m3840d(key, "key");
        C18524p.m3840d(value, "value");
        this.mStatements.add(new SmallerThanStatement(key, value, false, 4, null));
        return this;
    }

    @Override // net.pubnative.lite.sdk.consent.p573db.ISelectionOperator
    public final Where smallerThanOrEq(String key, Number value) {
        C18524p.m3840d(key, "key");
        C18524p.m3840d(value, "value");
        this.mStatements.add(new SmallerThanStatement(key, value, true));
        return this;
    }
}
