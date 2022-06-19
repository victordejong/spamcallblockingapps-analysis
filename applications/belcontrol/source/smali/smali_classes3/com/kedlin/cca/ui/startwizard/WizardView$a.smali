.class public Lcom/kedlin/cca/ui/startwizard/WizardView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/startwizard/WizardView;->f()V
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

    iput-object p1, p0, Lcom/kedlin/cca/ui/startwizard/WizardView$a;->a:Lcom/kedlin/cca/ui/startwizard/WizardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/WizardView$a;->a:Lcom/kedlin/cca/ui/startwizard/WizardView;

    iget-object v1, v0, Lcom/kedlin/cca/ui/startwizard/WizardView;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/kedlin/cca/ui/startwizard/WizardView;->i(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/kedlin/cca/ui/startwizard/WizardView$a;->a:Lcom/kedlin/cca/ui/startwizard/WizardView;

    invoke-virtual {v0}, Lcom/kedlin/cca/ui/startwizard/WizardView;->d()V

    return-void
.end method
