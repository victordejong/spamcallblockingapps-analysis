.class public abstract Lcom/callapp/contacts/widget/login/LoginButton;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MANAGER:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/constraintlayout/widget/ConstraintLayout;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "privacyDefault"

    .line 31
    iput-object v0, p0, Lcom/callapp/contacts/widget/login/LoginButton;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, v0, v1}, Lcom/callapp/contacts/widget/login/LoginButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "privacyDefault"

    .line 31
    iput-object v0, p0, Lcom/callapp/contacts/widget/login/LoginButton;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/login/LoginButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "privacyDefault"

    .line 31
    iput-object v0, p0, Lcom/callapp/contacts/widget/login/LoginButton;->a:Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/login/LoginButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 59
    sget-object v0, Lcom/callapp/contacts/R$styleable;->SocialLoginButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    .line 60
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 61
    invoke-direct {p0, v0}, Lcom/callapp/contacts/widget/login/LoginButton;->getConstraintSetLayout(I)I

    move-result v2

    .line 62
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, v2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 64
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/login/LoginButton;->setButtonData(I)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/login/LoginButton;->setEnabled(Z)V

    return-void
.end method

.method private getConstraintSetLayout(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const p1, 0x7f0d0186

    goto :goto_0

    :cond_0
    const p1, 0x7f0d0188

    goto :goto_0

    :cond_1
    const p1, 0x7f0d0185

    goto :goto_0

    :cond_2
    const p1, 0x7f0d0187

    :goto_0
    return p1
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method protected abstract a(Lcom/callapp/contacts/widget/login/LoginButton$LoginButtonType;)V
.end method

.method protected getButtonBackground(I)I
    .locals 0

    const p1, 0x7f08052c

    return p1
.end method

.method protected abstract getButtonIcon(I)I
.end method

.method protected abstract getButtonIconColorFilter(I)Landroid/graphics/ColorFilter;
.end method

.method protected abstract getButtonText(I)Ljava/lang/String;
.end method

.method protected getButtonTextColor()I
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/login/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060244

    invoke-static {v0, v1}, Landroidx/core/content/b;->c(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method protected setButtonData(I)V
    .locals 3

    const v0, 0x7f0a0854

    .line 104
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/login/LoginButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/login/LoginButton;->getButtonText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/login/LoginButton;->getButtonTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0853

    .line 108
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/login/LoginButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/login/LoginButton;->getButtonIcon(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/login/LoginButton;->getButtonIconColorFilter(I)Landroid/graphics/ColorFilter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/login/LoginButton;->getButtonBackground(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/login/LoginButton;->setBackgroundResource(I)V

    return-void
.end method

.method public setButtonLayoutType(I)V
    .locals 4

    .line 69
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/login/LoginButton;->getConstraintSetLayout(I)I

    move-result v0

    .line 70
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/login/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/login/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 72
    new-instance v0, Landroidx/constraintlayout/widget/c;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 73
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 74
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/login/LoginButton;->setButtonData(I)V

    return-void
.end method

.method public setLoginType(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/callapp/contacts/widget/login/LoginButton;->a:Ljava/lang/String;

    return-void
.end method

.method public abstract setManager(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMANAGER;)V"
        }
    .end annotation
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f0a0854

    .line 134
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/login/LoginButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
