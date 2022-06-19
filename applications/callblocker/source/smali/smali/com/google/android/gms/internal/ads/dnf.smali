.class public final Lcom/google/android/gms/internal/ads/dnf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dnm;


# instance fields
.field private final a:I

.field private final b:[I

.field private final c:[J

.field private final d:[J

.field private final e:[J

.field private final f:J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .locals 4

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dnf;->b:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dnf;->c:[J

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dnf;->d:[J

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dnf;->e:[J

    .line 6
    array-length v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dnf;->a:I

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/dnf;->a:I

    if-lez v0, :cond_0

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/dnf;->a:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, p3, v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/dnf;->a:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, p4, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dnf;->f:J

    .line 10
    :goto_0
    return-void

    .line 9
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dnf;->f:J

    goto :goto_0
.end method


# virtual methods
.method public final a(J)J
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dnf;->c:[J

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dnf;->e:[J

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/android/gms/internal/ads/dsn;->a([JJZZ)I

    move-result v1

    .line 15
    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 12
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dnf;->f:J

    return-wide v0
.end method
