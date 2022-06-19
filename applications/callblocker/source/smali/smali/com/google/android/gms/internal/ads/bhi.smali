.class public final Lcom/google/android/gms/internal/ads/bhi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bho;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bho;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bhi;->a:Lcom/google/android/gms/internal/ads/bho;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bho;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bhi;->c:Ljava/util/Map;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bhi;->b:Ljava/util/concurrent/Executor;

    .line 5
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bhi;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhi;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/bhi;)Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhi;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/bhi;)Lcom/google/android/gms/internal/ads/bho;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhi;->a:Lcom/google/android/gms/internal/ads/bho;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/bhh;
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/bhh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bhh;-><init>(Lcom/google/android/gms/internal/ads/bhi;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bhh;->a(Lcom/google/android/gms/internal/ads/bhh;)Lcom/google/android/gms/internal/ads/bhh;

    move-result-object v0

    return-object v0
.end method
