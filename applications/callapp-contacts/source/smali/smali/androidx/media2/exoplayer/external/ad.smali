.class public final Landroidx/media2/exoplayer/external/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/ad;


# instance fields
.field public final b:F

.field public final c:F

.field public final d:Z

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Landroidx/media2/exoplayer/external/ad;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ad;-><init>(F)V

    sput-object v0, Landroidx/media2/exoplayer/external/ad;->a:Landroidx/media2/exoplayer/external/ad;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/ad;-><init>(FFZ)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/ad;-><init>(FFZ)V

    return-void
.end method

.method public constructor <init>(FFZ)V
    .locals 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 77
    :goto_0
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 78
    :goto_1
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 79
    iput p1, p0, Landroidx/media2/exoplayer/external/ad;->b:F

    .line 80
    iput p2, p0, Landroidx/media2/exoplayer/external/ad;->c:F

    .line 81
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/ad;->d:Z

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    .line 82
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/ad;->e:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/ad;

    .line 105
    iget v2, p0, Landroidx/media2/exoplayer/external/ad;->b:F

    iget v3, p1, Landroidx/media2/exoplayer/external/ad;->b:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Landroidx/media2/exoplayer/external/ad;->c:F

    iget v3, p1, Landroidx/media2/exoplayer/external/ad;->c:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/ad;->d:Z

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/ad;->d:Z

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 113
    iget v0, p0, Landroidx/media2/exoplayer/external/ad;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget v1, p0, Landroidx/media2/exoplayer/external/ad;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/ad;->d:Z

    add-int/2addr v0, v1

    return v0
.end method
