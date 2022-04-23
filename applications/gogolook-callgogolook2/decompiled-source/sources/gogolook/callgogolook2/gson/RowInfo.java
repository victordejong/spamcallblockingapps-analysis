package gogolook.callgogolook2.gson;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import p459j.p460a.p521j0.p528w.AbstractC12741t;
import p459j.p460a.p521j0.p528w.AbstractC12746u;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14093n4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.C14327z3;
import p459j.p460a.p582w0.p590x4.C14247d;
@Deprecated
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/RowInfo.class */
public class RowInfo {
    public static final String TAG = "RowInfo";
    public String mContactName;
    public String mDisplayNumber;
    public String mDisplayRemoteNumber;
    public String mE164;
    public boolean mIsCOO;
    public boolean mIsFPN;
    public List<MetaphorType> mMetaphorTypes;
    public String mNumber;
    public NumberInfo mNumberInfo;
    public Primary mPrimary;
    public Secondary mSecondary;

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/RowInfo$Builder.class */
    public static class Builder {
        public boolean isSetupComplete;
        public String mBuildContactName;
        public String mBuildDisplayNumber;
        public String mBuildDisplayRemoteNumber;
        public String mBuildE164;
        public String mBuildNumber;
        public HashSet<String> mBuildSpoofMatchNumbers;
        public NumberInfo mBuilderNumberInfo;
        public OverridePrimaryName mOverridePrimaryName;
        public OverrideSecondaryName mOverrideSecondaryName;
        public Set<Primary.Type> mPrimarySet;
        public int mRowSize;
        public Set<Secondary.Type> mSecondarySet;

        public Builder(@NonNull String str, @NonNull NumberInfo numberInfo) {
            this(str, null, numberInfo, null);
        }

        public Builder(@NonNull String str, String str2, @NonNull NumberInfo numberInfo, String str3) {
            this.mBuildSpoofMatchNumbers = new HashSet<>();
            this.isSetupComplete = false;
            this.mBuildNumber = str;
            this.mBuildE164 = C14108o4.m2474l(str);
            this.mBuildContactName = str2 == null ? C14217x3.m2146e(MyApplication.m29013o(), str) : str2;
            this.mBuilderNumberInfo = numberInfo;
            this.mPrimarySet = new HashSet();
            this.mSecondarySet = new HashSet();
            this.mBuildDisplayNumber = str3 == null ? C14108o4.m2493a(this.mBuildE164, true, false) : str3;
            this.mBuildDisplayRemoteNumber = C14108o4.m2493a(str, true, true);
            this.mRowSize = 2;
        }

        /* renamed from: a */
        public final Builder m28219a() {
            if (this.mPrimarySet.contains(Primary.Type.MYTAG) || this.mPrimarySet.contains(Primary.Type.NOTE)) {
                this.mSecondarySet.add(Secondary.Type.MYREPORT_DESC);
            }
            if (this.mPrimarySet.contains(Primary.Type.SPOOF)) {
                this.mSecondarySet.add(Secondary.Type.SPOOF_DESC);
            }
            if (this.mPrimarySet.contains(Primary.Type.SPAM)) {
                this.mSecondarySet.add(Secondary.Type.SPAM_DESC);
            }
            if (this.mPrimarySet.contains(Primary.Type.WHOSCALLCARD_V1)) {
                this.mSecondarySet.add(Secondary.Type.WHOSCALLCARD_V1_DESC);
            }
            if (this.mPrimarySet.contains(Primary.Type.WHOSCALLCARD_V2_V3)) {
                this.mSecondarySet.add(Secondary.Type.WHOSCALLCARD_V2_V3_DESC);
            }
            if (this.mPrimarySet.contains(Primary.Type.MYTAG) || this.mPrimarySet.contains(Primary.Type.NOTE) || this.mPrimarySet.contains(Primary.Type.CS) || this.mPrimarySet.contains(Primary.Type.WHOSCALLCARD_V1) || this.mPrimarySet.contains(Primary.Type.WHOSCALLCARD_V2_V3) || this.mPrimarySet.contains(Primary.Type.MASSES)) {
                this.mSecondarySet.add(Secondary.Type.NAME_DESC);
                this.mSecondarySet.add(Secondary.Type.BIZCATEGORY);
                this.mSecondarySet.add(Secondary.Type.SPAM);
                this.mSecondarySet.add(Secondary.Type.COO_DESC);
            }
            if (this.mPrimarySet.contains(Primary.Type.NUMBER)) {
                this.mSecondarySet.add(Secondary.Type.ERROR);
                this.mSecondarySet.add(Secondary.Type.SEARCHING);
                this.mSecondarySet.add(Secondary.Type.NO_INFO);
            }
            return this;
        }

        /* renamed from: a */
        public Builder m28218a(int i) {
            if (i < 1 || this.mRowSize > 2) {
                throw new IllegalArgumentException("size should be 1 or 2");
            }
            this.mRowSize = i;
            return this;
        }

        /* renamed from: a */
        public Builder m28214a(OverridePrimaryName overridePrimaryName) {
            this.mOverridePrimaryName = overridePrimaryName;
            return this;
        }

        /* renamed from: a */
        public Builder m28213a(OverrideSecondaryName overrideSecondaryName) {
            this.mOverrideSecondaryName = overrideSecondaryName;
            return this;
        }

        /* renamed from: a */
        public Builder m28211a(String str) {
            this.mBuildDisplayNumber = str;
            return this;
        }

        /* renamed from: a */
        public Builder m28210a(boolean z) {
            this.mBuildSpoofMatchNumbers.clear();
            if (z) {
                this.mBuildSpoofMatchNumbers.add(C14108o4.m2486c(this.mBuildNumber));
            }
            this.mBuildSpoofMatchNumbers.add(C14108o4.m2494a(this.mBuildNumber, true));
            this.mBuildSpoofMatchNumbers.add(C14108o4.m2494a(this.mBuildNumber, false));
            return this;
        }

        /* renamed from: a */
        public Builder m28209a(Primary.Type... typeArr) {
            this.mPrimarySet.addAll(Arrays.asList(typeArr));
            m28219a();
            return this;
        }

        /* renamed from: a */
        public Builder m28208a(Secondary.Type... typeArr) {
            this.mSecondarySet.addAll(Arrays.asList(typeArr));
            return this;
        }

        /* renamed from: a */
        public final void m28217a(Context context, RowInfo rowInfo, NumberInfo numberInfo) {
            if (numberInfo.m28354a((String[]) this.mBuildSpoofMatchNumbers.toArray(new String[0])) && this.mPrimarySet.contains(Primary.Type.SPOOF)) {
                rowInfo.m28254a(!TextUtils.isEmpty(numberInfo.m28380P()) ? numberInfo.m28380P() : C14093n4.m2572d(context, "FPN"), Primary.Type.SPOOF);
                rowInfo.mIsFPN = true;
            } else if (numberInfo.m28308m0() && this.mPrimarySet.contains(Primary.Type.WHOSCALLCARD_V2_V3)) {
                rowInfo.m28254a(numberInfo.m28393C(), Primary.Type.WHOSCALLCARD_V2_V3);
            } else if (!TextUtils.isEmpty(rowInfo.mContactName) && this.mPrimarySet.contains(Primary.Type.CONTACT)) {
                rowInfo.m28254a(rowInfo.mContactName, Primary.Type.CONTACT);
            } else if (numberInfo.m28353a0() && this.mPrimarySet.contains(Primary.Type.MYTAG)) {
                rowInfo.m28254a(numberInfo.m28394B().name, Primary.Type.MYTAG);
            } else if (numberInfo.m28337d0() && this.mPrimarySet.contains(Primary.Type.NOTE)) {
                rowInfo.m28254a(numberInfo.m28391E().get(0).descr, Primary.Type.NOTE);
            } else if (numberInfo.m28375U() && this.mPrimarySet.contains(Primary.Type.CS)) {
                rowInfo.m28254a(numberInfo.m28393C(), Primary.Type.CS);
            } else if (numberInfo.m28310l0() && this.mPrimarySet.contains(Primary.Type.WHOSCALLCARD_V1)) {
                rowInfo.m28254a(numberInfo.m28393C(), Primary.Type.WHOSCALLCARD_V1);
            } else if (numberInfo.m28371Y() && numberInfo.m28342c0() && ((C14217x3.m2160b(numberInfo.m28383M()) || !numberInfo.m28383M().equals("FPN")) && this.mPrimarySet.contains(Primary.Type.MASSES))) {
                rowInfo.m28254a(numberInfo.m28393C(), Primary.Type.MASSES);
            } else if (numberInfo.m28370Z() && this.mPrimarySet.contains(Primary.Type.MYSPAM)) {
                rowInfo.m28253a(C14093n4.m2578a(numberInfo.m28395A().reason), Primary.Type.MYSPAM, true);
            } else if (numberInfo.m28329f0() && this.mPrimarySet.contains(Primary.Type.SPAM)) {
                rowInfo.m28253a(C14093n4.m2572d(context, numberInfo.m28383M()), Primary.Type.SPAM, numberInfo.m28373W());
                rowInfo.mIsFPN = numberInfo.m28383M().equals("FPN");
            }
            if (this.mPrimarySet.contains(Primary.Type.INPUT) && (rowInfo.mPrimary == null || rowInfo.mPrimary.type.equals(Primary.Type.MYSPAM) || rowInfo.mPrimary.type.equals(Primary.Type.SPAM))) {
                rowInfo.m28254a("", Primary.Type.INPUT);
            }
            if (rowInfo.mPrimary != null) {
                return;
            }
            if (this.mPrimarySet.contains(Primary.Type.NUMBER)) {
                rowInfo.m28254a(this.mBuildDisplayNumber, Primary.Type.NUMBER);
            } else if (this.mPrimarySet.contains(Primary.Type.NO_INFO)) {
                rowInfo.m28254a(C14206w4.m2225a((int) R$string.calldialog_no_result), Primary.Type.NO_INFO);
            }
        }

        /* renamed from: a */
        public final void m28212a(RowInfo rowInfo, NumberInfo numberInfo) {
            if (rowInfo.m28224h().type == Primary.Type.SPOOF) {
                rowInfo.m28267a(MetaphorType.SPOOF);
            } else if (numberInfo.m28308m0()) {
                rowInfo.m28267a(MetaphorType.WHOSCALLCARD_V2_V3);
                if (!TextUtils.isEmpty(rowInfo.mContactName)) {
                    rowInfo.m28267a(MetaphorType.CONTACT);
                    rowInfo.m28267a(MetaphorType.INFO);
                }
            } else if (!TextUtils.isEmpty(rowInfo.mContactName)) {
                rowInfo.m28267a(MetaphorType.CONTACT);
                if (numberInfo.m28372X()) {
                    rowInfo.m28267a(MetaphorType.INFO);
                }
            } else if (numberInfo.m28329f0() && !numberInfo.m28292u0()) {
                rowInfo.m28267a(MetaphorType.SPAM);
                if (numberInfo.m28373W() || numberInfo.m28370Z()) {
                    rowInfo.mPrimary.isRed = true;
                }
            } else if (numberInfo.m28310l0()) {
                rowInfo.m28267a(MetaphorType.WHOSCALLCARD_V1);
            } else if (numberInfo.m28372X()) {
                rowInfo.m28267a(MetaphorType.INFO);
            } else {
                rowInfo.m28267a(MetaphorType.NOINFO);
            }
        }

        /* renamed from: b */
        public Builder m28204b(boolean z) {
            m28218a(2);
            m28201d();
            m28209a(Primary.Type.NUMBER, Primary.Type.NO_INFO);
            m28208a(Secondary.Type.WARNING);
            m28210a(z);
            this.isSetupComplete = true;
            return this;
        }

        /* renamed from: b */
        public RowInfo m28207b() {
            OverrideSecondaryName overrideSecondaryName;
            String a;
            String a2;
            if (!this.isSetupComplete) {
                throw new IllegalArgumentException("ROWINFO IS NOT SETUP, please call setStandardCallDialog/setStandardCallEndDialog/setStandardOneRow/setStandardTwoRowBase/setStandardTwoRow/setOneRowName/setStandardNDP before calling create.");
            } else if (this.mBuilderNumberInfo == null) {
                return null;
            } else {
                RowInfo c = m28203c();
                if (c != null) {
                    OverridePrimaryName overridePrimaryName = this.mOverridePrimaryName;
                    if (!(overridePrimaryName == null || (a2 = overridePrimaryName.mo28195a(c.mNumberInfo, c.mPrimary.type)) == null)) {
                        c.mPrimary.name = a2;
                    }
                    if (!(c.mSecondary == null || (overrideSecondaryName = this.mOverrideSecondaryName) == null || (a = overrideSecondaryName.mo5341a(c.mNumberInfo, c.mSecondary.type)) == null)) {
                        c.mSecondary.name = a;
                    }
                }
                return c;
            }
        }

        /* renamed from: b */
        public final void m28206b(Context context, RowInfo rowInfo, NumberInfo numberInfo) {
            String str;
            if (rowInfo.mPrimary.type != Primary.Type.NO_INFO) {
                if (rowInfo.mPrimary.type == Primary.Type.NUMBER && this.mSecondarySet.contains(Secondary.Type.NO_INFO)) {
                    rowInfo.m28252a(C14206w4.m2225a((int) R$string.calldialog_no_result), Secondary.Type.NO_INFO);
                } else if (rowInfo.mPrimary.type == Primary.Type.INPUT) {
                    if (numberInfo.m28370Z()) {
                        rowInfo.m28252a(String.format(C14206w4.m2225a((int) R$string.calldialog_myreport_category), C14093n4.m2578a(numberInfo.m28395A().reason)), Secondary.Type.MYREPORT_DESC);
                    } else if (numberInfo.m28329f0()) {
                        rowInfo.m28250a(C14093n4.m2572d(context, numberInfo.m28383M()), Secondary.Type.SPAM, numberInfo.m28373W());
                    } else {
                        rowInfo.m28252a(C14206w4.m2225a((int) R$string.calldialog_no_result), Secondary.Type.NO_INFO);
                    }
                } else if (rowInfo.mPrimary.type != Primary.Type.NUMBER && this.mSecondarySet.contains(Secondary.Type.NUMBER)) {
                    rowInfo.m28252a(this.mBuildDisplayNumber, Secondary.Type.NUMBER);
                } else if (rowInfo.mIsCOO && this.mSecondarySet.contains(Secondary.Type.COO_DESC)) {
                    rowInfo.m28252a(C14206w4.m2225a((int) R$string.calldialog_coo_desc), Secondary.Type.COO_DESC);
                } else if (rowInfo.mPrimary.type != Primary.Type.MYTAG || !this.mSecondarySet.contains(Secondary.Type.MYREPORT_DESC)) {
                    if (rowInfo.mPrimary.type != Primary.Type.NOTE || !this.mSecondarySet.contains(Secondary.Type.MYREPORT_DESC)) {
                        if (rowInfo.mPrimary.type == Primary.Type.WHOSCALLCARD_V2_V3 && this.mSecondarySet.contains(Secondary.Type.WHOSCALLCARD_V2_V3_DESC)) {
                            rowInfo.m28252a(numberInfo.m28307n(), Secondary.Type.WHOSCALLCARD_V2_V3_DESC);
                        } else if (rowInfo.mPrimary.type == Primary.Type.CONTACT) {
                            if (numberInfo.m28374V()) {
                                rowInfo.m28252a(C14327z3.m1562c(numberInfo.m28316j()), Secondary.Type.BIZCATEGORY);
                            }
                        } else if (rowInfo.mPrimary.type == Primary.Type.MYSPAM && this.mSecondarySet.contains(Secondary.Type.MYREPORT_DESC)) {
                            rowInfo.m28252a(C14206w4.m2225a((int) R$string.calldialog_myreport), Secondary.Type.MYREPORT_DESC);
                        } else if (rowInfo.mPrimary.type != Primary.Type.WHOSCALLCARD_V2_V3 && numberInfo.m28370Z() && this.mSecondarySet.contains(Secondary.Type.MYREPORT_DESC)) {
                            rowInfo.m28250a(String.format(C14206w4.m2225a((int) R$string.calldialog_myreport_category), C14093n4.m2578a(numberInfo.m28395A().reason)), Secondary.Type.MYREPORT_DESC, true);
                        } else if ((rowInfo.mPrimary.type == Primary.Type.SPAM && this.mSecondarySet.contains(Secondary.Type.SPAM_DESC)) || (rowInfo.mPrimary.type == Primary.Type.SPOOF && this.mSecondarySet.contains(Secondary.Type.SPOOF_DESC))) {
                            int a = CallUtils.m26597a(numberInfo.m28382N());
                            if (a == 0) {
                                str = C14206w4.m2225a(rowInfo.mIsFPN ? R$string.calldialog_spoof_desc : R$string.calldialog_community_spam);
                            } else {
                                str = String.format(C14206w4.m2225a((int) R$string.calldialog_spam_category), Integer.valueOf(a));
                            }
                            rowInfo.m28252a(str, rowInfo.mPrimary.type == Primary.Type.SPAM ? Secondary.Type.SPAM_DESC : Secondary.Type.SPOOF_DESC);
                        } else if (rowInfo.mPrimary.type == Primary.Type.WHOSCALLCARD_V2_V3 || !numberInfo.m28329f0() || !this.mSecondarySet.contains(Secondary.Type.SPAM)) {
                            if ((rowInfo.mPrimary.type != Primary.Type.WHOSCALLCARD_V1 || this.mPrimarySet.contains(Primary.Type.INPUT)) && numberInfo.m28374V() && this.mSecondarySet.contains(Secondary.Type.BIZCATEGORY)) {
                                String j = numberInfo.m28316j();
                                if (this.mPrimarySet.contains(Primary.Type.INPUT)) {
                                    rowInfo.m28252a(C14327z3.m1562c(j), Secondary.Type.BIZCATEGORY);
                                } else {
                                    rowInfo.m28252a(CallUtils.m26573a(C14327z3.m1562c(j), CallUtils.m26586a(this.mBuilderNumberInfo, numberInfo.m28313k() + numberInfo.m28303p())), Secondary.Type.BIZCATEGORY);
                                }
                            } else if (rowInfo.mPrimary.type == Primary.Type.WHOSCALLCARD_V1 && this.mSecondarySet.contains(Secondary.Type.WARNING) && numberInfo.m28333e0()) {
                                rowInfo.m28250a(C14206w4.m2225a((int) R$string.calldialog_wcard_warning), Secondary.Type.WARNING, true);
                            } else if (rowInfo.mPrimary.type == Primary.Type.WHOSCALLCARD_V1 && this.mSecondarySet.contains(Secondary.Type.WHOSCALLCARD_V1_DESC)) {
                                rowInfo.m28252a(C14206w4.m2225a((int) R$string.calldialog_profile_reminder), Secondary.Type.WHOSCALLCARD_V1_DESC);
                            } else if (rowInfo.mPrimary.type != Primary.Type.WHOSCALLCARD_V2_V3) {
                                rowInfo.m28252a(C14206w4.m2225a((int) R$string.calldialog_community), Secondary.Type.NAME_DESC);
                            }
                        } else if (this.mPrimarySet.contains(Primary.Type.INPUT)) {
                            rowInfo.m28250a(C14093n4.m2572d(context, numberInfo.m28383M()), Secondary.Type.SPAM, numberInfo.m28373W());
                        } else {
                            rowInfo.m28250a(CallUtils.m26554b(numberInfo.m28383M(), CallUtils.m26597a(numberInfo.m28382N())), Secondary.Type.SPAM, numberInfo.m28373W());
                        }
                    } else if (!this.mPrimarySet.contains(Primary.Type.INPUT)) {
                        rowInfo.m28252a(C14206w4.m2225a((int) R$string.calldialog_memo), Secondary.Type.MYREPORT_DESC);
                    } else if (numberInfo.m28370Z()) {
                        rowInfo.m28250a(String.format(C14206w4.m2225a((int) R$string.calldialog_myreport_category), C14093n4.m2578a(numberInfo.m28395A().reason)), Secondary.Type.MYREPORT_DESC, true);
                    } else if (numberInfo.m28329f0()) {
                        rowInfo.m28250a(C14093n4.m2572d(context, numberInfo.m28383M()), Secondary.Type.SPAM, numberInfo.m28373W());
                    } else if (numberInfo.m28374V()) {
                        rowInfo.m28252a(C14327z3.m1562c(numberInfo.m28316j()), Secondary.Type.BIZCATEGORY);
                    } else {
                        rowInfo.m28252a(C14206w4.m2225a((int) R$string.calldialog_memo), Secondary.Type.MYREPORT_DESC);
                    }
                } else if (!this.mPrimarySet.contains(Primary.Type.INPUT)) {
                    rowInfo.m28252a(C14206w4.m2225a((int) R$string.calldialog_myreport), Secondary.Type.MYREPORT_DESC);
                } else if (numberInfo.m28370Z()) {
                    rowInfo.m28250a(String.format(C14206w4.m2225a((int) R$string.calldialog_myreport_category), C14093n4.m2578a(numberInfo.m28395A().reason)), Secondary.Type.MYREPORT_DESC, true);
                } else if (numberInfo.m28329f0()) {
                    rowInfo.m28250a(C14093n4.m2572d(context, numberInfo.m28383M()), Secondary.Type.SPAM, numberInfo.m28373W());
                } else if (numberInfo.m28374V()) {
                    rowInfo.m28252a(C14327z3.m1562c(numberInfo.m28316j()), Secondary.Type.BIZCATEGORY);
                } else {
                    rowInfo.m28252a(C14206w4.m2225a((int) R$string.calldialog_myreport), Secondary.Type.MYREPORT_DESC);
                }
            }
        }

        /* renamed from: c */
        public Builder m28202c(boolean z) {
            return m28204b(z);
        }

        /* renamed from: c */
        public final RowInfo m28203c() {
            RowInfo rowInfo = new RowInfo();
            rowInfo.mNumberInfo = this.mBuilderNumberInfo;
            rowInfo.mContactName = this.mBuildContactName;
            rowInfo.mNumber = this.mBuildNumber;
            rowInfo.mE164 = this.mBuildE164;
            rowInfo.mDisplayNumber = this.mBuildDisplayNumber;
            rowInfo.mDisplayRemoteNumber = this.mBuildDisplayRemoteNumber;
            Context o = MyApplication.m29013o();
            NumberInfo numberInfo = rowInfo.mNumberInfo;
            if (numberInfo.m28294t0()) {
                if (!this.mPrimarySet.contains(Primary.Type.CONTACT) || C14217x3.m2160b(this.mBuildContactName)) {
                    rowInfo.m28254a(this.mBuildDisplayNumber, Primary.Type.NUMBER);
                    rowInfo.m28267a(MetaphorType.NOINFO);
                } else {
                    rowInfo.m28254a(this.mBuildContactName, Primary.Type.CONTACT);
                    rowInfo.m28267a(MetaphorType.CONTACT);
                }
                rowInfo.m28252a(C14206w4.m2225a((int) R$string.calldialog_searching), Secondary.Type.SEARCHING);
            } else if (numberInfo.m28298r0()) {
                if (this.mRowSize != 1) {
                    if (!this.mPrimarySet.contains(Primary.Type.CONTACT) || C14217x3.m2160b(this.mBuildContactName)) {
                        rowInfo.m28254a(this.mBuildDisplayNumber, Primary.Type.NUMBER);
                    } else {
                        rowInfo.m28254a(this.mBuildContactName, Primary.Type.CONTACT);
                        rowInfo.m28267a(MetaphorType.CONTACT);
                    }
                    NumberInfo.ErrorReason o2 = numberInfo.m28305o();
                    if (o2 == NumberInfo.ErrorReason.NO_NETWORK) {
                        rowInfo.m28252a(C14206w4.m2225a((int) R$string.calldialog_no_internet), Secondary.Type.ERROR);
                    } else if (o2 == NumberInfo.ErrorReason.NETWORK_RESTRICTED) {
                        rowInfo.m28254a(C14206w4.m2225a((int) R$string.cd_permission_title), Primary.Type.ERROR);
                        rowInfo.m28252a(C14206w4.m2225a((int) R$string.cd_permission_context), Secondary.Type.ERROR);
                    } else {
                        rowInfo.m28252a(C14206w4.m2225a((int) R$string.calldialog_server_busy), Secondary.Type.ERROR);
                    }
                } else if (this.mPrimarySet.contains(Primary.Type.ERROR)) {
                    NumberInfo.ErrorReason o3 = numberInfo.m28305o();
                    if (o3 == NumberInfo.ErrorReason.NO_NETWORK) {
                        rowInfo.m28254a(C14206w4.m2225a((int) R$string.calldialog_no_internet), Primary.Type.ERROR);
                    } else if (o3 == NumberInfo.ErrorReason.NETWORK_RESTRICTED) {
                        rowInfo.m28254a(C14206w4.m2225a((int) R$string.cd_permission_context), Primary.Type.ERROR);
                    } else {
                        rowInfo.m28254a(C14206w4.m2225a((int) R$string.calldialog_server_busy), Primary.Type.ERROR);
                    }
                } else {
                    rowInfo.m28254a("", Primary.Type.ERROR);
                }
                rowInfo.m28267a(MetaphorType.NOINTERNET);
            } else {
                boolean z = true;
                if (!numberInfo.m28300q0()) {
                    z = C14093n4.m2570e(rowInfo.mNumber);
                }
                rowInfo.mIsCOO = z;
                m28217a(o, rowInfo, numberInfo);
                if (rowInfo.mPrimary == null) {
                    return null;
                }
                m28212a(rowInfo, numberInfo);
                m28206b(o, rowInfo, numberInfo);
            }
            return rowInfo;
        }

        /* renamed from: d */
        public Builder m28201d() {
            this.mPrimarySet.add(Primary.Type.SPOOF);
            this.mPrimarySet.add(Primary.Type.CS);
            this.mPrimarySet.add(Primary.Type.MASSES);
            this.mPrimarySet.add(Primary.Type.WHOSCALLCARD_V1);
            this.mPrimarySet.add(Primary.Type.WHOSCALLCARD_V2_V3);
            this.mPrimarySet.add(Primary.Type.CONTACT);
            this.mPrimarySet.add(Primary.Type.MYTAG);
            this.mPrimarySet.add(Primary.Type.MYSPAM);
            this.mPrimarySet.add(Primary.Type.NOTE);
            this.mPrimarySet.add(Primary.Type.SPAM);
            m28219a();
            return this;
        }

        /* renamed from: d */
        public final Builder m28200d(boolean z) {
            m28218a(2);
            m28201d();
            m28209a(Primary.Type.INPUT);
            m28208a(Secondary.Type.NO_INFO, Secondary.Type.SPAM);
            m28210a(z);
            this.isSetupComplete = true;
            return this;
        }

        /* renamed from: e */
        public final Builder m28199e() {
            m28218a(1);
            m28201d();
            m28210a(false);
            this.isSetupComplete = true;
            return this;
        }

        /* renamed from: e */
        public Builder m28198e(boolean z) {
            m28218a(1);
            m28201d();
            m28209a(Primary.Type.ERROR, Primary.Type.NO_INFO);
            m28210a(z);
            this.isSetupComplete = true;
            return this;
        }

        /* renamed from: f */
        public final Builder m28197f() {
            m28218a(2);
            m28201d();
            m28210a(false);
            this.isSetupComplete = true;
            return this;
        }

        /* renamed from: f */
        public Builder m28196f(boolean z) {
            m28218a(2);
            m28201d();
            m28209a(Primary.Type.NUMBER, Primary.Type.NO_INFO);
            m28208a(Secondary.Type.ERROR, Secondary.Type.NO_INFO, Secondary.Type.SEARCHING, Secondary.Type.NUMBER);
            m28210a(z);
            this.isSetupComplete = true;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/RowInfo$MetaphorType.class */
    public enum MetaphorType {
        CONTACT,
        SPAM,
        NOINFO,
        INFO,
        WHOSCALLCARD_V1,
        WHOSCALLCARD_V2_V3,
        NOINTERNET,
        SPOOF
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/RowInfo$OverridePrimaryName.class */
    public interface OverridePrimaryName {
        /* renamed from: a */
        String mo28195a(NumberInfo numberInfo, Primary.Type type);
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/RowInfo$OverrideSecondaryName.class */
    public interface OverrideSecondaryName {
        /* renamed from: a */
        String mo5341a(NumberInfo numberInfo, Secondary.Type type);
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/RowInfo$Primary.class */
    public static class Primary {
        public boolean isRed;
        public String name;
        public Type type;

        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/RowInfo$Primary$Type.class */
        public enum Type {
            INPUT,
            CONTACT,
            ERROR,
            NUMBER,
            MYTAG,
            MYSPAM,
            NOTE,
            CS,
            WHOSCALLCARD_V1,
            WHOSCALLCARD_V2_V3,
            MASSES,
            SPAM,
            NO_INFO,
            SPOOF
        }
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/RowInfo$Secondary.class */
    public static class Secondary {
        public boolean hasUsefulInfo;
        public int highlightColor;
        public String highlightWord;
        public boolean isRed;
        public String name;
        public Type type;

        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/RowInfo$Secondary$Type.class */
        public enum Type {
            NUMBER,
            ERROR,
            SEARCHING,
            NO_INFO,
            MYREPORT_DESC,
            SPAM_DESC,
            WARNING,
            SPAM,
            BIZCATEGORY,
            WHOSCALLCARD_V2_V3_DESC,
            WHOSCALLCARD_V1_DESC,
            NAME_DESC,
            COO_DESC,
            SPOOF_DESC
        }
    }

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/RowInfo$Tertiary.class */
    public static class Tertiary {
        @ColorInt
        public int highlightColor;
        @DrawableRes
        public int leftCompoundDrawable;
        @Nullable
        public String name;
        @Nullable
        public Type type;

        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/RowInfo$Tertiary$Type.class */
        public enum Type {
            COO_DESC,
            CONTACT,
            SPAM,
            WARNING,
            COMMUNITY,
            INCOMING_SUSPICIOUS,
            NUM_BLOCKED,
            NUM_ADDED,
            SPOOF_DESC
        }
    }

    @NonNull
    /* renamed from: a */
    public static Tertiary m28268a(@NonNull NumberInfo numberInfo, @NonNull RowInfo rowInfo, @Nullable String str, boolean z, boolean z2) {
        int i = 0;
        int N = z ? numberInfo.m28382N() : 0;
        if (z2) {
            i = numberInfo.m28303p() + numberInfo.m28313k();
        }
        return m28245a(numberInfo.m28312k0(), rowInfo, str, N, i);
    }

    @NonNull
    /* renamed from: a */
    public static Tertiary m28246a(boolean z, @NonNull RowInfo rowInfo) {
        return m28245a(z, rowInfo, (String) null, 0, 0);
    }

    @NonNull
    /* renamed from: a */
    public static Tertiary m28245a(boolean z, @NonNull RowInfo rowInfo, @Nullable String str, int i, int i2) {
        int c;
        Tertiary tertiary = new Tertiary();
        boolean p0 = rowInfo.m28226g().m28302p0();
        if (tertiary.type == null && rowInfo.mPrimary.type == Primary.Type.SPOOF) {
            tertiary.type = Tertiary.Type.SPOOF_DESC;
            tertiary.name = C14206w4.m2225a((int) R$string.ndp_info_spoof_hint);
            tertiary.highlightColor = C14167t.m2314b();
        }
        if (tertiary.type == null && !z && rowInfo.m28222j() && rowInfo.m28223i().type != Secondary.Type.COO_DESC) {
            tertiary.type = Tertiary.Type.COO_DESC;
            tertiary.name = C14206w4.m2225a((int) R$string.calldialog_coo_desc);
            tertiary.highlightColor = C14167t.m2314b();
        }
        if (tertiary.type == null && z && rowInfo.m28224h().type != Primary.Type.MYTAG && rowInfo.m28224h().type != Primary.Type.NOTE) {
            if (!C14217x3.m2160b(rowInfo.m28269a())) {
                tertiary.type = Tertiary.Type.CONTACT;
                tertiary.name = String.format(C14217x3.m2200a((int) R$string.showcard_list_contact_name), rowInfo.m28269a());
            } else if (rowInfo.m28226g().m28329f0()) {
                tertiary.type = Tertiary.Type.SPAM;
                tertiary.highlightColor = C14167t.m2314b();
                if (rowInfo.m28226g().m28370Z()) {
                    tertiary.name = String.format(C14217x3.m2200a((int) R$string.calldialog_myreport_category), C14093n4.m2578a(rowInfo.m28226g().whoscall.mySpam.reason));
                } else {
                    tertiary.name = CallUtils.m26554b(rowInfo.m28226g().m28383M(), CallUtils.m26597a(rowInfo.m28226g().m28382N()));
                }
            } else if (rowInfo.m28226g().m28333e0() && !p0) {
                tertiary.type = Tertiary.Type.WARNING;
                tertiary.highlightColor = C14167t.m2314b();
                tertiary.name = C14217x3.m2200a((int) R$string.calldialog_wcard_warning);
            } else if (!p0) {
                String a = CallUtils.m26583a(rowInfo);
                if (!C14217x3.m2160b(a)) {
                    tertiary.type = Tertiary.Type.COMMUNITY;
                    tertiary.name = a;
                    tertiary.leftCompoundDrawable = R$drawable.call_card_tag_icon;
                } else if (rowInfo.m28223i().type != Secondary.Type.WHOSCALLCARD_V1_DESC) {
                    tertiary.type = Tertiary.Type.COMMUNITY;
                    tertiary.name = C14217x3.m2200a((int) R$string.calldialog_profile_reminder);
                }
            }
        }
        if (!(tertiary.type != null || str == null || (c = C14093n4.m2573c(str)) == 0)) {
            tertiary.type = Tertiary.Type.INCOMING_SUSPICIOUS;
            tertiary.name = C14217x3.m2200a(c);
            tertiary.highlightColor = C14167t.m2314b();
        }
        if (tertiary.type == null && i > 0) {
            tertiary.type = Tertiary.Type.NUM_BLOCKED;
            tertiary.name = C14217x3.m2199a((int) R$string.ndp_top_info_blocked, String.valueOf(i));
        }
        if (tertiary.type == null && i2 > 0) {
            tertiary.type = Tertiary.Type.NUM_ADDED;
            tertiary.name = C14217x3.m2199a((int) R$string.ndp_top_info_added, String.valueOf(i2));
        }
        return tertiary;
    }

    /* renamed from: a */
    public static RowInfo m28257a(@NonNull AbstractC12741t tVar, @NonNull AbstractC12746u uVar) {
        uVar.mo5443a(tVar);
        RowInfo rowInfo = new RowInfo();
        rowInfo.mPrimary = uVar.mo5441b();
        rowInfo.mSecondary = uVar.mo5439c();
        rowInfo.mMetaphorTypes = uVar.mo5444a();
        rowInfo.mNumberInfo = tVar.f28717c;
        rowInfo.mNumber = tVar.f28718d;
        rowInfo.mDisplayNumber = tVar.f28720f;
        rowInfo.mDisplayRemoteNumber = tVar.f28721g;
        rowInfo.mE164 = tVar.f28719e;
        rowInfo.mContactName = tVar.f28722h;
        rowInfo.mIsFPN = tVar.f28724j;
        rowInfo.mIsCOO = tVar.f28723i;
        return rowInfo;
    }

    /* renamed from: a */
    public static RowInfo m28256a(String str, NumberInfo numberInfo) {
        Builder builder = new Builder(str, numberInfo);
        builder.m28199e();
        RowInfo b = builder.m28207b();
        if (!(b == null || b.m28224h() == null)) {
            b.m28224h().isRed = false;
        }
        return b;
    }

    /* renamed from: a */
    public static RowInfo m28255a(String str, NumberInfo numberInfo, boolean z) {
        Builder builder = new Builder(str, numberInfo);
        builder.m28200d(z);
        return builder.m28213a(new OverrideSecondaryName() { // from class: gogolook.callgogolook2.gson.RowInfo.4
            @Override // gogolook.callgogolook2.gson.RowInfo.OverrideSecondaryName
            /* renamed from: a */
            public String mo5341a(NumberInfo numberInfo2, Secondary.Type type) {
                if (type == Secondary.Type.NO_INFO) {
                    return C14206w4.m2225a((int) R$string.ndp_noinfo_desc);
                }
                return null;
            }
        }).m28207b();
    }

    @Nullable
    /* renamed from: a */
    public static RowInfo m28249a(String str, String str2, NumberInfo numberInfo) {
        return m28247a(str, str2, numberInfo, (String) null, false);
    }

    @Nullable
    /* renamed from: a */
    public static RowInfo m28248a(String str, String str2, NumberInfo numberInfo, String str3) {
        return m28247a(str, str2, numberInfo, str3, false);
    }

    @Nullable
    /* renamed from: a */
    public static RowInfo m28247a(String str, String str2, NumberInfo numberInfo, String str3, boolean z) {
        RowInfo b = new Builder(str, str2, numberInfo, str3).m28196f(z).m28213a(new OverrideSecondaryName() { // from class: gogolook.callgogolook2.gson.RowInfo.2
            @Override // gogolook.callgogolook2.gson.RowInfo.OverrideSecondaryName
            /* renamed from: a */
            public String mo5341a(NumberInfo numberInfo2, Secondary.Type type) {
                if (type == Secondary.Type.NO_INFO || type == Secondary.Type.ERROR) {
                    return "";
                }
                return null;
            }
        }).m28207b();
        if (!(b == null || b.m28224h() == null)) {
            b.m28224h().isRed = false;
        }
        return b;
    }

    @Nullable
    /* renamed from: b */
    public static RowInfo m28240b(String str, NumberInfo numberInfo) {
        Builder builder = new Builder(str, numberInfo);
        builder.m28197f();
        RowInfo b = builder.m28213a(new OverrideSecondaryName() { // from class: gogolook.callgogolook2.gson.RowInfo.3
            @Override // gogolook.callgogolook2.gson.RowInfo.OverrideSecondaryName
            /* renamed from: a */
            public String mo5341a(NumberInfo numberInfo2, Secondary.Type type) {
                if (type == Secondary.Type.NO_INFO || type == Secondary.Type.ERROR) {
                    return "";
                }
                return null;
            }
        }).m28207b();
        if (!(b == null || b.m28224h() == null)) {
            b.m28224h().isRed = false;
        }
        return b;
    }

    /* renamed from: b */
    public static RowInfo m28239b(String str, NumberInfo numberInfo, boolean z) {
        return new Builder(str, numberInfo).m28198e(z).m28214a(new OverridePrimaryName() { // from class: gogolook.callgogolook2.gson.RowInfo.1
            @Override // gogolook.callgogolook2.gson.RowInfo.OverridePrimaryName
            /* renamed from: a */
            public String mo28195a(NumberInfo numberInfo2, Primary.Type type) {
                if (type == Primary.Type.NO_INFO) {
                    return C14206w4.m2225a((int) R$string.widget_noinfo_desc);
                }
                return null;
            }
        }).m28207b();
    }

    @Nullable
    /* renamed from: c */
    public static RowInfo m28235c(String str, NumberInfo numberInfo) {
        return m28247a(str, (String) null, numberInfo, (String) null, false);
    }

    /* renamed from: a */
    public String m28269a() {
        return this.mContactName;
    }

    /* renamed from: a */
    public final void m28267a(MetaphorType metaphorType) {
        if (this.mMetaphorTypes == null) {
            this.mMetaphorTypes = new ArrayList();
        }
        if (!this.mMetaphorTypes.contains(metaphorType)) {
            this.mMetaphorTypes.add(metaphorType);
        }
    }

    /* renamed from: a */
    public final void m28254a(String str, Primary.Type type) {
        m28253a(str, type, false);
    }

    /* renamed from: a */
    public final void m28253a(String str, Primary.Type type, boolean z) {
        if (this.mPrimary == null) {
            this.mPrimary = new Primary();
        }
        Primary primary = this.mPrimary;
        primary.name = str;
        primary.type = type;
        primary.isRed = z;
    }

    /* renamed from: a */
    public final void m28252a(String str, Secondary.Type type) {
        if (this.mSecondary == null) {
            this.mSecondary = new Secondary();
        }
        Secondary secondary = this.mSecondary;
        secondary.name = str;
        secondary.type = type;
    }

    /* renamed from: a */
    public void m28251a(String str, Secondary.Type type, String str2, int i) {
        if (this.mSecondary == null) {
            this.mSecondary = new Secondary();
        }
        Secondary secondary = this.mSecondary;
        secondary.name = str;
        secondary.type = type;
        secondary.hasUsefulInfo = true;
        secondary.highlightWord = str2;
        secondary.highlightColor = i;
    }

    /* renamed from: a */
    public final void m28250a(String str, Secondary.Type type, boolean z) {
        Primary primary;
        if (this.mSecondary == null) {
            this.mSecondary = new Secondary();
        }
        Secondary secondary = this.mSecondary;
        secondary.name = str;
        secondary.type = type;
        secondary.isRed = z;
        if (z && (primary = this.mPrimary) != null) {
            primary.isRed = false;
        }
    }

    /* renamed from: b */
    public String m28244b() {
        return this.mDisplayNumber;
    }

    /* renamed from: c */
    public String m28238c() {
        return this.mDisplayRemoteNumber;
    }

    /* renamed from: d */
    public String m28234d() {
        return this.mE164;
    }

    /* renamed from: e */
    public List<MetaphorType> m28231e() {
        if (this.mMetaphorTypes == null) {
            this.mMetaphorTypes = new ArrayList();
        }
        return this.mMetaphorTypes;
    }

    /* renamed from: f */
    public String m28228f() {
        return this.mNumber;
    }

    /* renamed from: g */
    public NumberInfo m28226g() {
        return this.mNumberInfo;
    }

    /* renamed from: h */
    public Primary m28224h() {
        return this.mPrimary;
    }

    /* renamed from: i */
    public Secondary m28223i() {
        return this.mSecondary;
    }

    /* renamed from: j */
    public boolean m28222j() {
        return this.mIsCOO;
    }

    /* renamed from: k */
    public boolean m28221k() {
        return this.mIsFPN;
    }

    /* renamed from: l */
    public boolean m28220l() {
        return this.mNumberInfo.m28296s0() && this.mNumberInfo.m28372X() && this.mNumberInfo.m28289w().m28281b() && !this.mPrimary.type.equals(Primary.Type.NOTE) && TextUtils.isEmpty(this.mContactName) && C14063l4.m2701A();
    }

    public String toString() {
        String str;
        if (this.mPrimary != null) {
            String str2 = "Primary=" + this.mPrimary.name + " " + this.mPrimary.type.toString();
            str = str2;
            if (this.mSecondary != null) {
                str = str2 + ", Secondary=" + this.mSecondary.name + " " + this.mSecondary.type.toString();
            }
        } else {
            str = C14247d.f31851f;
        }
        return str;
    }
}
