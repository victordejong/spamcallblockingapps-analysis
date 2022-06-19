.class final Lcom/google/android/gms/internal/ads/ajo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hi<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/ajp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ajp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ajo;->a:Lcom/google/android/gms/internal/ads/ajp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ajo;->a:Lcom/google/android/gms/internal/ads/ajp;

    .line 1025
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ajp;->a(Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ajo;->a:Lcom/google/android/gms/internal/ads/ajp;

    .line 1026
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ajp;->b:Ljava/util/concurrent/Executor;

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/ads/ajr;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/ajr;-><init>(Lcom/google/android/gms/internal/ads/ajo;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
