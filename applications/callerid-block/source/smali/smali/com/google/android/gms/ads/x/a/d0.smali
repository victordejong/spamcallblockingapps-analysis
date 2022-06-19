.class public final Lcom/google/android/gms/ads/x/a/d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/uy1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/uy1<",
        "Lcom/google/android/gms/internal/ads/zzawc;",
        "Lcom/google/android/gms/ads/x/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/internal/ads/iv0;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/iv0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/x/a/d0;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/ads/x/a/d0;->b:Lcom/google/android/gms/internal/ads/iv0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzawc;

    iget-object v0, p0, Lcom/google/android/gms/ads/x/a/d0;->b:Lcom/google/android/gms/internal/ads/iv0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iv0;->a(Lcom/google/android/gms/internal/ads/zzawc;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/x/a/c0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/x/a/c0;-><init>(Lcom/google/android/gms/internal/ads/zzawc;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/x/a/d0;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/kz1;->h(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/uy1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method
