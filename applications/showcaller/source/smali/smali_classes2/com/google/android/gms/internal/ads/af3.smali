.class abstract Lcom/google/android/gms/internal/ads/af3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/af3;

.field private static final b:Lcom/google/android/gms/internal/ads/af3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/xe3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/xe3;-><init>(Lcom/google/android/gms/internal/ads/ze3;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/af3;->a:Lcom/google/android/gms/internal/ads/af3;

    new-instance v0, Lcom/google/android/gms/internal/ads/ye3;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/ye3;-><init>(Lcom/google/android/gms/internal/ads/ze3;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/af3;->b:Lcom/google/android/gms/internal/ads/af3;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ze3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d()Lcom/google/android/gms/internal/ads/af3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/af3;->a:Lcom/google/android/gms/internal/ads/af3;

    return-object v0
.end method

.method static e()Lcom/google/android/gms/internal/ads/af3;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/af3;->b:Lcom/google/android/gms/internal/ads/af3;

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
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/Object;J)V
.end method

.method abstract c(Ljava/lang/Object;Ljava/lang/Object;J)V
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
