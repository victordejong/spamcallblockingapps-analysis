.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$b;
.super Landroid/content/BroadcastReceiver;
.source ""


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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lfa1;->w()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->O(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)Landroid/widget/TabHost;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setVisibility(I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->C(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->Q(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$b;->a:Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;

    invoke-static {p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;->D(Lcom/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment;)V

    :cond_1
    return-void
.end method
