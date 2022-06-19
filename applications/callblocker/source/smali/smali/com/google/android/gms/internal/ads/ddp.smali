.class abstract Lcom/google/android/gms/internal/ads/ddp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/ddp;

.field private static final b:Lcom/google/android/gms/internal/ads/ddp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/dds;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dds;-><init>(Lcom/google/android/gms/internal/ads/ddo;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/ddp;->a:Lcom/google/android/gms/internal/ads/ddp;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/ddq;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ddq;-><init>(Lcom/google/android/gms/internal/ads/ddo;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/ddp;->b:Lcom/google/android/gms/internal/ads/ddp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ddo;)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ddp;-><init>()V

    return-void
.end method

.method static a()Lcom/google/android/gms/internal/ads/ddp;
    .locals 1

    .prologue
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/ddp;->a:Lcom/google/android/gms/internal/ads/ddp;

    return-object v0
.end method

.method static b()Lcom/google/android/gms/internal/ads/ddp;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/ddp;->b:Lcom/google/android/gms/internal/ads/ddp;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List",
            "<T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/Object;J)V
.end method
