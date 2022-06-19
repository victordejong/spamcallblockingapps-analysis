.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lnd$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->H(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->e0()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->A(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)Liv0;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->T(Liv0;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lnd;->d0(I)Lnd$f;

    move-result-object v2

    invoke-interface {v2}, Lnd$f;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnd;->Z(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment not found in stack! Stack size:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lj91;->G(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-static {v0, v2}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->J(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;Z)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-static {}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->K()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->J(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;Z)Z

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->I(Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->h1()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity$e;->a:Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    invoke-virtual {v0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;->V()V

    :goto_1
    return-void
.end method
