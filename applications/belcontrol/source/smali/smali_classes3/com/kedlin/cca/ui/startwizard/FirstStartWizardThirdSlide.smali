.class public Lcom/kedlin/cca/ui/startwizard/FirstStartWizardThirdSlide;
.super Lcom/kedlin/cca/ui/Slide;
.source ""


# instance fields
.field public a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/Slide;-><init>(Landroid/content/Context;)V

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardThirdSlide;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardThirdSlide;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/ui/startwizard/WizardView;->h(Z)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    invoke-super {p0}, Lcom/kedlin/cca/ui/Slide;->e()V

    const v0, 0x7f0a0643

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lsd1;

    invoke-direct {v1, p0}, Lsd1;-><init>(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardThirdSlide;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic g(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardThirdSlide;->f(Landroid/view/View;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00ce

    return v0
.end method

.method public getStyleId()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const v0, 0x1030239

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method
