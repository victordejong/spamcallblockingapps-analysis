.class public Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$e;->a:Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$e;->a:Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;

    invoke-static {p1}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->f(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$e;->a:Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->g(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;Z)Z

    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$e;->a:Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;

    invoke-static {p1}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->h(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;)Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    move-result-object p1

    const v0, 0x7f0a02b7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method
