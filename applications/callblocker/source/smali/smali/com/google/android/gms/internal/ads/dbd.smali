.class public Lcom/google/android/gms/internal/ads/dbd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dep;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/android/gms/internal/ads/deg;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dep",
        "<TMessageType;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/dci;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->a()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dbd;->a:Lcom/google/android/gms/internal/ads/dci;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
