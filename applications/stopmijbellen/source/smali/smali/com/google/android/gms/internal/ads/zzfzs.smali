.class final Lcom/google/android/gms/internal/ads/zzfzs;
.super Lcom/google/android/gms/internal/ads/zzfyh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzfyh<",
        "Lcom/google/android/gms/internal/ads/zzfxu;",
        "Lcom/google/android/gms/internal/ads/zzgdg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfyh;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdg;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgaj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgdg;->zzf()Lcom/google/android/gms/internal/ads/zzgjf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjf;->zzE()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgaj;-><init>([B)V

    return-object v0
.end method
