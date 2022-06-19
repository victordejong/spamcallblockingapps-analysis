.class final Landroidx/constraintlayout/motion/widget/MotionLayout$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:I

.field d:I

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final synthetic i:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 0

    .line 1362
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->i:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 1363
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    .line 1364
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->b:F

    const/4 p1, -0x1

    .line 1365
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    .line 1366
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    const-string p1, "motion.progress"

    .line 1367
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->e:Ljava/lang/String;

    const-string p1, "motion.velocity"

    .line 1368
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->f:Ljava/lang/String;

    const-string p1, "motion.StartState"

    .line 1369
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->g:Ljava/lang/String;

    const-string p1, "motion.EndState"

    .line 1370
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 1373
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    if-eq v2, v1, :cond_3

    :cond_0
    if-ne v0, v1, :cond_1

    .line 1375
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->i:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->b(I)V

    goto :goto_0

    .line 1376
    :cond_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    if-ne v2, v1, :cond_2

    .line 1377
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->i:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2, v0, v1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(III)V

    goto :goto_0

    .line 1379
    :cond_2
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->i:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    .line 1381
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->i:Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v2, Landroidx/constraintlayout/motion/widget/MotionLayout$h;->b:I

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->a(I)V

    .line 1383
    :cond_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->b:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1384
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 1387
    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->i:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    return-void

    .line 1390
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->i:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->b:F

    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(FF)V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1391
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->a:F

    .line 1392
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->b:F

    .line 1393
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->c:I

    .line 1394
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$f;->d:I

    return-void
.end method
