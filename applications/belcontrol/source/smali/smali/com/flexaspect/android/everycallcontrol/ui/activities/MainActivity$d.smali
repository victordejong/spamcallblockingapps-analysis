.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkv0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;
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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    sget-object v0, Lq71$e;->c:Lq71$e;

    invoke-static {v0}, Lr71;->D(Lq71$e;)V

    sget-object v0, Lq71$e;->d:Lq71$e;

    invoke-static {v0}, Lr71;->D(Lq71$e;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->Z0()V

    return-void
.end method


# virtual methods
.method public a(Liv0;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->A(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)Liv0;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->e0()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnd;->K0(Ljava/lang/String;I)Z

    :cond_1
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {v0, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->T(Liv0;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;

    if-eqz v1, :cond_2

    invoke-static {}, Lfa1;->u()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;

    invoke-direct {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;-><init>()V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->C(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment;

    if-eqz v1, :cond_3

    invoke-static {}, Lfa1;->u()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;

    invoke-direct {v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;-><init>()V

    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-static {v1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->C(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)Landroid/util/SparseArray;

    move-result-object v1

    goto :goto_0

    :cond_3
    :goto_1
    instance-of v1, v0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment;

    if-eqz v1, :cond_4

    sget-object v1, Lr71$a;->y0:Lr71$a;

    invoke-virtual {v1}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-static {v2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->E(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcr0;

    invoke-direct {v3, p0}, Lcr0;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$d;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v1}, Lr71$a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsh0;->h(Ljava/lang/String;)Lsh0;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lsh0;->q()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lsh0;->o()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lsh0;->r()V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-static {v1, p1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->F(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;Liv0;)V

    iget-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$d;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-static {p1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->G(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;Landroidx/fragment/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public synthetic c()V
    .locals 0

    invoke-direct {p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$d;->b()V

    return-void
.end method
