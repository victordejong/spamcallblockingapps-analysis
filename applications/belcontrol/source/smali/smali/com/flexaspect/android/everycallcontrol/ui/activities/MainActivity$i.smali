.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$i;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    iget-object p1, p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G:Lcom/kedlin/cca/ui/startwizard/WizardView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/kedlin/cca/ui/startwizard/WizardView;->h(Z)V

    return-void
.end method
