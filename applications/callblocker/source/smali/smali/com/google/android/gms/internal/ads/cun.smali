.class final Lcom/google/android/gms/internal/ads/cun;
.super Lcom/google/android/gms/internal/ads/csz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/csz",
        "<",
        "Lcom/google/android/gms/internal/ads/csm;",
        "Lcom/google/android/gms/internal/ads/cym;",
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
    .locals 3

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/cym;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cym;->b()Lcom/google/android/gms/internal/ads/cyn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyn;->a()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cta;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ctb;

    move-result-object v1

    .line 5
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ctb;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/csm;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/cuk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cym;->b()Lcom/google/android/gms/internal/ads/cyn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cyn;->b()Lcom/google/android/gms/internal/ads/cya;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/cuk;-><init>(Lcom/google/android/gms/internal/ads/cya;Lcom/google/android/gms/internal/ads/csm;)V

    .line 7
    return-object v1
.end method
