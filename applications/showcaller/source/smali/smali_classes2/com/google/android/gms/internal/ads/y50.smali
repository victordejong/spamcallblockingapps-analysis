.class final Lcom/google/android/gms/internal/ads/y50;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zi0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zi0<",
        "Lcom/google/android/gms/internal/ads/x40;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/x50;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/c60;Lcom/google/android/gms/internal/ads/x50;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/y50;->a:Lcom/google/android/gms/internal/ads/x50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/x40;

    const-string v0, "Getting a new session for JS Engine."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/o1;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y50;->a:Lcom/google/android/gms/internal/ads/x50;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/x40;->h()Lcom/google/android/gms/internal/ads/f60;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cj0;->c(Ljava/lang/Object;)V

    return-void
.end method
