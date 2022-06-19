.class public Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$f;
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
.field public final synthetic a:Lu91;

.field public final synthetic b:Lr91;

.field public final synthetic c:Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;Lu91;Lr91;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$f;->c:Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;

    iput-object p2, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$f;->a:Lu91;

    iput-object p3, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$f;->b:Lr91;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$f;->c:Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;

    invoke-static {p1}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;->g(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide;)Lcom/kedlin/cca/ui/EveryCallerSignInForm;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/kedlin/cca/ui/EveryCallerSignInForm;->j(Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$f;->a:Lu91;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardSignInSlide$f;->b:Lr91;

    invoke-virtual {p1, v0, v1}, Lu91;->g(Landroid/app/AlertDialog$Builder;Lv91;)V

    :cond_0
    return-void
.end method
