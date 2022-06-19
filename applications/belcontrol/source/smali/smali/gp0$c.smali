.class public Lgp0$c;
.super Lgp0$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgp0$b<",
        "Lgp0$c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lgp0$b;-><init>()V

    iget-object v0, p0, Lgp0$b;->a:Lgp0;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lgp0;->p:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroid/content/res/TypedArray;)Lgp0$b;
    .locals 0

    invoke-virtual {p0, p1}, Lgp0$c;->v(Landroid/content/res/TypedArray;)Lgp0$c;

    return-object p0
.end method

.method public bridge synthetic d()Lgp0$b;
    .locals 0

    invoke-virtual {p0}, Lgp0$c;->w()Lgp0$c;

    return-object p0
.end method

.method public v(Landroid/content/res/TypedArray;)Lgp0$c;
    .locals 2

    invoke-super {p0, p1}, Lgp0$b;->c(Landroid/content/res/TypedArray;)Lgp0$b;

    sget v0, Lfp0;->ShimmerFrameLayout_shimmer_base_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgp0$b;->a:Lgp0;

    iget v1, v1, Lgp0;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lgp0$c;->x(I)Lgp0$c;

    :cond_0
    sget v0, Lfp0;->ShimmerFrameLayout_shimmer_highlight_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgp0$b;->a:Lgp0;

    iget v1, v1, Lgp0;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lgp0$c;->y(I)Lgp0$c;

    :cond_1
    invoke-virtual {p0}, Lgp0$c;->w()Lgp0$c;

    return-object p0
.end method

.method public w()Lgp0$c;
    .locals 0

    return-object p0
.end method

.method public x(I)Lgp0$c;
    .locals 3

    iget-object v0, p0, Lgp0$b;->a:Lgp0;

    iget v1, v0, Lgp0;->e:I

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    const v2, 0xffffff

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    iput p1, v0, Lgp0;->e:I

    invoke-virtual {p0}, Lgp0$c;->w()Lgp0$c;

    return-object p0
.end method

.method public y(I)Lgp0$c;
    .locals 1

    iget-object v0, p0, Lgp0$b;->a:Lgp0;

    iput p1, v0, Lgp0;->d:I

    invoke-virtual {p0}, Lgp0$c;->w()Lgp0$c;

    return-object p0
.end method
