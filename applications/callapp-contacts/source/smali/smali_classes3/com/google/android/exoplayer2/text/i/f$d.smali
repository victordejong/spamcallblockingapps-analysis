.class final Lcom/google/android/exoplayer2/text/i/f$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/CharSequence;

.field public d:I

.field public e:F

.field public f:I

.field public g:I

.field public h:F

.field public i:I

.field public j:F

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 782
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/i/f$d;->a:J

    .line 783
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/i/f$d;->b:J

    const/4 v0, 0x2

    .line 785
    iput v0, p0, Lcom/google/android/exoplayer2/text/i/f$d;->d:I

    const v0, -0x800001

    .line 786
    iput v0, p0, Lcom/google/android/exoplayer2/text/i/f$d;->e:F

    const/4 v1, 0x1

    .line 788
    iput v1, p0, Lcom/google/android/exoplayer2/text/i/f$d;->f:I

    const/4 v1, 0x0

    .line 790
    iput v1, p0, Lcom/google/android/exoplayer2/text/i/f$d;->g:I

    .line 791
    iput v0, p0, Lcom/google/android/exoplayer2/text/i/f$d;->h:F

    const/high16 v0, -0x80000000

    .line 792
    iput v0, p0, Lcom/google/android/exoplayer2/text/i/f$d;->i:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 794
    iput v1, p0, Lcom/google/android/exoplayer2/text/i/f$d;->j:F

    .line 795
    iput v0, p0, Lcom/google/android/exoplayer2/text/i/f$d;->k:I

    return-void
.end method

.method private static a(FI)F
    .locals 4

    const v0, -0x800001

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p0, v0

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    const/4 v3, 0x0

    cmpg-float v3, p0, v3

    if-ltz v3, :cond_0

    cmpl-float v3, p0, v1

    if-lez v3, :cond_1

    :cond_0
    return v1

    :cond_1
    if-eqz v2, :cond_2

    return p0

    :cond_2
    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method private static a(I)F
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static a(IF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    return p1

    .line 908
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_2

    mul-float p1, p1, v1

    return p1

    :cond_2
    sub-float/2addr v0, p1

    mul-float v0, v0, v1

    return v0

    :cond_3
    sub-float/2addr v0, p1

    return v0
.end method

.method private static b(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static c(I)Landroid/text/Layout$Alignment;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 888
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unknown textAlignment: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 886
    :cond_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    .line 883
    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    .line 881
    :cond_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/android/exoplayer2/text/b$a;
    .locals 5

    .line 804
    iget v0, p0, Lcom/google/android/exoplayer2/text/i/f$d;->h:F

    const v1, -0x800001

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/text/i/f$d;->d:I

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/i/f$d;->a(I)F

    move-result v0

    .line 807
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/text/i/f$d;->i:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 809
    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/text/i/f$d;->d:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/text/i/f$d;->b(I)I

    move-result v1

    .line 810
    :goto_1
    new-instance v2, Lcom/google/android/exoplayer2/text/b$a;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/text/b$a;-><init>()V

    iget v3, p0, Lcom/google/android/exoplayer2/text/i/f$d;->d:I

    .line 812
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/i/f$d;->c(I)Landroid/text/Layout$Alignment;

    move-result-object v3

    .line 1581
    iput-object v3, v2, Lcom/google/android/exoplayer2/text/b$a;->c:Landroid/text/Layout$Alignment;

    .line 812
    iget v3, p0, Lcom/google/android/exoplayer2/text/i/f$d;->e:F

    iget v4, p0, Lcom/google/android/exoplayer2/text/i/f$d;->f:I

    .line 813
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/text/i/f$d;->a(FI)F

    move-result v3

    iget v4, p0, Lcom/google/android/exoplayer2/text/i/f$d;->f:I

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/text/b$a;->a(FI)Lcom/google/android/exoplayer2/text/b$a;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/text/i/f$d;->g:I

    .line 1634
    iput v3, v2, Lcom/google/android/exoplayer2/text/b$a;->d:I

    .line 1655
    iput v0, v2, Lcom/google/android/exoplayer2/text/b$a;->e:F

    .line 1675
    iput v1, v2, Lcom/google/android/exoplayer2/text/b$a;->f:I

    .line 816
    iget v3, p0, Lcom/google/android/exoplayer2/text/i/f$d;->j:F

    .line 817
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/text/i/f$d;->a(IF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1727
    iput v0, v2, Lcom/google/android/exoplayer2/text/b$a;->g:F

    .line 817
    iget v0, p0, Lcom/google/android/exoplayer2/text/i/f$d;->k:I

    .line 1805
    iput v0, v2, Lcom/google/android/exoplayer2/text/b$a;->k:I

    .line 820
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/i/f$d;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 2539
    iput-object v0, v2, Lcom/google/android/exoplayer2/text/b$a;->a:Ljava/lang/CharSequence;

    :cond_2
    return-object v2
.end method
