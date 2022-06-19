.class final Lcom/google/android/gms/internal/ads/ws1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/f03<",
        "Lcom/google/android/gms/internal/ads/rj2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/xs1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/xs1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ws1;->a:Lcom/google/android/gms/internal/ads/xs1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/rj2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ws1;->a:Lcom/google/android/gms/internal/ads/xs1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/xs1;->b(Lcom/google/android/gms/internal/ads/xs1;)Lcom/google/android/gms/internal/ads/s51;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/s51;->S(Lcom/google/android/gms/internal/ads/rj2;)V

    return-void
.end method
