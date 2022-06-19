.class public final Lcom/google/android/gms/internal/ads/bsd;
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
        "Lcom/google/android/gms/internal/ads/u;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bsa;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/bsa;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bsd;->a:Lcom/google/android/gms/internal/ads/bsa;

    .line 3
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/bsa;)Lcom/google/android/gms/internal/ads/bsd;
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/bsd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bsd;-><init>(Lcom/google/android/gms/internal/ads/bsa;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsd;->a:Lcom/google/android/gms/internal/ads/bsa;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bsa;->a()Lcom/google/android/gms/internal/ads/u;

    move-result-object v0

    .line 8
    return-object v0
.end method
