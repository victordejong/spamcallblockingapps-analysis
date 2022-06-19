.class public final Lcom/google/android/gms/internal/ads/brg;
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
        "Lcom/google/android/gms/internal/ads/brd;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/bsl;",
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
            "Lcom/google/android/gms/internal/ads/bsl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/brg;->a:Lcom/google/android/gms/internal/ads/dig;

    .line 3
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dig;)Lcom/google/android/gms/internal/ads/brg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dig",
            "<",
            "Lcom/google/android/gms/internal/ads/bsl;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/brg;"
        }
    .end annotation

    .prologue
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/brg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/brg;-><init>(Lcom/google/android/gms/internal/ads/dig;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brg;->a:Lcom/google/android/gms/internal/ads/dig;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dig;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bsl;

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/brd;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/brd;-><init>(Lcom/google/android/gms/internal/ads/bsl;)V

    .line 8
    return-object v1
.end method
