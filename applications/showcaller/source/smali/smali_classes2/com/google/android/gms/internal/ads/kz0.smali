.class final Lcom/google/android/gms/internal/ads/kz0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/f03<",
        "Lcom/google/android/gms/internal/ads/xy0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/f03;

.field final synthetic b:Lcom/google/android/gms/internal/ads/lz0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/lz0;Lcom/google/android/gms/internal/ads/f03;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kz0;->b:Lcom/google/android/gms/internal/ads/lz0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kz0;->a:Lcom/google/android/gms/internal/ads/f03;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kz0;->b:Lcom/google/android/gms/internal/ads/lz0;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/lz0;->d(Lcom/google/android/gms/internal/ads/lz0;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kz0;->a:Lcom/google/android/gms/internal/ads/f03;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/f03;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/xy0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kz0;->b:Lcom/google/android/gms/internal/ads/lz0;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/lz0;->d(Lcom/google/android/gms/internal/ads/lz0;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kz0;->a:Lcom/google/android/gms/internal/ads/f03;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/f03;->b(Ljava/lang/Object;)V

    return-void
.end method
