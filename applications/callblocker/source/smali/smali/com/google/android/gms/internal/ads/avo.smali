.class public final Lcom/google/android/gms/internal/ads/avo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dht;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dht",
        "<",
        "Lcom/google/android/gms/internal/ads/avp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/ads/avo;
    .locals 1

    .prologue
    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/avr;->a()Lcom/google/android/gms/internal/ads/avo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/avp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/avp;-><init>()V

    .line 4
    return-object v0
.end method
