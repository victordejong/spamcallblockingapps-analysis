.class public abstract Lcom/google/android/gms/internal/ads/dby;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Lcom/google/android/gms/internal/ads/dcb;

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/gms/internal/ads/dby;->b:I

    .line 9
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ads/dby;->c:I

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dby;->e:Z

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dbx;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dby;-><init>()V

    return-void
.end method

.method public static a(J)J
    .locals 4

    .prologue
    .line 13
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method static a([BIIZ)Lcom/google/android/gms/internal/ads/dby;
    .locals 6

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/dca;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dca;-><init>([BIIZLcom/google/android/gms/internal/ads/dbx;)V

    .line 2
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/dby;->c(I)I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-object v0

    .line 4
    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static e(I)I
    .locals 2

    .prologue
    .line 12
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(I)V
.end method

.method public abstract b()D
.end method

.method public abstract b(I)Z
.end method

.method public abstract c()F
.end method

.method public abstract c(I)I
.end method

.method public abstract d()J
.end method

.method public abstract d(I)V
.end method

.method public abstract e()J
.end method

.method public abstract f()I
.end method

.method public abstract g()J
.end method

.method public abstract h()I
.end method

.method public abstract i()Z
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public abstract k()Ljava/lang/String;
.end method

.method public abstract l()Lcom/google/android/gms/internal/ads/dbi;
.end method

.method public abstract m()I
.end method

.method public abstract n()I
.end method

.method public abstract o()I
.end method

.method public abstract p()J
.end method

.method public abstract q()I
.end method

.method public abstract r()J
.end method

.method abstract s()J
.end method

.method public abstract t()Z
.end method

.method public abstract u()I
.end method
