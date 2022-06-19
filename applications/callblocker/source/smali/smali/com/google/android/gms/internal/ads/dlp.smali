.class public final Lcom/google/android/gms/internal/ads/dlp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public c:J

.field private d:Ljava/lang/Object;

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 9
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dlp;->f:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dkr;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;IJJZ)Lcom/google/android/gms/internal/ads/dlp;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dlp;->d:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dlp;->a:Ljava/lang/Object;

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/dlp;->b:I

    .line 5
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/dlp;->c:J

    .line 6
    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/dlp;->f:J

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dlp;->e:Z

    .line 8
    return-object p0
.end method
