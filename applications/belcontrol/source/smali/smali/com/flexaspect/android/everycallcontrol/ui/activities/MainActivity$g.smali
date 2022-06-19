.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->onResume()V
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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$g;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .locals 1

    sget-object v0, Lq71$e;->c:Lq71$e;

    invoke-static {v0}, Lr71;->D(Lq71$e;)V

    sget-object v0, Lq71$e;->d:Lq71$e;

    invoke-static {v0}, Lr71;->D(Lq71$e;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$g;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->Z0()V

    return-void
.end method


# virtual methods
.method public synthetic b()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$g;->a()V

    return-void
.end method

.method public run()V
    .locals 8

    sget-object v0, Lr71$a;->O:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->e()I

    move-result v1

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$g;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eq v1, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v2, v4}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->B(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;Z)Z

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$g;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/DndFragment;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$g;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ComplaintFragment;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$g;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactsFragment;

    goto :goto_1

    :cond_4
    sget-object v1, Lr71$a;->y0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$g;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-static {v3}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->E(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lfr0;

    invoke-direct {v4, p0}, Lfr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$g;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v1}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsh0;->h(Ljava/lang/String;)Lsh0;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lsh0;->q()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lsh0;->o()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0, v5}, Lr71$a;->m(Ljava/lang/Integer;)V

    invoke-virtual {v1}, Lsh0;->r()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$g;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$g;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v1, Lcom/flexaspect/android/everycallcontrol/ui/fragments/recent/RecentcallsFragment;

    :goto_1
    invoke-virtual {v0, p0, v1, v2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    :goto_2
    sget-object v0, Lr71$a;->P:Lr71$a;

    invoke-virtual {v0}, Lr71$a;->e()I

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$g;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    const-class v3, Lcom/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions;

    invoke-virtual {v1, p0, v3, v2}, Lcom/kedlin/cca/ui/CCAFragmentActivity;->r(Ljava/lang/Object;Ljava/lang/Class;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v5}, Lr71$a;->m(Ljava/lang/Integer;)V

    :goto_3
    return-void
.end method
