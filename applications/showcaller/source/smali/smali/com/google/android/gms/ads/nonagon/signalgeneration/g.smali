.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/g;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/uz2<",
        "Lcom/google/android/gms/internal/ads/zzcbj;",
        "Lcom/google/android/gms/ads/nonagon/signalgeneration/i;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/google/android/gms/internal/ads/tr1;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/tr1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/g;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/g;->b:Lcom/google/android/gms/internal/ads/tr1;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcbj;

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/g;->b:Lcom/google/android/gms/internal/ads/tr1;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/tr1;->a(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/f;

    .line 3
    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/f;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/g;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
