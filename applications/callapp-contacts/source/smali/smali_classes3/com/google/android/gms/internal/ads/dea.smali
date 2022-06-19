.class final Lcom/google/android/gms/internal/ads/dea;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw<",
        "Lcom/google/android/gms/internal/ads/dcn;",
        "Lcom/google/android/gms/internal/ads/dgq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dcw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/dgq;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/djm;

    .line 1011
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dgq;->zzihd:Lcom/google/android/gms/internal/ads/dlw;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dgq;->a()Lcom/google/android/gms/internal/ads/dgu;

    move-result-object p1

    .line 2003
    iget p1, p1, Lcom/google/android/gms/internal/ads/dgu;->zziht:I

    .line 4
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/djm;-><init>([BI)V

    return-object v0
.end method
