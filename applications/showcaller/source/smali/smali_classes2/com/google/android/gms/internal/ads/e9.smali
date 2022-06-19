.class public final Lcom/google/android/gms/internal/ads/e9;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private a:Landroid/net/Uri;

.field private final b:I

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/e9;->b:I

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/e9;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/e9;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/e9;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public final b(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/e9;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/e9;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/e9;->c:Ljava/util/Map;

    return-object p0
.end method

.method public final c(J)Lcom/google/android/gms/internal/ads/e9;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/e9;->d:J

    return-object p0
.end method

.method public final d(I)Lcom/google/android/gms/internal/ads/e9;
    .locals 0

    const/4 p1, 0x6

    iput p1, p0, Lcom/google/android/gms/internal/ads/e9;->e:I

    return-object p0
.end method

.method public final e()Lcom/google/android/gms/internal/ads/fb;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/e9;->a:Landroid/net/Uri;

    if-eqz v2, :cond_0

    new-instance v16, Lcom/google/android/gms/internal/ads/fb;

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/e9;->c:Ljava/util/Map;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/e9;->d:J

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    iget v13, v0, Lcom/google/android/gms/internal/ads/e9;->e:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, v16

    .line 2
    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/fb;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/fa;)V

    return-object v16

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The uri must be set."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
