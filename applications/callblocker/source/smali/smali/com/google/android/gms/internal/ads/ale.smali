.class public final Lcom/google/android/gms/internal/ads/ale;
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
        "Lcom/google/android/gms/internal/ads/act;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ako;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ako;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ale;->a:Lcom/google/android/gms/internal/ads/ako;

    .line 3
    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ale;->a:Lcom/google/android/gms/internal/ads/ako;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ako;->a()Lcom/google/android/gms/internal/ads/act;

    move-result-object v0

    .line 7
    return-object v0
.end method
