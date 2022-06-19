.class public final Lcom/google/android/gms/internal/ads/and;
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
        "Lcom/google/android/gms/internal/ads/chd;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/amy;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/amy;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/and;->a:Lcom/google/android/gms/internal/ads/amy;

    .line 3
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/amy;)Lcom/google/android/gms/internal/ads/and;
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/and;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/and;-><init>(Lcom/google/android/gms/internal/ads/amy;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/amy;)Lcom/google/android/gms/internal/ads/chd;
    .locals 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/amy;->a()Lcom/google/android/gms/internal/ads/chd;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/chd;

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/and;->a:Lcom/google/android/gms/internal/ads/amy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/and;->b(Lcom/google/android/gms/internal/ads/amy;)Lcom/google/android/gms/internal/ads/chd;

    move-result-object v0

    .line 8
    return-object v0
.end method
