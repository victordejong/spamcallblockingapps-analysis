.class public final Lcom/google/android/gms/internal/ads/azr;
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
        "Lcom/google/android/gms/internal/ads/ayx;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/azl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/azl;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/azr;->a:Lcom/google/android/gms/internal/ads/azl;

    .line 3
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/azl;)Lcom/google/android/gms/internal/ads/azr;
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/azr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/azr;-><init>(Lcom/google/android/gms/internal/ads/azl;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/azl;)Lcom/google/android/gms/internal/ads/ayx;
    .locals 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/azl;->a()Lcom/google/android/gms/internal/ads/ayx;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ayx;

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/azr;->a:Lcom/google/android/gms/internal/ads/azl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/azr;->b(Lcom/google/android/gms/internal/ads/azl;)Lcom/google/android/gms/internal/ads/ayx;

    move-result-object v0

    .line 8
    return-object v0
.end method
