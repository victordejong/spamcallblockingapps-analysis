.class final Lcom/google/android/gms/internal/ads/deg;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw<",
        "Lcom/google/android/gms/internal/ads/dcn;",
        "Lcom/google/android/gms/internal/ads/dgv;",
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
    check-cast p1, Lcom/google/android/gms/internal/ads/dgv;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/djn;

    .line 1007
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dgv;->zzihd:Lcom/google/android/gms/internal/ads/dlw;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/djn;-><init>([B)V

    return-object v0
.end method
