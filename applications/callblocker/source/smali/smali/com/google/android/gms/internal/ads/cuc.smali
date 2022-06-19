.class final Lcom/google/android/gms/internal/ads/cuc;
.super Lcom/google/android/gms/internal/ads/csz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/csz",
        "<",
        "Lcom/google/android/gms/internal/ads/csm;",
        "Lcom/google/android/gms/internal/ads/cwo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/csz;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/cwo;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/czc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwo;->b()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dbi;->d()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/czc;-><init>([B)V

    .line 4
    return-object v0
.end method
