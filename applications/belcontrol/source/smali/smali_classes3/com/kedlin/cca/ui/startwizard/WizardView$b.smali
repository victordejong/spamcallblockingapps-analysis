.class public Lcom/kedlin/cca/ui/startwizard/WizardView$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/startwizard/WizardView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/ui/startwizard/WizardView;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/startwizard/WizardView;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView$b;->a:Lcom/kedlin/cca/ui/startwizard/WizardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView$b;->a:Lcom/kedlin/cca/ui/startwizard/WizardView;

    invoke-virtual {p1}, Lcom/kedlin/cca/ui/startwizard/WizardView;->g()V

    :cond_0
    return-void
.end method
