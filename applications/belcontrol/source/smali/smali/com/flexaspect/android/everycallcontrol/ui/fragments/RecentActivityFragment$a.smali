.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->onResume()V
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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->F(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->e0()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$a;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-virtual {v0}, Lqb1;->o()Lsb1;

    move-result-object v0

    invoke-virtual {v0}, Lsb1;->b()Lsb1;

    :cond_0
    return-void
.end method
