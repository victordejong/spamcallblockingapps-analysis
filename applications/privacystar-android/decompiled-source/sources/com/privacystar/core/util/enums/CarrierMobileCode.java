package com.privacystar.core.util.enums;

import android.support.annotation.StringRes;
import android.support.annotation.StyleRes;
import com.privacystar.core.C1566R;
import com.privacystar.core.util.BlockingManager;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\u0001\u0018�� \u001c2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u001cB=\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0001\u0010\b\u001a\u00020\u0003\u0012\b\b\u0001\u0010\t\u001a\u00020\u0003¢\u0006\u0002\u0010\nJ\u0006\u0010\u0013\u001a\u00020\u0005J\u0006\u0010\u0014\u001a\u00020\u0015R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u000eR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\fj\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001b¨\u0006\u001d"}, m254d2 = {"Lcom/privacystar/core/util/enums/CarrierMobileCode;", "", "id", "", "mcc", "", "mnc", "gid1", "style", "displayText", "(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V", "getDisplayText", "()I", "getGid1", "()Ljava/lang/String;", "getId", "getMcc", "getMnc", "getStyle", "getTuple", "isSpgCarrier", "", "BOOST_MOBILE1", "BOOST_MOBILE2", "BOOST_MOBILE3", "VIRGIN_MOBILE", "SPRINT_PREPAID", BlockingManager.MATCHVALUE_UNKNOWN, "Companion", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/enums/CarrierMobileCode.class */
public enum CarrierMobileCode {
    BOOST_MOBILE1(1, "311", "870", null, C1566R.C1574style.AppTheme_Boost, C1566R.string.spg_carrier_name_boost),
    BOOST_MOBILE2(2, "310", "240", "6230", C1566R.C1574style.AppTheme_Boost, C1566R.string.spg_carrier_name_boost),
    BOOST_MOBILE3(3, "310", "120", null, C1566R.C1574style.AppTheme_Boost, C1566R.string.spg_carrier_name_boost),
    VIRGIN_MOBILE(4, "311", "490", null, C1566R.C1574style.AppTheme_Virgin, C1566R.string.spg_carrier_name_virgin),
    SPRINT_PREPAID(5, "312", "530", null, C1566R.C1574style.AppTheme_Sprint, C1566R.string.spg_carrier_name_sprint),
    UNKNOWN(-1, "-1", "-1", null, C1566R.C1574style.AppTheme_Default, C1566R.string.spg_carrier_name_unknown);
    
    public static final Companion Companion = new Companion(null);
    private final int displayText;
    @Nullable
    private final String gid1;

    /* renamed from: id */
    private final int f301id;
    @NotNull
    private final String mcc;
    @NotNull
    private final String mnc;
    private final int style;

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J$\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\tJ'\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\tH��¢\u0006\u0002\b\u000e¨\u0006\u000f"}, m254d2 = {"Lcom/privacystar/core/util/enums/CarrierMobileCode$Companion;", "", "()V", "fromId", "Lcom/privacystar/core/util/enums/CarrierMobileCode;", "id", "", "matchCarrier", "code", "", "mnc", "gid1", "matchCarrierImpl", "mcc", "matchCarrierImpl$app_core", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/enums/CarrierMobileCode$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public static /* synthetic */ CarrierMobileCode matchCarrier$default(Companion companion, String str, String str2, String str3, int i, Object obj) {
            if ((i & 2) != 0) {
                str2 = "";
            }
            if ((i & 4) != 0) {
                str3 = null;
            }
            return companion.matchCarrier(str, str2, str3);
        }

        @NotNull
        public final CarrierMobileCode fromId(int i) {
            CarrierMobileCode carrierMobileCode;
            CarrierMobileCode[] values = CarrierMobileCode.values();
            int length = values.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    carrierMobileCode = null;
                    break;
                }
                carrierMobileCode = values[i2];
                if (carrierMobileCode.getId() == i) {
                    break;
                }
                i2++;
            }
            if (carrierMobileCode == null) {
                carrierMobileCode = CarrierMobileCode.UNKNOWN;
            }
            return carrierMobileCode;
        }

        @NotNull
        public final CarrierMobileCode matchCarrier(@NotNull String code, @NotNull String mnc, @Nullable String str) {
            Intrinsics.checkParameterIsNotNull(code, "code");
            Intrinsics.checkParameterIsNotNull(mnc, "mnc");
            String str2 = code;
            String str3 = mnc;
            if (StringsKt.isBlank(mnc)) {
                if (code.length() < 5 || code.length() > 6) {
                    Timber.m37d("Invalid MNCMCC tuple [%s]", code);
                    return CarrierMobileCode.UNKNOWN;
                }
                str2 = code.substring(0, 3);
                Intrinsics.checkExpressionValueIsNotNull(str2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                str3 = code.substring(3);
                Intrinsics.checkExpressionValueIsNotNull(str3, "(this as java.lang.String).substring(startIndex)");
            }
            CarrierMobileCode matchCarrierImpl$app_core = matchCarrierImpl$app_core(str2, str3, str);
            Timber.m37d("Matched carrier: [%s]", matchCarrierImpl$app_core);
            return matchCarrierImpl$app_core;
        }

        @NotNull
        public final CarrierMobileCode matchCarrierImpl$app_core(@NotNull String mcc, @NotNull String mnc, @Nullable String str) {
            CarrierMobileCode carrierMobileCode;
            Intrinsics.checkParameterIsNotNull(mcc, "mcc");
            Intrinsics.checkParameterIsNotNull(mnc, "mnc");
            CarrierMobileCode[] values = CarrierMobileCode.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    carrierMobileCode = null;
                    break;
                }
                CarrierMobileCode carrierMobileCode2 = values[i];
                if (Intrinsics.areEqual(carrierMobileCode2.getMcc(), mcc) && Intrinsics.areEqual(carrierMobileCode2.getMnc(), mnc)) {
                    carrierMobileCode = carrierMobileCode2;
                    break;
                }
                i++;
            }
            if (carrierMobileCode == null) {
                carrierMobileCode = CarrierMobileCode.UNKNOWN;
            }
            return carrierMobileCode;
        }
    }

    CarrierMobileCode(int i, @NotNull String mcc, @NotNull String mnc, @Nullable String str, @StyleRes int i2, @StringRes int i3) {
        Intrinsics.checkParameterIsNotNull(mcc, "mcc");
        Intrinsics.checkParameterIsNotNull(mnc, "mnc");
        this.f301id = i;
        this.mcc = mcc;
        this.mnc = mnc;
        this.gid1 = str;
        this.style = i2;
        this.displayText = i3;
    }

    public final int getDisplayText() {
        return this.displayText;
    }

    @Nullable
    public final String getGid1() {
        return this.gid1;
    }

    public final int getId() {
        return this.f301id;
    }

    @NotNull
    public final String getMcc() {
        return this.mcc;
    }

    @NotNull
    public final String getMnc() {
        return this.mnc;
    }

    public final int getStyle() {
        return this.style;
    }

    @NotNull
    public final String getTuple() {
        return this.mcc + this.mnc;
    }

    public final boolean isSpgCarrier() {
        boolean z;
        switch (this) {
            case BOOST_MOBILE1:
            case BOOST_MOBILE2:
            case BOOST_MOBILE3:
            case VIRGIN_MOBILE:
            case SPRINT_PREPAID:
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
