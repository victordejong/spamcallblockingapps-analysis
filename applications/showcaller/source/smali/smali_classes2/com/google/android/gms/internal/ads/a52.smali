.class public final Lcom/google/android/gms/internal/ads/a52;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wa2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/wa2<",
        "Lcom/google/android/gms/internal/ads/b52;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/s03;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/xj2;

.field private final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/s03;Landroid/content/Context;Lcom/google/android/gms/internal/ads/xj2;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/a52;->a:Lcom/google/android/gms/internal/ads/s03;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/a52;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/a52;->c:Lcom/google/android/gms/internal/ads/xj2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/a52;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method final synthetic a()Lcom/google/android/gms/internal/ads/b52;
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/b52;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/a52;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/a52;->c:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/xj2;->e:Lcom/google/android/gms/internal/ads/zzbdl;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/a52;->d:Landroid/view/View;

    :goto_0
    if-eqz v4, :cond_2

    .line 2
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    .line 4
    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    :goto_1
    new-instance v6, Landroid/os/Bundle;

    .line 5
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 6
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "type"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "index_of_child"

    .line 7
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    instance-of v4, v5, Landroid/view/View;

    if-eqz v4, :cond_2

    .line 10
    move-object v4, v5

    check-cast v4, Landroid/view/View;

    goto :goto_0

    .line 11
    :cond_2
    :goto_2
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/b52;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/util/List;)V

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/r03;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/b52;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/a52;->a:Lcom/google/android/gms/internal/ads/s03;

    new-instance v1, Lcom/google/android/gms/internal/ads/z42;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/z42;-><init>(Lcom/google/android/gms/internal/ads/a52;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/s03;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0
.end method
