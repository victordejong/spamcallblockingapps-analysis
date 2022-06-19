.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->l0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    return-void
.end method
