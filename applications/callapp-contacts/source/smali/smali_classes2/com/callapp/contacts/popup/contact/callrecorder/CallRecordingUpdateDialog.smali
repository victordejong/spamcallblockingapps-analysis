.class public Lcom/callapp/contacts/popup/contact/callrecorder/CallRecordingUpdateDialog;
.super Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 11

    const v0, 0x7f12015f

    .line 37
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1023
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    const v0, 0x7f12015c

    .line 1024
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1025
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1026
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x21

    .line 1025
    invoke-virtual {v4, v0, v6, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const v0, 0x7f12015d

    .line 1027
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1028
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 1029
    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1030
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1031
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v5

    .line 1030
    invoke-virtual {v4, v1, v5, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const v0, 0x7f12015e

    .line 1032
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const v0, 0x7f120878

    .line 38
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$CallRecordingUpdateDialog$chRZLIqoi-Nkd1tCusz9XOg3Y84;->INSTANCE:Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$CallRecordingUpdateDialog$chRZLIqoi-Nkd1tCusz9XOg3Y84;

    const v0, 0x7f1204c5

    .line 42
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v0, 0x7f0601cc

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v9

    sget-object v10, Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$CallRecordingUpdateDialog$deeFiNdYuq6WYakAt4JiS_vSGGo;->INSTANCE:Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$CallRecordingUpdateDialog$deeFiNdYuq6WYakAt4JiS_vSGGo;

    const v2, 0x7f0800a2

    const/4 v6, 0x0

    move-object v1, p0

    .line 37
    invoke-direct/range {v1 .. v10}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ZLcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 39
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->e()V

    .line 40
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Permissions"

    const-string p3, "recording needs to set as Default Dialer popup shown"

    invoke-virtual {p0, p2, p3, p1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic b(Landroid/app/Activity;)V
    .locals 2

    .line 38
    sget-object v0, Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$CallRecordingUpdateDialog$JfEARXFIq7hUfSrszd_Q456q_4w;->INSTANCE:Lcom/callapp/contacts/popup/contact/callrecorder/-$$Lambda$CallRecordingUpdateDialog$JfEARXFIq7hUfSrszd_Q456q_4w;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;ZLcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void
.end method

.method public static synthetic lambda$JfEARXFIq7hUfSrszd_Q456q_4w(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecordingUpdateDialog;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$chRZLIqoi-Nkd1tCusz9XOg3Y84(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecordingUpdateDialog;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$deeFiNdYuq6WYakAt4JiS_vSGGo(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecordingUpdateDialog;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 1

    const v0, 0x7f0d00d8

    return v0
.end method

.method public getPopupType()Lcom/callapp/contacts/manager/popup/Popup$DialogType;
    .locals 1

    .line 59
    sget-object v0, Lcom/callapp/contacts/manager/popup/Popup$DialogType;->legacyDialogs:Lcom/callapp/contacts/manager/popup/Popup$DialogType;

    return-object v0
.end method

.method public setDialogWindowSize(Landroid/view/Window;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->setDialogWindowSize(Landroid/view/Window;)V

    .line 49
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f080117

    invoke-static {v0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
