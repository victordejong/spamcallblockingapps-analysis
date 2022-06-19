.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->n0(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->H(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;Z)Z

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    iget-boolean v1, p1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->w:Z

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->I(Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;I)I

    :cond_0
    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    invoke-virtual {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;->q0()V

    return-void
.end method
