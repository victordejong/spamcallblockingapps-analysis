.class final Lcom/google/android/gms/internal/ads/dbm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dbo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dbl;)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbm;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([BII)[B
    .locals 1

    .prologue
    .line 2
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method
