.class final Lcom/google/android/gms/internal/ads/den;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw<",
        "Lcom/google/android/gms/internal/ads/dcn;",
        "Lcom/google/android/gms/internal/ads/dit;",
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/dit;

    .line 1006
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dit;->zzild:Lcom/google/android/gms/internal/ads/diw;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/diw;->a()Lcom/google/android/gms/internal/ads/diw;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dit;->zzild:Lcom/google/android/gms/internal/ads/diw;

    .line 2004
    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/diw;->zzilf:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ddc;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dcy;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dcy;->b()Lcom/google/android/gms/internal/ads/dcn;

    move-result-object p1

    return-object p1
.end method
