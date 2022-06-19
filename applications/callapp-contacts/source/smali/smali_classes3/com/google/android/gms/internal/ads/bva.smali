.class public final Lcom/google/android/gms/internal/ads/bva;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bsm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bsm<",
        "Lcom/google/android/gms/internal/ads/cqe;",
        "Lcom/google/android/gms/internal/ads/buh;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bjg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bjg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bva;->a:Lcom/google/android/gms/internal/ads/bjg;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/bsn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/bsn<",
            "Lcom/google/android/gms/internal/ads/cqe;",
            "Lcom/google/android/gms/internal/ads/buh;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdpq;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bva;->a:Lcom/google/android/gms/internal/ads/bjg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/bjg;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/cqe;

    move-result-object p2

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/buh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/buh;-><init>()V

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/bsn;

    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/bsn;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/asy;Ljava/lang/String;)V

    return-object v1
.end method
