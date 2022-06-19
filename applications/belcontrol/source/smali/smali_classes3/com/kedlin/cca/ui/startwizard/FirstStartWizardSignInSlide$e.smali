.class public Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$e;
.super Landroid/text/style/ClickableSpan;
.source ""


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

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$e;->a:Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$e;->a:Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;

    invoke-static {p1}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->f(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;)Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    move-result-object v0

    invoke-static {v0}, Loe1;->b0(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->h(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
