.class final Landroidx/constraintlayout/motion/widget/r$f;
.super Landroidx/constraintlayout/motion/widget/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/d;)Z
    .locals 6

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    .line 240
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/r$f;->a(FJLandroid/view/View;Landroidx/constraintlayout/motion/widget/d;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 241
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/r$f;->f:Z

    return p1
.end method
