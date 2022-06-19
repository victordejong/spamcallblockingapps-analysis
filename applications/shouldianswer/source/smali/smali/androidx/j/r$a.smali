.class Landroidx/j/r$a;
.super Landroidx/j/o;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/j/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/j/r;


# direct methods
.method constructor <init>(Landroidx/j/r;)V
    .locals 0

    .line 423
    invoke-direct {p0}, Landroidx/j/o;-><init>()V

    .line 424
    iput-object p1, p0, Landroidx/j/r$a;->a:Landroidx/j/r;

    return-void
.end method


# virtual methods
.method public b(Landroidx/j/n;)V
    .locals 2

    .line 437
    iget-object v0, p0, Landroidx/j/r$a;->a:Landroidx/j/r;

    iget v1, v0, Landroidx/j/r;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroidx/j/r;->a:I

    .line 438
    iget-object v0, p0, Landroidx/j/r$a;->a:Landroidx/j/r;

    iget v0, v0, Landroidx/j/r;->a:I

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Landroidx/j/r$a;->a:Landroidx/j/r;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/j/r;->b:Z

    .line 441
    invoke-virtual {v0}, Landroidx/j/r;->end()V

    .line 443
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/j/n;->removeListener(Landroidx/j/n$d;)Landroidx/j/n;

    return-void
.end method

.method public e(Landroidx/j/n;)V
    .locals 1

    .line 429
    iget-object p1, p0, Landroidx/j/r$a;->a:Landroidx/j/r;

    iget-boolean p1, p1, Landroidx/j/r;->b:Z

    if-nez p1, :cond_0

    .line 430
    iget-object p1, p0, Landroidx/j/r$a;->a:Landroidx/j/r;

    invoke-virtual {p1}, Landroidx/j/r;->start()V

    .line 431
    iget-object p1, p0, Landroidx/j/r$a;->a:Landroidx/j/r;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/j/r;->b:Z

    :cond_0
    return-void
.end method
