.class public final Lcom/google/android/gms/internal/ads/atv;
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
        "Ljava/util/Set",
        "<",
        "Lcom/google/android/gms/internal/ads/auq",
        "<",
        "Lcom/google/android/gms/internal/ads/arl;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/atf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/atf;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/atv;->a:Lcom/google/android/gms/internal/ads/atf;

    .line 3
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/atf;)Lcom/google/android/gms/internal/ads/atv;
    .locals 1

    .prologue
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/atv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/atv;-><init>(Lcom/google/android/gms/internal/ads/atf;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/atv;->a:Lcom/google/android/gms/internal/ads/atf;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/atf;->i()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 8
    return-object v0
.end method
