.class final Landroidx/constraintlayout/motion/widget/f$b;
.super Landroidx/constraintlayout/motion/widget/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field f:[F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 282
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/f;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 283
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/f$b;->f:[F

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;F)V
    .locals 2

    .line 287
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/f$b;->f:[F

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/f$b;->a(F)F

    move-result p2

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 288
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/f$b;->a:Landroidx/constraintlayout/widget/a;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/f$b;->f:[F

    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/widget/a;->a(Landroid/view/View;[F)V

    return-void
.end method
