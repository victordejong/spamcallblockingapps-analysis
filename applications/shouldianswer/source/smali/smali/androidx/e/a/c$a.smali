.class final Landroidx/e/a/c$a;
.super Ljava/lang/Object;
.source "FlingAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/e/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private final c:Landroidx/e/a/b$a;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x3f79999a    # -4.2f

    .line 202
    iput v0, p0, Landroidx/e/a/c$a;->a:F

    .line 206
    new-instance v0, Landroidx/e/a/b$a;

    invoke-direct {v0}, Landroidx/e/a/b$a;-><init>()V

    iput-object v0, p0, Landroidx/e/a/c$a;->c:Landroidx/e/a/b$a;

    return-void
.end method


# virtual methods
.method a(FFJ)Landroidx/e/a/b$a;
    .locals 5

    .line 217
    iget-object v0, p0, Landroidx/e/a/c$a;->c:Landroidx/e/a/b$a;

    float-to-double v1, p2

    long-to-float p3, p3

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float v3, p3, p4

    iget v4, p0, Landroidx/e/a/c$a;->a:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroidx/e/a/b$a;->b:F

    .line 218
    iget-object v0, p0, Landroidx/e/a/c$a;->c:Landroidx/e/a/b$a;

    iget v1, p0, Landroidx/e/a/c$a;->a:F

    div-float v2, p2, v1

    sub-float/2addr p1, v2

    float-to-double v2, p1

    div-float/2addr p2, v1

    float-to-double p1, p2

    mul-float/2addr v1, p3

    div-float/2addr v1, p4

    float-to-double p3, v1

    .line 219
    invoke-static {p3, p4}, Ljava/lang/Math;->exp(D)D

    move-result-wide p3

    mul-double/2addr p1, p3

    add-double/2addr v2, p1

    double-to-float p1, v2

    iput p1, v0, Landroidx/e/a/b$a;->a:F

    .line 220
    iget-object p1, p0, Landroidx/e/a/c$a;->c:Landroidx/e/a/b$a;

    iget p1, p1, Landroidx/e/a/b$a;->a:F

    iget-object p2, p0, Landroidx/e/a/c$a;->c:Landroidx/e/a/b$a;

    iget p2, p2, Landroidx/e/a/b$a;->b:F

    invoke-virtual {p0, p1, p2}, Landroidx/e/a/c$a;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Landroidx/e/a/c$a;->c:Landroidx/e/a/b$a;

    const/4 p2, 0x0

    iput p2, p1, Landroidx/e/a/b$a;->b:F

    .line 223
    :cond_0
    iget-object p1, p0, Landroidx/e/a/c$a;->c:Landroidx/e/a/b$a;

    return-object p1
.end method

.method a(F)V
    .locals 1

    const v0, -0x3f79999a    # -4.2f

    mul-float/2addr p1, v0

    .line 209
    iput p1, p0, Landroidx/e/a/c$a;->a:F

    return-void
.end method

.method public a(FF)Z
    .locals 0

    .line 233
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Landroidx/e/a/c$a;->b:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method b(F)V
    .locals 1

    const/high16 v0, 0x427a0000    # 62.5f

    mul-float/2addr p1, v0

    .line 237
    iput p1, p0, Landroidx/e/a/c$a;->b:F

    return-void
.end method
