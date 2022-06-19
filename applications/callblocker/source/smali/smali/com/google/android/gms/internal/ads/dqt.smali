.class public final Lcom/google/android/gms/internal/ads/dqt;
.super Lcom/google/android/gms/internal/ads/dln;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static final b:Ljava/lang/Object;


# instance fields
.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J

.field private final g:Z

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dqt;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(JJJJZZ)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dln;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dqt;->c:J

    .line 5
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/dqt;->d:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dqt;->e:J

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dqt;->f:J

    .line 8
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/dqt;->g:Z

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dqt;->h:Z

    .line 10
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 13

    .prologue
    const-wide/16 v6, 0x0

    .line 1
    const/4 v11, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move-wide v8, v6

    move/from16 v10, p3

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/dqt;-><init>(JJJJZZ)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/gms/internal/ads/dqt;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final a(ILcom/google/android/gms/internal/ads/dlo;ZJ)Lcom/google/android/gms/internal/ads/dlo;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    .line 12
    const/4 v0, 0x1

    invoke-static {p1, v4, v0}, Lcom/google/android/gms/internal/ads/drz;->a(III)I

    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dqt;->g:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dqt;->d:J

    .line 15
    const/4 v1, 0x0

    iput-object v1, p2, Lcom/google/android/gms/internal/ads/dlo;->a:Ljava/lang/Object;

    .line 16
    iput-wide v6, p2, Lcom/google/android/gms/internal/ads/dlo;->b:J

    .line 17
    iput-wide v6, p2, Lcom/google/android/gms/internal/ads/dlo;->c:J

    .line 18
    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/dlo;->d:Z

    .line 19
    iput-boolean v4, p2, Lcom/google/android/gms/internal/ads/dlo;->e:Z

    .line 20
    iput-wide v8, p2, Lcom/google/android/gms/internal/ads/dlo;->h:J

    .line 21
    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/dlo;->i:J

    .line 22
    iput v4, p2, Lcom/google/android/gms/internal/ads/dlo;->f:I

    .line 23
    iput v4, p2, Lcom/google/android/gms/internal/ads/dlo;->g:I

    .line 24
    iput-wide v8, p2, Lcom/google/android/gms/internal/ads/dlo;->j:J

    .line 26
    return-object p2
.end method

.method public final a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 28
    const/4 v0, 0x1

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ads/drz;->a(III)I

    .line 29
    if-eqz p3, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/dqt;->b:Ljava/lang/Object;

    .line 30
    :goto_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dqt;->c:J

    const-wide/16 v6, 0x0

    move-object v0, p2

    move-object v2, v1

    move v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/dlp;->a(Ljava/lang/Object;Ljava/lang/Object;IJJZ)Lcom/google/android/gms/internal/ads/dlp;

    move-result-object v0

    return-object v0

    .line 29
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method
