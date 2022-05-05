package com.tmobile.services.nameid.p007ui.dialog_fragment;

import androidx.annotation.DrawableRes;
import androidx.annotation.StringRes;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0017\b\u0086\b\u0018��:\u0001@B\u009d\u0001\u0012\n\b\u0003\u0010\u0016\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0004\u0012\u0006\u0010\u001b\u001a\u00020\f\u0012\u0010\b\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\f\u0012\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0004\u0012\u0010\b\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\b\b\u0002\u0010!\u001a\u00020\u0004¢\u0006\u0004\b>\u0010?J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u0001HÆ\u0003¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0005\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u000b\u0010\u0006J\u0012\u0010\r\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u000f\u0010\u0006J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0004\b\u0010\u0010\u000eJ\u0010\u0010\u0011\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0006J\u0010\u0010\u0012\u001a\u00020\fHÆ\u0003¢\u0006\u0004\b\u0012\u0010\u000eJ\u0018\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\b\u0013\u0010\nJ\u0012\u0010\u0014\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0004\b\u0014\u0010\u000eJ\u0018\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\b\u0015\u0010\nJ¨\u0001\u0010\"\u001a\u00020��2\n\b\u0003\u0010\u0016\u001a\u0004\u0018\u00010\u00012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\u0018\u001a\u00020\u00042\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\u001a\u001a\u00020\u00042\b\b\u0002\u0010\u001b\u001a\u00020\f2\u0010\b\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\b\b\u0002\u0010\u001f\u001a\u00020\u00042\u0010\b\u0002\u0010 \u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\b\b\u0002\u0010!\u001a\u00020\u0004HÆ\u0001¢\u0006\u0004\b\"\u0010#J\u001a\u0010&\u001a\u00020\u00042\b\u0010%\u001a\u0004\u0018\u00010$HÖ\u0003¢\u0006\u0004\b&\u0010'J\u0010\u0010(\u001a\u00020\u0001HÖ\u0001¢\u0006\u0004\b(\u0010)J\u0010\u0010+\u001a\u00020*HÖ\u0001¢\u0006\u0004\b+\u0010,R!\u0010 \u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006@\u0006¢\u0006\f\n\u0004\b \u0010-\u001a\u0004\b.\u0010/R\u0019\u0010\u001b\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\u001b\u00100\u001a\u0004\b1\u0010\u000eR!\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\u001c\u0010-\u001a\u0004\b2\u0010/R\u001b\u0010\u0016\u001a\u0004\u0018\u00010\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0016\u00103\u001a\u0004\b4\u0010\u0003R\u001b\u0010\u0019\u001a\u0004\u0018\u00010\f8\u0006@\u0006¢\u0006\f\n\u0004\b\u0019\u00100\u001a\u0004\b5\u0010\u000eR\u0019\u0010\u001a\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u001a\u00106\u001a\u0004\b7\u0010\u0006R\u0019\u0010\u0018\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0018\u00106\u001a\u0004\b8\u0010\u0006R\u001b\u0010\u001d\u001a\u0004\u0018\u00010\f8\u0006@\u0006¢\u0006\f\n\u0004\b\u001d\u00100\u001a\u0004\b9\u0010\u000eR!\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\u001e\u0010-\u001a\u0004\b:\u0010/R\u0019\u0010\u001f\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u001f\u00106\u001a\u0004\b;\u0010\u0006R\u001b\u0010\u0017\u001a\u0004\u0018\u00010\f8\u0006@\u0006¢\u0006\f\n\u0004\b\u0017\u00100\u001a\u0004\b<\u0010\u000eR\u0019\u0010!\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b!\u00106\u001a\u0004\b=\u0010\u0006¨\u0006A"}, d2 = {"Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo;", "", "component1", "()Ljava/lang/Integer;", "", "component10", "()Z", "Lkotlin/Function0;", "", "component11", "()Lkotlin/Function0;", "component12", "Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text;", "component2", "()Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text;", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "icon", "title", "resizableTitleText", "message", "resizableMessageText", "confirm", "confirmAction", "secondary", "secondaryAction", "showCloseButton", "closeAction", "underlineSecondary", "copy", "(Ljava/lang/Integer;Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text;ZLcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text;ZLcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text;Lkotlin/jvm/functions/Function0;Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Z)Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo;", "", "other", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Lkotlin/Function0;", "getCloseAction", "()Lkotlin/jvm/functions/Function0;", "Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text;", "getConfirm", "getConfirmAction", "Ljava/lang/Integer;", "getIcon", "getMessage", "Z", "getResizableMessageText", "getResizableTitleText", "getSecondary", "getSecondaryAction", "getShowCloseButton", "getTitle", "getUnderlineSecondary", "<init>", "(Ljava/lang/Integer;Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text;ZLcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text;ZLcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text;Lkotlin/jvm/functions/Function0;Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Z)V", "Text", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.dialog_fragment.DialogInfo */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/dialog_fragment/DialogInfo.class */
public final class DialogInfo {
    @Nullable

    /* renamed from: a */
    private final Integer f13926a;
    @Nullable

    /* renamed from: b */
    private final Text f13927b;

    /* renamed from: c */
    private final boolean f13928c;
    @Nullable

    /* renamed from: d */
    private final Text f13929d;

    /* renamed from: e */
    private final boolean f13930e;
    @NotNull

    /* renamed from: f */
    private final Text f13931f;
    @Nullable

    /* renamed from: g */
    private final Function0<Unit> f13932g;
    @Nullable

    /* renamed from: h */
    private final Text f13933h;
    @Nullable

    /* renamed from: i */
    private final Function0<Unit> f13934i;

    /* renamed from: j */
    private final boolean f13935j;
    @Nullable

    /* renamed from: k */
    private final Function0<Unit> f13936k;

    /* renamed from: l */
    private final boolean f13937l;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��:\u0003\u0003\u0004\u0005B\t\b\u0002¢\u0006\u0004\b\u0001\u0010\u0002\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, d2 = {"Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text;", "<init>", "()V", "ResourceId", "Spanned", "StringConstant", "Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text$ResourceId;", "Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text$Spanned;", "Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text$StringConstant;", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.dialog_fragment.DialogInfo$Text */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text.class */
    public static abstract class Text {

        @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018��2\u00020\u0001B!\u0012\b\b\u0001\u0010\t\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\u000b\u001a\u00020��2\b\b\u0003\u0010\t\u001a\u00020\u00022\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rHÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0004J\u0010\u0010\u0013\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0015\u001a\u0004\b\u0016\u0010\u0004R\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0017\u001a\u0004\b\u0018\u0010\b¨\u0006\u001b"}, d2 = {"Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text$ResourceId;", "com/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text", "", "component1", "()I", "", "", "component2", "()[Ljava/lang/String;", "format", "values", "copy", "(I[Ljava/lang/String;)Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text$ResourceId;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "toString", "()Ljava/lang/String;", "I", "getFormat", "[Ljava/lang/String;", "getValues", "<init>", "(I[Ljava/lang/String;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* renamed from: com.tmobile.services.nameid.ui.dialog_fragment.DialogInfo$Text$ResourceId */
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text$ResourceId.class */
        public static final class ResourceId extends Text {

            /* renamed from: a */
            private final int f13938a;
            @NotNull

            /* renamed from: b */
            private final String[] f13939b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public ResourceId(@StringRes int i, @NotNull String[] values) {
                super(null);
                Intrinsics.m1830e(values, "values");
                this.f13938a = i;
                this.f13939b = values;
            }

            public /* synthetic */ ResourceId(int i, String[] strArr, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this(i, (i2 & 2) != 0 ? new String[0] : strArr);
            }

            /* renamed from: a */
            public final int m6166a() {
                return this.f13938a;
            }

            @NotNull
            /* renamed from: b */
            public final String[] m6165b() {
                return this.f13939b;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof ResourceId)) {
                    return false;
                }
                ResourceId resourceId = (ResourceId) obj;
                return this.f13938a == resourceId.f13938a && Intrinsics.m1834a(this.f13939b, resourceId.f13939b);
            }

            public int hashCode() {
                int i = this.f13938a;
                String[] strArr = this.f13939b;
                return (i * 31) + (strArr != null ? Arrays.hashCode(strArr) : 0);
            }

            @NotNull
            public String toString() {
                return "ResourceId(format=" + this.f13938a + ", values=" + Arrays.toString(this.f13939b) + ")";
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\b\u0018��2\u00020\u0001B\u0019\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000e\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\t\u0010\u0007R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0017\u001a\u0004\b\u0018\u0010\u0004¨\u0006\u001b"}, d2 = {"Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text$Spanned;", "com/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text", "Landroid/text/Spanned;", "component1", "()Landroid/text/Spanned;", "", "component2", "()Z", FirebaseAnalytics.Param.VALUE, "isUrl", "copy", "(Landroid/text/Spanned;Z)Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text$Spanned;", "", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Z", "Landroid/text/Spanned;", "getValue", "<init>", "(Landroid/text/Spanned;Z)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* renamed from: com.tmobile.services.nameid.ui.dialog_fragment.DialogInfo$Text$Spanned */
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text$Spanned.class */
        public static final class Spanned extends Text {
            @NotNull

            /* renamed from: a */
            private final android.text.Spanned f13940a;

            /* renamed from: b */
            private final boolean f13941b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Spanned(@NotNull android.text.Spanned value, boolean z) {
                super(null);
                Intrinsics.m1830e(value, "value");
                this.f13940a = value;
                this.f13941b = z;
            }

            @NotNull
            /* renamed from: a */
            public final android.text.Spanned m6164a() {
                return this.f13940a;
            }

            /* renamed from: b */
            public final boolean m6163b() {
                return this.f13941b;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Spanned)) {
                    return false;
                }
                Spanned spanned = (Spanned) obj;
                return Intrinsics.m1834a(this.f13940a, spanned.f13940a) && this.f13941b == spanned.f13941b;
            }

            public int hashCode() {
                android.text.Spanned spanned = this.f13940a;
                int hashCode = spanned != null ? spanned.hashCode() : 0;
                boolean z = this.f13941b;
                int i = z ? 1 : 0;
                if (z) {
                    i = 1;
                }
                return (hashCode * 31) + i;
            }

            @NotNull
            public String toString() {
                return "Spanned(value=" + ((Object) this.f13940a) + ", isUrl=" + this.f13941b + ")";
            }
        }

        @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\b\u0086\b\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bHÖ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0004R\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0011\u001a\u0004\b\u0012\u0010\u0004¨\u0006\u0015"}, d2 = {"Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text$StringConstant;", "com/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text", "", "component1", "()Ljava/lang/String;", FirebaseAnalytics.Param.VALUE, "copy", "(Ljava/lang/String;)Lcom/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text$StringConstant;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "toString", "Ljava/lang/String;", "getValue", "<init>", "(Ljava/lang/String;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* renamed from: com.tmobile.services.nameid.ui.dialog_fragment.DialogInfo$Text$StringConstant */
        /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/dialog_fragment/DialogInfo$Text$StringConstant.class */
        public static final class StringConstant extends Text {
            @NotNull

            /* renamed from: a */
            private final String f13942a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public StringConstant(@NotNull String value) {
                super(null);
                Intrinsics.m1830e(value, "value");
                this.f13942a = value;
            }

            @NotNull
            /* renamed from: a */
            public final String m6162a() {
                return this.f13942a;
            }

            public boolean equals(@Nullable Object obj) {
                if (this != obj) {
                    return (obj instanceof StringConstant) && Intrinsics.m1834a(this.f13942a, ((StringConstant) obj).f13942a);
                }
                return true;
            }

            public int hashCode() {
                String str = this.f13942a;
                return str != null ? str.hashCode() : 0;
            }

            @NotNull
            public String toString() {
                return "StringConstant(value=" + this.f13942a + ")";
            }
        }

        private Text() {
        }

        public /* synthetic */ Text(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public DialogInfo(@DrawableRes @Nullable Integer num, @Nullable Text text, boolean z, @Nullable Text text2, boolean z2, @NotNull Text confirm, @Nullable Function0<Unit> function0, @Nullable Text text3, @Nullable Function0<Unit> function02, boolean z3, @Nullable Function0<Unit> function03, boolean z4) {
        Intrinsics.m1830e(confirm, "confirm");
        this.f13926a = num;
        this.f13927b = text;
        this.f13928c = z;
        this.f13929d = text2;
        this.f13930e = z2;
        this.f13931f = confirm;
        this.f13932g = function0;
        this.f13933h = text3;
        this.f13934i = function02;
        this.f13935j = z3;
        this.f13936k = function03;
        this.f13937l = z4;
    }

    @Nullable
    /* renamed from: a */
    public final Function0<Unit> m6178a() {
        return this.f13936k;
    }

    @NotNull
    /* renamed from: b */
    public final Text m6177b() {
        return this.f13931f;
    }

    @Nullable
    /* renamed from: c */
    public final Function0<Unit> m6176c() {
        return this.f13932g;
    }

    @Nullable
    /* renamed from: d */
    public final Integer m6175d() {
        return this.f13926a;
    }

    @Nullable
    /* renamed from: e */
    public final Text m6174e() {
        return this.f13929d;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DialogInfo)) {
            return false;
        }
        DialogInfo dialogInfo = (DialogInfo) obj;
        return Intrinsics.m1834a(this.f13926a, dialogInfo.f13926a) && Intrinsics.m1834a(this.f13927b, dialogInfo.f13927b) && this.f13928c == dialogInfo.f13928c && Intrinsics.m1834a(this.f13929d, dialogInfo.f13929d) && this.f13930e == dialogInfo.f13930e && Intrinsics.m1834a(this.f13931f, dialogInfo.f13931f) && Intrinsics.m1834a(this.f13932g, dialogInfo.f13932g) && Intrinsics.m1834a(this.f13933h, dialogInfo.f13933h) && Intrinsics.m1834a(this.f13934i, dialogInfo.f13934i) && this.f13935j == dialogInfo.f13935j && Intrinsics.m1834a(this.f13936k, dialogInfo.f13936k) && this.f13937l == dialogInfo.f13937l;
    }

    /* renamed from: f */
    public final boolean m6173f() {
        return this.f13930e;
    }

    /* renamed from: g */
    public final boolean m6172g() {
        return this.f13928c;
    }

    @Nullable
    /* renamed from: h */
    public final Text m6171h() {
        return this.f13933h;
    }

    public int hashCode() {
        Integer num = this.f13926a;
        int i = 0;
        int hashCode = num != null ? num.hashCode() : 0;
        Text text = this.f13927b;
        int hashCode2 = text != null ? text.hashCode() : 0;
        boolean z = this.f13928c;
        int i2 = 1;
        int i3 = z ? 1 : 0;
        if (z) {
            i3 = 1;
        }
        Text text2 = this.f13929d;
        int hashCode3 = text2 != null ? text2.hashCode() : 0;
        boolean z2 = this.f13930e;
        int i4 = z2 ? 1 : 0;
        if (z2) {
            i4 = 1;
        }
        Text text3 = this.f13931f;
        int hashCode4 = text3 != null ? text3.hashCode() : 0;
        Function0<Unit> function0 = this.f13932g;
        int hashCode5 = function0 != null ? function0.hashCode() : 0;
        Text text4 = this.f13933h;
        int hashCode6 = text4 != null ? text4.hashCode() : 0;
        Function0<Unit> function02 = this.f13934i;
        int hashCode7 = function02 != null ? function02.hashCode() : 0;
        boolean z3 = this.f13935j;
        int i5 = z3 ? 1 : 0;
        if (z3) {
            i5 = 1;
        }
        Function0<Unit> function03 = this.f13936k;
        if (function03 != null) {
            i = function03.hashCode();
        }
        boolean z4 = this.f13937l;
        if (!z4) {
            i2 = z4 ? 1 : 0;
        }
        return (((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + i3) * 31) + hashCode3) * 31) + i4) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i5) * 31) + i) * 31) + i2;
    }

    @Nullable
    /* renamed from: i */
    public final Function0<Unit> m6170i() {
        return this.f13934i;
    }

    /* renamed from: j */
    public final boolean m6169j() {
        return this.f13935j;
    }

    @Nullable
    /* renamed from: k */
    public final Text m6168k() {
        return this.f13927b;
    }

    /* renamed from: l */
    public final boolean m6167l() {
        return this.f13937l;
    }

    @NotNull
    public String toString() {
        return "DialogInfo(icon=" + this.f13926a + ", title=" + this.f13927b + ", resizableTitleText=" + this.f13928c + ", message=" + this.f13929d + ", resizableMessageText=" + this.f13930e + ", confirm=" + this.f13931f + ", confirmAction=" + this.f13932g + ", secondary=" + this.f13933h + ", secondaryAction=" + this.f13934i + ", showCloseButton=" + this.f13935j + ", closeAction=" + this.f13936k + ", underlineSecondary=" + this.f13937l + ")";
    }
}
