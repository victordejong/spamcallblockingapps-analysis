.class final Lcom/google/android/gms/internal/ads/gj1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/f03<",
        "Lcom/google/android/gms/internal/ads/wn0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/internal/ads/n20;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qj1;Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gj1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gj1;->b:Lcom/google/android/gms/internal/ads/n20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/wn0;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gj1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gj1;->b:Lcom/google/android/gms/internal/ads/n20;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/wn0;->l0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    return-void
.end method
