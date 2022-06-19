.class final Lcom/google/android/gms/internal/ads/deq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/deo;

.field private static final b:Lcom/google/android/gms/internal/ads/deo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/deq;->c()Lcom/google/android/gms/internal/ads/deo;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/deq;->a:Lcom/google/android/gms/internal/ads/deo;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/den;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/den;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/deq;->b:Lcom/google/android/gms/internal/ads/deo;

    return-void
.end method

.method static a()Lcom/google/android/gms/internal/ads/deo;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/deq;->a:Lcom/google/android/gms/internal/ads/deo;

    return-object v0
.end method

.method static b()Lcom/google/android/gms/internal/ads/deo;
    .locals 1

    .prologue
    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/deq;->b:Lcom/google/android/gms/internal/ads/deo;

    return-object v0
.end method

.method private static c()Lcom/google/android/gms/internal/ads/deo;
    .locals 2

    .prologue
    .line 3
    :try_start_0
    const-string/jumbo v0, "com.google.protobuf.NewInstanceSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/deo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
