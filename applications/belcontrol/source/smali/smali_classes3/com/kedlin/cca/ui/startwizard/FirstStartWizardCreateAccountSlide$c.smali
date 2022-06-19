.class public Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$c;
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
.field public final synthetic a:Lu91;

.field public final synthetic b:Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;Lu91;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$c;->b:Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;

    iput-object p2, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$c;->a:Lu91;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$c;->b:Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;

    invoke-static {p1}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->f(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lv91$a;->f:Lv91$a;

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$c;->a:Lu91;

    invoke-static {p1, v0}, Lv91;->c(Lv91$a;Lv91$b;)Lv91;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide$c;->b:Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;->g(Lcom/kedlin/cca/ui/startwizard/FirstStartWizardCreateAccountSlide;Z)Z

    invoke-virtual {p1}, Lv91;->l()V

    :cond_1
    return-void
.end method
