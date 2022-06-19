.class public final Lcom/google/android/gms/internal/ads/bxf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bsm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bsm<",
        "Lcom/google/android/gms/internal/ads/os;",
        "Lcom/google/android/gms/internal/ads/buh;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bym;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bym;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bxf;->a:Lcom/google/android/gms/internal/ads/bym;

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
            "Lcom/google/android/gms/internal/ads/os;",
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
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bxf;->a:Lcom/google/android/gms/internal/ads/bym;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/bym;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/os;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/buh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/buh;-><init>()V

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/bsn;

    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/bsn;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/asy;Ljava/lang/String;)V

    return-object v1
.end method
