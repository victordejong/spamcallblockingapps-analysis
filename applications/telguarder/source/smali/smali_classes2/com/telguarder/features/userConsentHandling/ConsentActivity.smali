.class public abstract Lcom/telguarder/features/userConsentHandling/ConsentActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ConsentActivity.java"


# instance fields
.field public mPolicyTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 2

    const v0, 0x7f0b0022

    .line 51
    invoke-virtual {p0, v0}, Lcom/telguarder/features/userConsentHandling/ConsentActivity;->setContentView(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 53
    invoke-static {p0, v0, v0, v1}, Lcom/telguarder/helpers/ui/UiHelper;->setupBarScreenWithBottomNavbarPadding(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Landroid/view/View;Z)V

    const v0, 0x7f080297

    .line 55
    invoke-virtual {p0, v0}, Lcom/telguarder/features/userConsentHandling/ConsentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/telguarder/features/userConsentHandling/ConsentActivity;->mPolicyTextView:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0, p0}, Lcom/telguarder/features/userConsentHandling/ConsentActivity;->getPolicyText(Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initbUttons()V
    .locals 2

    const v0, 0x7f080097

    .line 61
    invoke-virtual {p0, v0}, Lcom/telguarder/features/userConsentHandling/ConsentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 62
    new-instance v1, Lcom/telguarder/features/userConsentHandling/ConsentActivity$1;

    invoke-direct {v1, p0}, Lcom/telguarder/features/userConsentHandling/ConsentActivity$1;-><init>(Lcom/telguarder/features/userConsentHandling/ConsentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080094

    .line 69
    invoke-virtual {p0, v0}, Lcom/telguarder/features/userConsentHandling/ConsentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 70
    new-instance v1, Lcom/telguarder/features/userConsentHandling/ConsentActivity$2;

    invoke-direct {v1, p0}, Lcom/telguarder/features/userConsentHandling/ConsentActivity$2;-><init>(Lcom/telguarder/features/userConsentHandling/ConsentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected abstract getPolicyText(Landroid/content/Context;)Landroid/text/Spanned;
.end method

.method public onBackPressed()V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/telguarder/features/userConsentHandling/ConsentActivity;->onDismiss()V

    .line 46
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-direct {p0}, Lcom/telguarder/features/userConsentHandling/ConsentActivity;->initViews()V

    .line 28
    invoke-direct {p0}, Lcom/telguarder/features/userConsentHandling/ConsentActivity;->initbUttons()V

    return-void
.end method

.method protected abstract onDismiss()V
.end method

.method protected abstract onNo()V
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 34
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/features/userConsentHandling/ConsentActivity;->onDismiss()V

    .line 39
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected abstract onYes()V
.end method
