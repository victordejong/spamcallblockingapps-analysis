.class final Lcom/google/android/gms/internal/ads/dfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ddh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ddh<",
        "Lcom/google/android/gms/internal/ads/dcq;",
        "Lcom/google/android/gms/internal/ads/dcq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/android/gms/internal/ads/dcq;",
            ">;"
        }
    .end annotation

    .line 2
    const-class v0, Lcom/google/android/gms/internal/ads/dcq;

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/ddd;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/dfk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/dfk;-><init>(Lcom/google/android/gms/internal/ads/ddd;)V

    return-object v0
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/android/gms/internal/ads/dcq;",
            ">;"
        }
    .end annotation

    .line 3
    const-class v0, Lcom/google/android/gms/internal/ads/dcq;

    return-object v0
.end method
