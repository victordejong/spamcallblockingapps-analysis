.class public final Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;
.super Lcom/callapp/contacts/util/BaseTransparentActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u001cH\u0014J\u0008\u0010\u001e\u001a\u00020\u0016H\u0002J\u0012\u0010\u001f\u001a\u00020\u00162\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0014J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u001aH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006%"
    }
    d2 = {
        "Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;",
        "Lcom/callapp/contacts/util/BaseTransparentActivity;",
        "()V",
        "backViaGroup",
        "Landroid/widget/RadioGroup;",
        "getBackViaGroup",
        "()Landroid/widget/RadioGroup;",
        "setBackViaGroup",
        "(Landroid/widget/RadioGroup;)V",
        "dropboxLoginListener",
        "Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;",
        "getDropboxLoginListener",
        "()Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;",
        "googleLoginListener",
        "getGoogleLoginListener",
        "okBtn",
        "Landroid/widget/TextView;",
        "getOkBtn",
        "()Landroid/widget/TextView;",
        "setOkBtn",
        "(Landroid/widget/TextView;)V",
        "enableNextBtn",
        "",
        "view",
        "Landroid/view/View;",
        "isEnable",
        "",
        "getCurrentCheckViaResId",
        "",
        "getLayoutResourceId",
        "initViews",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "toOneOrZero",
        "",
        "bol",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/RadioGroup;

.field private final c:Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

.field private final d:Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/callapp/contacts/util/BaseTransparentActivity;-><init>()V

    .line 39
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$dropboxLoginListener$1;-><init>(Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;)V

    check-cast v0, Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->c:Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    .line 68
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$googleLoginListener$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$googleLoginListener$1;-><init>(Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;)V

    check-cast v0, Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->d:Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    return-void
.end method

.method public static final synthetic a(Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "1"

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "0"

    return-object p0

    .line 1238
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private final a(Landroid/view/View;Z)V
    .locals 2

    .line 251
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$enableNextBtn$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$enableNextBtn$1;-><init>(Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;ZLandroid/view/View;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;Landroid/view/View;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->a(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public final getBackViaGroup()Landroid/widget/RadioGroup;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->b:Landroid/widget/RadioGroup;

    if-nez v0, :cond_0

    const-string v1, "backViaGroup"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getDropboxLoginListener()Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->c:Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    return-object v0
.end method

.method public final getGoogleLoginListener()Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->d:Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    return-object v0
.end method

.method public final getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0061

    return v0
.end method

.method public final getOkBtn()Landroid/widget/TextView;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "okBtn"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 29
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0103

    .line 30
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$onCreate$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$onCreate$1;-><init>(Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a042d

    .line 1098
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "forground"

    .line 1099
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getDialogRoundedCenterBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0a0318

    .line 1101
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.dialog_btn_ok)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->a:Landroid/widget/TextView;

    const-string v0, "okBtn"

    if-nez p1, :cond_0

    .line 1102
    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    const v1, 0x7f1202c0

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->a:Landroid/widget/TextView;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1104
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->a:Landroid/widget/TextView;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_2
    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->a(Landroid/view/View;Z)V

    const p1, 0x7f0a010b

    .line 1106
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.backupTitle)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f0601ec

    .line 1107
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f1200e1

    .line 1108
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a010d

    .line 1110
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById(R.id.backupToTitle)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f060088

    .line 1111
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f120854

    .line 1112
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a06a6

    .line 1114
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "findViewById(R.id.periodBackup)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    .line 1115
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v2, 0x7f1200df

    .line 1116
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a03ea

    .line 1118
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "findViewById(R.id.fileBackTitle)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    .line 1119
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f1200d8

    .line 1120
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0a64

    .line 1122
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.twoDays)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/callapp/contacts/widget/CallAppRadioButton;

    .line 1123
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setTextColor(I)V

    const v2, 0x7f120011

    .line 1124
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0a65

    .line 1126
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(R.id.twoWeeks)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/callapp/contacts/widget/CallAppRadioButton;

    .line 1127
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setTextColor(I)V

    const v3, 0x7f120010

    .line 1128
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a05dc

    .line 1130
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.month)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/callapp/contacts/widget/CallAppRadioButton;

    .line 1131
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setTextColor(I)V

    const v4, 0x7f120012

    .line 1132
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0a0354

    .line 1135
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "findViewById(R.id.dropBoxBackup)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/callapp/contacts/widget/CallAppRadioButton;

    .line 1136
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setTextColor(I)V

    const v5, 0x7f1202cf

    .line 1137
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a045b

    .line 1139
    invoke-virtual {p0, v4}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "findViewById(R.id.googleDriveBackup)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/callapp/contacts/widget/CallAppRadioButton;

    .line 1140
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setTextColor(I)V

    const v6, 0x7f12035c

    .line 1141
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Lcom/callapp/contacts/widget/CallAppRadioButton;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0a01c4

    .line 1143
    invoke-virtual {p0, v5}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "findViewById(R.id.calllogBackup)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/CheckBox;

    .line 1144
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTextColor(I)V

    const v6, 0x7f12012d

    .line 1145
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    sget-object v6, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$1;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$1;

    check-cast v6, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1150
    sget-object v6, Lcom/callapp/contacts/manager/preferences/Prefs;->hN:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v6}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Prefs.backupCallLog.get()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v5, 0x7f0a02a0

    .line 1152
    invoke-virtual {p0, v5}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "findViewById(R.id.contactsBackup)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/CheckBox;

    .line 1153
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTextColor(I)V

    const v6, 0x7f12023f

    .line 1154
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    sget-object v6, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$2;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$2;

    check-cast v6, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1158
    sget-object v6, Lcom/callapp/contacts/manager/preferences/Prefs;->hM:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v6}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Prefs.backupContacts.get()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v5, 0x7f0a0737

    .line 1160
    invoke-virtual {p0, v5}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "findViewById(R.id.recordingBackup)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/CheckBox;

    .line 1161
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTextColor(I)V

    const v6, 0x7f120160

    .line 1162
    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1163
    sget-object v6, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$3;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$3;

    check-cast v6, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1166
    sget-object v6, Lcom/callapp/contacts/manager/preferences/Prefs;->hP:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v6}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Prefs.backupRecording.get()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v5, 0x7f0a076f

    .line 1168
    invoke-virtual {p0, v5}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "findViewById(R.id.ringtoneBackup)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/CheckBox;

    .line 1169
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setTextColor(I)V

    const v0, 0x7f12051f

    .line 1170
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1171
    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$4;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$4;

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1174
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hO:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v6, "Prefs.backupVideoRingTones.get()"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v0, 0x7f0a010c

    .line 1176
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v5, "findViewById(R.id.backupToGroup)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->b:Landroid/widget/RadioGroup;

    const-string v5, "backViaGroup"

    if-nez v0, :cond_3

    .line 1177
    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_3
    new-instance v6, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$5;

    invoke-direct {v6, p0}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$5;-><init>(Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;)V

    check-cast v6, Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v0, 0x7f0a06a7

    .line 1204
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v6, "findViewById(R.id.periodGroup)"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RadioGroup;

    .line 1205
    sget-object v6, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$6;->a:Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$initViews$6;

    check-cast v6, Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1213
    sget-object v6, Lcom/callapp/contacts/manager/preferences/Prefs;->hL:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v6}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1214
    sget-object v7, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->TWO_DAYS:Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    invoke-virtual {v7}, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->getDaysInterval()I

    move-result v7

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v7, :cond_5

    goto :goto_2

    .line 1215
    :cond_5
    :goto_0
    sget-object p1, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->HALF_MONTH:Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/BackupIntervalPeriod;->getDaysInterval()I

    move-result p1

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_7

    const p1, 0x7f0a0a65

    goto :goto_2

    :cond_7
    :goto_1
    const p1, 0x7f0a05dc

    .line 1218
    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    .line 1219
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hK:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/api/helper/backup/BackupViaType;

    if-nez p1, :cond_8

    .line 1230
    const-class p1, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;

    const-string v0, "Prefs.backupVia is null"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_3

    .line 1219
    :cond_8
    sget-object v0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity$WhenMappings;->a:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/api/helper/backup/BackupViaType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9

    :goto_3
    return-void

    .line 1227
    :cond_9
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->b:Landroid/widget/RadioGroup;

    if-nez p1, :cond_a

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    return-void

    .line 1224
    :cond_b
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->b:Landroid/widget/RadioGroup;

    if-nez p1, :cond_c

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {p1, v3}, Landroid/widget/RadioGroup;->check(I)V

    return-void

    .line 1221
    :cond_d
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BackupSetupActivity;->b:Landroid/widget/RadioGroup;

    if-nez p1, :cond_e

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p1, v4}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method
