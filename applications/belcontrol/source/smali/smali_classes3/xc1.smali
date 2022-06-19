.class public Lxc1;
.super Lrc1;
.source ""


# instance fields
.field public b:I


# direct methods
.method public constructor <init>(Lhc1;)V
    .locals 0

    invoke-direct {p0}, Lrc1;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lxc1;->b:I

    return-void
.end method


# virtual methods
.method public b(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iput v0, p0, Lxc1;->b:I

    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    iget p1, p0, Lxc1;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lxc1;->b:I

    :cond_1
    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lxc1;->b:I

    invoke-static {v0}, Lyc1;->a(I)F

    move-result v0

    return v0
.end method
