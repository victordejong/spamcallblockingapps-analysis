.class public final Lcom/google/android/gms/internal/ads/bww;
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
        "Lcom/google/android/gms/internal/ads/bwu;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/cef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/dig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/cef;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bww;->a:Lcom/google/android/gms/internal/ads/dig;

    .line 3
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/cef;)Lcom/google/android/gms/internal/ads/bwu;
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/bwu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bwu;-><init>(Lcom/google/android/gms/internal/ads/cef;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dig;)Lcom/google/android/gms/internal/ads/bww;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/cef;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/bww;"
        }
    .end annotation

    .prologue
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/bww;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bww;-><init>(Lcom/google/android/gms/internal/ads/dig;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bww;->a:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cef;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bww;->a(Lcom/google/android/gms/internal/ads/cef;)Lcom/google/android/gms/internal/ads/bwu;

    move-result-object v0

    .line 8
    return-object v0
.end method
