.class Landroidx/core/widget/a$a;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:J

.field private f:J

.field private g:I

.field private h:I

.field private i:J

.field private j:F

.field private k:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/core/widget/a$a;->e:J

    .line 758
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/core/widget/a$a;->i:J

    .line 759
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/core/widget/a$a;->f:J

    .line 760
    iput v2, p0, Landroidx/core/widget/a$a;->g:I

    .line 761
    iput v2, p0, Landroidx/core/widget/a$a;->h:I

    .line 762
    return-void
.end method

.method private a(F)F
    .locals 2

    .prologue
    .line 820
    const/high16 v0, -0x3f800000    # -4.0f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private a(J)F
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 800
    iget-wide v2, p0, Landroidx/core/widget/a$a;->e:J

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 807
    :goto_0
    return v0

    .line 802
    :cond_0
    iget-wide v2, p0, Landroidx/core/widget/a$a;->i:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iget-wide v2, p0, Landroidx/core/widget/a$a;->i:J

    cmp-long v1, p1, v2

    if-gez v1, :cond_2

    .line 803
    :cond_1
    iget-wide v2, p0, Landroidx/core/widget/a$a;->e:J

    sub-long v2, p1, v2

    .line 804
    const/high16 v1, 0x3f000000    # 0.5f

    long-to-float v2, v2

    iget v3, p0, Landroidx/core/widget/a$a;->a:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2, v0, v6}, Landroidx/core/widget/a;->a(FFF)F

    move-result v0

    mul-float/2addr v0, v1

    goto :goto_0

    .line 806
    :cond_2
    iget-wide v2, p0, Landroidx/core/widget/a$a;->i:J

    sub-long v2, p1, v2

    .line 807
    iget v1, p0, Landroidx/core/widget/a$a;->j:F

    sub-float v1, v6, v1

    iget v4, p0, Landroidx/core/widget/a$a;->j:F

    long-to-float v2, v2

    iget v3, p0, Landroidx/core/widget/a$a;->k:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 808
    invoke-static {v2, v0, v6}, Landroidx/core/widget/a;->a(FFF)F

    move-result v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    .line 807
    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 776
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/widget/a$a;->e:J

    .line 777
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/core/widget/a$a;->i:J

    .line 778
    iget-wide v0, p0, Landroidx/core/widget/a$a;->e:J

    iput-wide v0, p0, Landroidx/core/widget/a$a;->f:J

    .line 779
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/core/widget/a$a;->j:F

    .line 780
    iput v2, p0, Landroidx/core/widget/a$a;->g:I

    .line 781
    iput v2, p0, Landroidx/core/widget/a$a;->h:I

    .line 782
    return-void
.end method

.method public a(FF)V
    .locals 0

    .prologue
    .line 852
    iput p1, p0, Landroidx/core/widget/a$a;->c:F

    .line 853
    iput p2, p0, Landroidx/core/widget/a$a;->d:F

    .line 854
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 765
    iput p1, p0, Landroidx/core/widget/a$a;->a:I

    .line 766
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 788
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 789
    iget-wide v2, p0, Landroidx/core/widget/a$a;->e:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    const/4 v3, 0x0

    iget v4, p0, Landroidx/core/widget/a$a;->b:I

    invoke-static {v2, v3, v4}, Landroidx/core/widget/a;->a(III)I

    move-result v2

    iput v2, p0, Landroidx/core/widget/a$a;->k:I

    .line 790
    invoke-direct {p0, v0, v1}, Landroidx/core/widget/a$a;->a(J)F

    move-result v2

    iput v2, p0, Landroidx/core/widget/a$a;->j:F

    .line 791
    iput-wide v0, p0, Landroidx/core/widget/a$a;->i:J

    .line 792
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 769
    iput p1, p0, Landroidx/core/widget/a$a;->b:I

    .line 770
    return-void
.end method

.method public c()Z
    .locals 6

    .prologue
    .line 795
    iget-wide v0, p0, Landroidx/core/widget/a$a;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 796
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/core/widget/a$a;->i:J

    iget v4, p0, Landroidx/core/widget/a$a;->k:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 795
    :goto_0
    return v0

    .line 796
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 831
    iget-wide v0, p0, Landroidx/core/widget/a$a;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 832
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 835
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 836
    invoke-direct {p0, v0, v1}, Landroidx/core/widget/a$a;->a(J)F

    move-result v2

    .line 837
    invoke-direct {p0, v2}, Landroidx/core/widget/a$a;->a(F)F

    move-result v2

    .line 838
    iget-wide v4, p0, Landroidx/core/widget/a$a;->f:J

    sub-long v4, v0, v4

    .line 840
    iput-wide v0, p0, Landroidx/core/widget/a$a;->f:J

    .line 841
    long-to-float v0, v4

    mul-float/2addr v0, v2

    iget v1, p0, Landroidx/core/widget/a$a;->c:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidx/core/widget/a$a;->g:I

    .line 842
    long-to-float v0, v4

    mul-float/2addr v0, v2

    iget v1, p0, Landroidx/core/widget/a$a;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidx/core/widget/a$a;->h:I

    .line 843
    return-void
.end method

.method public e()I
    .locals 2

    .prologue
    .line 857
    iget v0, p0, Landroidx/core/widget/a$a;->c:F

    iget v1, p0, Landroidx/core/widget/a$a;->c:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 861
    iget v0, p0, Landroidx/core/widget/a$a;->d:F

    iget v1, p0, Landroidx/core/widget/a$a;->d:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 869
    iget v0, p0, Landroidx/core/widget/a$a;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 877
    iget v0, p0, Landroidx/core/widget/a$a;->h:I

    return v0
.end method
