.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$j;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$j;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->R(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$j;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->D(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
