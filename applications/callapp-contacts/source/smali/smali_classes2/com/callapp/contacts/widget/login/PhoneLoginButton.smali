.class public Lcom/callapp/contacts/widget/login/PhoneLoginButton;
.super Lcom/callapp/contacts/widget/login/LoginButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/login/PhoneLoginButton$Manager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/widget/login/LoginButton<",
        "Lcom/callapp/contacts/widget/login/PhoneLoginButton$Manager;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/widget/login/PhoneLoginButton$Manager;

.field private b:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/login/LoginButton;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance p1, Lcom/callapp/contacts/widget/login/PhoneLoginButton$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/login/PhoneLoginButton$1;-><init>(Lcom/callapp/contacts/widget/login/PhoneLoginButton;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/login/PhoneLoginButton;->b:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/login/LoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Lcom/callapp/contacts/widget/login/PhoneLoginButton$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/login/PhoneLoginButton$1;-><init>(Lcom/callapp/contacts/widget/login/PhoneLoginButton;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/login/PhoneLoginButton;->b:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/login/LoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p1, Lcom/callapp/contacts/widget/login/PhoneLoginButton$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/login/PhoneLoginButton$1;-><init>(Lcom/callapp/contacts/widget/login/PhoneLoginButton;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/login/PhoneLoginButton;->b:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/login/PhoneLoginButton;)Lcom/callapp/contacts/widget/login/PhoneLoginButton$Manager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/callapp/contacts/widget/login/PhoneLoginButton;->a:Lcom/callapp/contacts/widget/login/PhoneLoginButton$Manager;

    return-object p0
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 70
    sget-object p1, Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;->PHONE:Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/login/PhoneLoginButton;->a(Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;)V

    return-void
.end method

.method public static synthetic lambda$fxeohNyl-_NTvf2wBI22wJICYnI(Lcom/callapp/contacts/widget/login/PhoneLoginButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/login/PhoneLoginButton;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 125
    invoke-super {p0}, Lcom/callapp/contacts/widget/login/LoginButton;->a()V

    .line 126
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/login/PhoneLoginButton;->b:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a(Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;)V

    return-void
.end method

.method protected final a(Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;)V
    .locals 10

    .line 113
    iget-object v0, p0, Lcom/callapp/contacts/widget/login/PhoneLoginButton;->a:Lcom/callapp/contacts/widget/login/PhoneLoginButton$Manager;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/login/PhoneLoginButton$Manager;->b()V

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/widget/login/PhoneLoginButton;->a:Lcom/callapp/contacts/widget/login/PhoneLoginButton$Manager;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    sget-object v2, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->SMS:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->CORE_PERMISSIONS:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-interface {v0, p1, v1}, Lcom/callapp/contacts/widget/login/PhoneLoginButton$Manager;->a(Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    .line 1120
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    const-string v5, "Registration"

    const-string v6, "User clicked sign up with phone number "

    const-string v7, ""

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    return-void
.end method

.method protected getButtonBackground(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const p1, 0x7f08052f

    return p1

    :cond_0
    const p1, 0x7f08052b

    return p1
.end method

.method protected getButtonIcon(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const p1, 0x7f08045b

    return p1

    :cond_0
    const p1, 0x7f08032e

    return p1
.end method

.method protected getButtonIconColorFilter(I)Landroid/graphics/ColorFilter;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 88
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    const v0, 0x7f060244

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getButtonText(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/login/PhoneLoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120627

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/login/PhoneLoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120626

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected setButtonData(I)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/callapp/contacts/widget/login/LoginButton;->setButtonData(I)V

    .line 70
    new-instance p1, Lcom/callapp/contacts/widget/login/-$$Lambda$PhoneLoginButton$fxeohNyl-_NTvf2wBI22wJICYnI;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/login/-$$Lambda$PhoneLoginButton$fxeohNyl-_NTvf2wBI22wJICYnI;-><init>(Lcom/callapp/contacts/widget/login/PhoneLoginButton;)V

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/login/PhoneLoginButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setManager(Lcom/callapp/contacts/widget/login/PhoneLoginButton$Manager;)V
    .locals 1

    .line 131
    iput-object p1, p0, Lcom/callapp/contacts/widget/login/PhoneLoginButton;->a:Lcom/callapp/contacts/widget/login/PhoneLoginButton$Manager;

    .line 132
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/widget/login/PhoneLoginButton;->b:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

    .line 2088
    iput-object v0, p1, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a:Lcom/callapp/contacts/manager/PhoneVerifierManager$PhoneVerifierCallback;

    return-void
.end method

.method public bridge synthetic setManager(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/callapp/contacts/widget/login/PhoneLoginButton$Manager;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/login/PhoneLoginButton;->setManager(Lcom/callapp/contacts/widget/login/PhoneLoginButton$Manager;)V

    return-void
.end method
