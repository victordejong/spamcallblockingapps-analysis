.class public Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$d;->a:Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$d;->a:Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;

    invoke-static {p1}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->g(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;)Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    move-result-object p1

    const v0, 0x7f0a03b0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method
