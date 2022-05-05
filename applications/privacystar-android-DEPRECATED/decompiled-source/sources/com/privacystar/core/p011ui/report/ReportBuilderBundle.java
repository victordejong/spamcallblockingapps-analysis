package com.privacystar.core.p011ui.report;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.privacystar.core.p011ui.report.GenericReportContract;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\b#\b\u0086\b\u0018��2\u00020\u0001Bu\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\"\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f`\u0010\u0012\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000e0\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u000f¢\u0006\u0002\u0010\u0015J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0005HÆ\u0003J\t\u0010)\u001a\u00020\u0007HÆ\u0003J\t\u0010*\u001a\u00020\tHÆ\u0003J\t\u0010+\u001a\u00020\u000bHÆ\u0003J%\u0010,\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f`\u0010HÆ\u0003J\u0015\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000e0\u0012HÆ\u0003J\t\u0010.\u001a\u00020\u000fHÆ\u0003J\t\u0010/\u001a\u00020\u000fHÆ\u0003J\u008b\u0001\u00100\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2$\b\u0002\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f`\u00102\u0014\b\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000e0\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u000f2\b\b\u0002\u0010\u0014\u001a\u00020\u000fHÆ\u0001J\u0013\u00101\u001a\u00020\u000b2\b\u00102\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00103\u001a\u00020\u000eHÖ\u0001J\t\u00104\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0013\u001a\u00020\u000f¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n��\u001a\u0004\b\u001e\u0010\u001fR\u001d\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000e0\u0012¢\u0006\b\n��\u001a\u0004\b \u0010!R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\"\u0010#R-\u0010\f\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f`\u0010¢\u0006\b\n��\u001a\u0004\b$\u0010%R\u0011\u0010\u0014\u001a\u00020\u000f¢\u0006\b\n��\u001a\u0004\b&\u0010\u0017¨\u00065"}, m254d2 = {"Lcom/privacystar/core/ui/report/ReportBuilderBundle;", "", "context", "Landroid/content/Context;", "reportContainer", "Landroid/view/ViewGroup;", "colorStateList", "Landroid/content/res/ColorStateList;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/privacystar/core/ui/report/GenericReportContract$ReportNavigationListener;", "loadSaved", "", "reportItems", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "questionMap", "", "callerNumber", "textContents", "(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/content/res/ColorStateList;Lcom/privacystar/core/ui/report/GenericReportContract$ReportNavigationListener;ZLjava/util/HashMap;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V", "getCallerNumber", "()Ljava/lang/String;", "getColorStateList", "()Landroid/content/res/ColorStateList;", "getContext", "()Landroid/content/Context;", "getListener", "()Lcom/privacystar/core/ui/report/GenericReportContract$ReportNavigationListener;", "getLoadSaved", "()Z", "getQuestionMap", "()Ljava/util/Map;", "getReportContainer", "()Landroid/view/ViewGroup;", "getReportItems", "()Ljava/util/HashMap;", "getTextContents", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toString", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.report.ReportBuilderBundle */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/ReportBuilderBundle.class */
public final class ReportBuilderBundle {
    @NotNull
    private final String callerNumber;
    @NotNull
    private final ColorStateList colorStateList;
    @NotNull
    private final Context context;
    @NotNull
    private final GenericReportContract.ReportNavigationListener listener;
    private final boolean loadSaved;
    @NotNull
    private final Map<String, Integer> questionMap;
    @NotNull
    private final ViewGroup reportContainer;
    @NotNull
    private final HashMap<Integer, String> reportItems;
    @NotNull
    private final String textContents;

    public ReportBuilderBundle(@NotNull Context context, @NotNull ViewGroup reportContainer, @NotNull ColorStateList colorStateList, @NotNull GenericReportContract.ReportNavigationListener listener, boolean z, @NotNull HashMap<Integer, String> reportItems, @NotNull Map<String, Integer> questionMap, @NotNull String callerNumber, @NotNull String textContents) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(reportContainer, "reportContainer");
        Intrinsics.checkParameterIsNotNull(colorStateList, "colorStateList");
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        Intrinsics.checkParameterIsNotNull(reportItems, "reportItems");
        Intrinsics.checkParameterIsNotNull(questionMap, "questionMap");
        Intrinsics.checkParameterIsNotNull(callerNumber, "callerNumber");
        Intrinsics.checkParameterIsNotNull(textContents, "textContents");
        this.context = context;
        this.reportContainer = reportContainer;
        this.colorStateList = colorStateList;
        this.listener = listener;
        this.loadSaved = z;
        this.reportItems = reportItems;
        this.questionMap = questionMap;
        this.callerNumber = callerNumber;
        this.textContents = textContents;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static /* synthetic */ ReportBuilderBundle copy$default(ReportBuilderBundle reportBuilderBundle, Context context, ViewGroup viewGroup, ColorStateList colorStateList, GenericReportContract.ReportNavigationListener reportNavigationListener, boolean z, HashMap hashMap, Map map, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            context = reportBuilderBundle.context;
        }
        if ((i & 2) != 0) {
            viewGroup = reportBuilderBundle.reportContainer;
        }
        if ((i & 4) != 0) {
            colorStateList = reportBuilderBundle.colorStateList;
        }
        if ((i & 8) != 0) {
            reportNavigationListener = reportBuilderBundle.listener;
        }
        if ((i & 16) != 0) {
            z = reportBuilderBundle.loadSaved;
        }
        if ((i & 32) != 0) {
            hashMap = reportBuilderBundle.reportItems;
        }
        if ((i & 64) != 0) {
            map = reportBuilderBundle.questionMap;
        }
        if ((i & 128) != 0) {
            str = reportBuilderBundle.callerNumber;
        }
        if ((i & 256) != 0) {
            str2 = reportBuilderBundle.textContents;
        }
        return reportBuilderBundle.copy(context, viewGroup, colorStateList, reportNavigationListener, z, hashMap, map, str, str2);
    }

    @NotNull
    public final Context component1() {
        return this.context;
    }

    @NotNull
    public final ViewGroup component2() {
        return this.reportContainer;
    }

    @NotNull
    public final ColorStateList component3() {
        return this.colorStateList;
    }

    @NotNull
    public final GenericReportContract.ReportNavigationListener component4() {
        return this.listener;
    }

    public final boolean component5() {
        return this.loadSaved;
    }

    @NotNull
    public final HashMap<Integer, String> component6() {
        return this.reportItems;
    }

    @NotNull
    public final Map<String, Integer> component7() {
        return this.questionMap;
    }

    @NotNull
    public final String component8() {
        return this.callerNumber;
    }

    @NotNull
    public final String component9() {
        return this.textContents;
    }

    @NotNull
    public final ReportBuilderBundle copy(@NotNull Context context, @NotNull ViewGroup reportContainer, @NotNull ColorStateList colorStateList, @NotNull GenericReportContract.ReportNavigationListener listener, boolean z, @NotNull HashMap<Integer, String> reportItems, @NotNull Map<String, Integer> questionMap, @NotNull String callerNumber, @NotNull String textContents) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(reportContainer, "reportContainer");
        Intrinsics.checkParameterIsNotNull(colorStateList, "colorStateList");
        Intrinsics.checkParameterIsNotNull(listener, "listener");
        Intrinsics.checkParameterIsNotNull(reportItems, "reportItems");
        Intrinsics.checkParameterIsNotNull(questionMap, "questionMap");
        Intrinsics.checkParameterIsNotNull(callerNumber, "callerNumber");
        Intrinsics.checkParameterIsNotNull(textContents, "textContents");
        return new ReportBuilderBundle(context, reportContainer, colorStateList, listener, z, reportItems, questionMap, callerNumber, textContents);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReportBuilderBundle)) {
            return false;
        }
        ReportBuilderBundle reportBuilderBundle = (ReportBuilderBundle) obj;
        if (!Intrinsics.areEqual(this.context, reportBuilderBundle.context) || !Intrinsics.areEqual(this.reportContainer, reportBuilderBundle.reportContainer) || !Intrinsics.areEqual(this.colorStateList, reportBuilderBundle.colorStateList) || !Intrinsics.areEqual(this.listener, reportBuilderBundle.listener)) {
            return false;
        }
        return (this.loadSaved == reportBuilderBundle.loadSaved) && Intrinsics.areEqual(this.reportItems, reportBuilderBundle.reportItems) && Intrinsics.areEqual(this.questionMap, reportBuilderBundle.questionMap) && Intrinsics.areEqual(this.callerNumber, reportBuilderBundle.callerNumber) && Intrinsics.areEqual(this.textContents, reportBuilderBundle.textContents);
    }

    @NotNull
    public final String getCallerNumber() {
        return this.callerNumber;
    }

    @NotNull
    public final ColorStateList getColorStateList() {
        return this.colorStateList;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @NotNull
    public final GenericReportContract.ReportNavigationListener getListener() {
        return this.listener;
    }

    public final boolean getLoadSaved() {
        return this.loadSaved;
    }

    @NotNull
    public final Map<String, Integer> getQuestionMap() {
        return this.questionMap;
    }

    @NotNull
    public final ViewGroup getReportContainer() {
        return this.reportContainer;
    }

    @NotNull
    public final HashMap<Integer, String> getReportItems() {
        return this.reportItems;
    }

    @NotNull
    public final String getTextContents() {
        return this.textContents;
    }

    public int hashCode() {
        Context context = this.context;
        int i = 0;
        int hashCode = context != null ? context.hashCode() : 0;
        ViewGroup viewGroup = this.reportContainer;
        int hashCode2 = viewGroup != null ? viewGroup.hashCode() : 0;
        ColorStateList colorStateList = this.colorStateList;
        int hashCode3 = colorStateList != null ? colorStateList.hashCode() : 0;
        GenericReportContract.ReportNavigationListener reportNavigationListener = this.listener;
        int hashCode4 = reportNavigationListener != null ? reportNavigationListener.hashCode() : 0;
        boolean z = this.loadSaved;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        HashMap<Integer, String> hashMap = this.reportItems;
        int hashCode5 = hashMap != null ? hashMap.hashCode() : 0;
        Map<String, Integer> map = this.questionMap;
        int hashCode6 = map != null ? map.hashCode() : 0;
        String str = this.callerNumber;
        int hashCode7 = str != null ? str.hashCode() : 0;
        String str2 = this.textContents;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i2) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }

    @NotNull
    public String toString() {
        return "ReportBuilderBundle(context=" + this.context + ", reportContainer=" + this.reportContainer + ", colorStateList=" + this.colorStateList + ", listener=" + this.listener + ", loadSaved=" + this.loadSaved + ", reportItems=" + this.reportItems + ", questionMap=" + this.questionMap + ", callerNumber=" + this.callerNumber + ", textContents=" + this.textContents + ")";
    }
}
