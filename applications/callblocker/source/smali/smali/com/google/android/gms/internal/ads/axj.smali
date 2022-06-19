.class public final Lcom/google/android/gms/internal/ads/axj;
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
        "Lcom/google/android/gms/internal/ads/dza;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/axk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/axk;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axj;->a:Lcom/google/android/gms/internal/ads/axk;

    .line 3
    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axj;->a:Lcom/google/android/gms/internal/ads/axk;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/axk;->b()Lcom/google/android/gms/internal/ads/dza;

    move-result-object v0

    .line 7
    return-object v0
.end method
