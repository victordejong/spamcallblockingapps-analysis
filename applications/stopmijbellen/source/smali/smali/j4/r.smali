.class public final synthetic Lj4/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lj4/t;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Lcom/google/android/play/core/assetpacks/AssetPackState;


# direct methods
.method public synthetic constructor <init>(Lj4/t;Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/AssetPackState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4/r;->a:Lj4/t;

    iput-object p2, p0, Lj4/r;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lj4/r;->c:Lcom/google/android/play/core/assetpacks/AssetPackState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lj4/r;->a:Lj4/t;

    iget-object v1, p0, Lj4/r;->b:Landroid/os/Bundle;

    iget-object v2, p0, Lj4/r;->c:Lcom/google/android/play/core/assetpacks/AssetPackState;

    .line 1
    iget-object v3, v0, Lj4/t;->g:Lj4/b1;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v4, Lj4/t0;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v1, v5}, Lj4/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v4}, Lj4/b1;->b(Lj4/a1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Lj4/t;->o:Landroid/os/Handler;

    new-instance v3, Li2/y;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v2, v4}, Li2/y;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, v0, Lj4/t;->i:Lo4/p;

    .line 5
    invoke-interface {v0}, Lo4/p;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj4/l2;

    invoke-interface {v0}, Lj4/l2;->zzf()V

    :cond_0
    return-void
.end method
