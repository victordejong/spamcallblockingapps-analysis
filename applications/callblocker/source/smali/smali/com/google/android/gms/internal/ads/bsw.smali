.class public final Lcom/google/android/gms/internal/ads/bsw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dht;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dht",
        "<",
        "Lcom/google/android/gms/internal/ads/bst;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/dza;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/chh;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/akk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;Lcom/google/android/gms/internal/ads/dig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/dza;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/chh;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/akk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bsw;->a:Lcom/google/android/gms/internal/ads/dig;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bsw;->b:Lcom/google/android/gms/internal/ads/dig;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bsw;->c:Lcom/google/android/gms/internal/ads/dig;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bsw;->d:Lcom/google/android/gms/internal/ads/dig;

    .line 6
    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsw;->a:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bsw;->b:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dza;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bsw;->c:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/chh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bsw;->d:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/akk;

    .line 9
    new-instance v4, Lcom/google/android/gms/internal/ads/bst;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/bst;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dza;Lcom/google/android/gms/internal/ads/chh;Lcom/google/android/gms/internal/ads/akk;)V

    .line 10
    return-object v4
.end method
