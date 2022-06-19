.class final Lcom/google/android/gms/internal/ads/der;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw<",
        "Lcom/google/android/gms/internal/ads/dcn;",
        "Lcom/google/android/gms/internal/ads/dix;",
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/dix;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dix;->a()Lcom/google/android/gms/internal/ads/dja;

    move-result-object v0

    .line 1004
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dja;->zzilj:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ddc;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dcy;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dcy;->b()Lcom/google/android/gms/internal/ads/dcn;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/dep;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dix;->a()Lcom/google/android/gms/internal/ads/dja;

    move-result-object p1

    .line 1005
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/dja;->zzilk:Lcom/google/android/gms/internal/ads/dik;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/dik;->a()Lcom/google/android/gms/internal/ads/dik;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dja;->zzilk:Lcom/google/android/gms/internal/ads/dik;

    .line 6
    :goto_0
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/dep;-><init>(Lcom/google/android/gms/internal/ads/dik;Lcom/google/android/gms/internal/ads/dcn;)V

    return-object v1
.end method
