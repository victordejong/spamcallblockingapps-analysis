.class public final Lcom/google/android/gms/internal/ads/ebh;
.super Lcom/google/android/gms/internal/ads/dwe;
.source "SourceFile"


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

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ebh;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(JJJJZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dwe;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ebh;->c:J

    .line 5
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/ebh;->d:J

    const-wide/16 p1, 0x0

    .line 6
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ebh;->e:J

    .line 7
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ebh;->f:J

    .line 8
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/ebh;->g:Z

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ebh;->h:Z

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 11

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v9, p3

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/ebh;-><init>(JJJJZZ)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/ads/ebh;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final a(ILcom/google/android/gms/internal/ads/dwf;)Lcom/google/android/gms/internal/ads/dwf;
    .locals 4

    const/4 v0, 0x1

    .line 12
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ecr;->a(II)I

    .line 13
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/ebh;->g:Z

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ebh;->d:J

    const/4 v2, 0x0

    .line 14
    iput-object v2, p2, Lcom/google/android/gms/internal/ads/dwf;->a:Ljava/lang/Object;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/dwf;->b:J

    .line 16
    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/dwf;->c:J

    .line 17
    iput-boolean p1, p2, Lcom/google/android/gms/internal/ads/dwf;->d:Z

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p2, Lcom/google/android/gms/internal/ads/dwf;->e:Z

    const-wide/16 v2, 0x0

    .line 19
    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/dwf;->h:J

    .line 20
    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/dwf;->i:J

    .line 21
    iput p1, p2, Lcom/google/android/gms/internal/ads/dwf;->f:I

    .line 22
    iput p1, p2, Lcom/google/android/gms/internal/ads/dwf;->g:I

    .line 23
    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/dwf;->j:J

    return-object p2
.end method

.method public final a(ILcom/google/android/gms/internal/ads/dwg;Z)Lcom/google/android/gms/internal/ads/dwg;
    .locals 2

    const/4 v0, 0x1

    .line 27
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/ecr;->a(II)I

    if-eqz p3, :cond_0

    .line 28
    sget-object p1, Lcom/google/android/gms/internal/ads/ebh;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ebh;->c:J

    .line 1002
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/dwg;->a:Ljava/lang/Object;

    .line 1003
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/dwg;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1004
    iput p1, p2, Lcom/google/android/gms/internal/ads/dwg;->c:I

    .line 1005
    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/dwg;->d:J

    const-wide/16 v0, 0x0

    .line 1006
    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/dwg;->f:J

    .line 1007
    iput-boolean p1, p2, Lcom/google/android/gms/internal/ads/dwg;->e:Z

    return-object p2
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
