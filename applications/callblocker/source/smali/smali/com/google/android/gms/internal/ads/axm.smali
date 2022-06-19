.class public final Lcom/google/android/gms/internal/ads/axm;
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
        "Lcom/google/android/gms/internal/ads/axk;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/axk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/axk;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/axm;->a:Lcom/google/android/gms/internal/ads/axk;

    .line 3
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/axk;)Lcom/google/android/gms/internal/ads/axm;
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/axm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/axm;-><init>(Lcom/google/android/gms/internal/ads/axk;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/axm;->a:Lcom/google/android/gms/internal/ads/axk;

    .line 7
    if-nez v0, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/axk;

    .line 8
    return-object v0
.end method
