.class public final Lcom/google/android/gms/internal/ads/xu3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Lcom/google/android/gms/internal/ads/u4;

.field public final g:I

.field public final h:[J

.field public final i:[J

.field public final j:I

.field private final k:[Lcom/google/android/gms/internal/ads/yu3;


# direct methods
.method public constructor <init>(IIJJJLcom/google/android/gms/internal/ads/u4;I[Lcom/google/android/gms/internal/ads/yu3;I[J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/xu3;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/xu3;->b:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/xu3;->c:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/xu3;->d:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/xu3;->e:J

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/xu3;->f:Lcom/google/android/gms/internal/ads/u4;

    iput p10, p0, Lcom/google/android/gms/internal/ads/xu3;->g:I

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/xu3;->k:[Lcom/google/android/gms/internal/ads/yu3;

    iput p12, p0, Lcom/google/android/gms/internal/ads/xu3;->j:I

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/xu3;->h:[J

    iput-object p14, p0, Lcom/google/android/gms/internal/ads/xu3;->i:[J

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/yu3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xu3;->k:[Lcom/google/android/gms/internal/ads/yu3;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object p1, v0, p1

    return-object p1
.end method
