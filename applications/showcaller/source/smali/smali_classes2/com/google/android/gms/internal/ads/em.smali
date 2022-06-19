.class final Lcom/google/android/gms/internal/ads/em;
.super Lcom/google/android/gms/internal/ads/vi0;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/vi0<",
        "Lcom/google/android/gms/internal/ads/mm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/android/gms/internal/ads/km;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/km;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/em;->e:Lcom/google/android/gms/internal/ads/km;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/vi0;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/em;->e:Lcom/google/android/gms/internal/ads/km;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/km;->f(Lcom/google/android/gms/internal/ads/km;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/vi0;->cancel(Z)Z

    move-result p1

    return p1
.end method
