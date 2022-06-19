.class final Lcom/google/android/gms/internal/ads/v50;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zi0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zi0<",
        "Lcom/google/android/gms/internal/ads/e60;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/x50;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/x50;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v50;->a:Lcom/google/android/gms/internal/ads/x50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/e60;

    const-string p1, "Releasing engine reference."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/v50;->a:Lcom/google/android/gms/internal/ads/x50;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/x50;->f(Lcom/google/android/gms/internal/ads/x50;)Lcom/google/android/gms/internal/ads/c60;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c60;->g()V

    return-void
.end method
