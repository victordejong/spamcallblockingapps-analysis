.class public final Lcom/google/android/gms/internal/ads/buw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Lcom/google/android/gms/internal/ads/bux;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/crs;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/chh;

.field private final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/crs;Landroid/content/Context;Lcom/google/android/gms/internal/ads/chh;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/buw;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/buw;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/buw;->c:Lcom/google/android/gms/internal/ads/chh;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/buw;->d:Landroid/view/View;

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/bux;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/buw;->a:Lcom/google/android/gms/internal/ads/crs;

    new-instance v1, Lcom/google/android/gms/internal/ads/buz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/buz;-><init>(Lcom/google/android/gms/internal/ads/buw;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/crs;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b()Lcom/google/android/gms/internal/ads/bux;
    .locals 9

    .prologue
    .line 8
    new-instance v3, Lcom/google/android/gms/internal/ads/bux;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/buw;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/buw;->c:Lcom/google/android/gms/internal/ads/chh;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/chh;->e:Lcom/google/android/gms/internal/ads/dyd;

    .line 9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/buw;->d:Landroid/view/View;

    move-object v2, v1

    .line 11
    :goto_0
    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    const/4 v0, -0x1

    .line 15
    instance-of v7, v1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    move-object v0, v1

    .line 16
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 17
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 18
    const-string/jumbo v7, "type"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string/jumbo v7, "index_of_child"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 22
    check-cast v1, Landroid/view/View;

    move-object v2, v1

    .line 23
    goto :goto_0

    .line 25
    :cond_1
    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/bux;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dyd;Ljava/util/List;)V

    return-object v3
.end method
