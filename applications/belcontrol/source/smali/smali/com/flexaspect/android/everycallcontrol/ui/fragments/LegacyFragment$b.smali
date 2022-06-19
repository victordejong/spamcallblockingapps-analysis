.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    sget-object p1, Lr71$a;->M0:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lr71$a;->O0:Lr71$a;

    invoke-virtual {p1}, Lr71$a;->a()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;->H(Lcom/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void
.end method
