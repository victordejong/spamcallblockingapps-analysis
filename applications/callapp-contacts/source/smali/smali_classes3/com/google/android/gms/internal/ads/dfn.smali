.class final Lcom/google/android/gms/internal/ads/dfn;
.super Lcom/google/android/gms/internal/ads/dcw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw<",
        "Lcom/google/android/gms/internal/ads/ddb;",
        "Lcom/google/android/gms/internal/ads/dfz;",
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
    check-cast p1, Lcom/google/android/gms/internal/ads/dfz;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/dkw;

    new-instance v1, Lcom/google/android/gms/internal/ads/dkv;

    .line 1007
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/dfz;->zzihd:Lcom/google/android/gms/internal/ads/dlw;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dlw;->d()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/dkv;-><init>([B)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dfz;->a()Lcom/google/android/gms/internal/ads/dge;

    move-result-object p1

    .line 2003
    iget p1, p1, Lcom/google/android/gms/internal/ads/dge;->zzihi:I

    .line 4
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/dkw;-><init>(Lcom/google/android/gms/internal/ads/dfx;I)V

    return-object v0
.end method
