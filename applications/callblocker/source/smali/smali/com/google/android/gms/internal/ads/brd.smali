.class public final Lcom/google/android/gms/internal/ads/brd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bmw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bmw",
        "<",
        "Lcom/google/android/gms/internal/ads/mn;",
        "Lcom/google/android/gms/internal/ads/bof;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bsl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bsl;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/brd;->a:Lcom/google/android/gms/internal/ads/bsl;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/bmx;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/bmx",
            "<",
            "Lcom/google/android/gms/internal/ads/mn;",
            "Lcom/google/android/gms/internal/ads/bof;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brd;->a:Lcom/google/android/gms/internal/ads/bsl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bsl;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/mn;

    move-result-object v1

    .line 5
    if-nez v1, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    :goto_0
    return-object v0

    .line 7
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/bof;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/bof;-><init>()V

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/bmx;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/bmx;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/aqz;Ljava/lang/String;)V

    goto :goto_0
.end method
