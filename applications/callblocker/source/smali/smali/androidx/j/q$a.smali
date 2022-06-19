.class Landroidx/j/q$a;
.super Landroidx/j/n;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/j/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/j/q;


# direct methods
.method constructor <init>(Landroidx/j/q;)V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Landroidx/j/n;-><init>()V

    .line 434
    iput-object p1, p0, Landroidx/j/q$a;->a:Landroidx/j/q;

    .line 435
    return-void
.end method


# virtual methods
.method public b(Landroidx/j/m;)V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Landroidx/j/q$a;->a:Landroidx/j/q;

    iget v1, v0, Landroidx/j/q;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroidx/j/q;->h:I

    .line 448
    iget-object v0, p0, Landroidx/j/q$a;->a:Landroidx/j/q;

    iget v0, v0, Landroidx/j/q;->h:I

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Landroidx/j/q$a;->a:Landroidx/j/q;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/j/q;->i:Z

    .line 451
    iget-object v0, p0, Landroidx/j/q$a;->a:Landroidx/j/q;

    invoke-virtual {v0}, Landroidx/j/q;->k()V

    .line 453
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/j/m;->b(Landroidx/j/m$c;)Landroidx/j/m;

    .line 454
    return-void
.end method

.method public e(Landroidx/j/m;)V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Landroidx/j/q$a;->a:Landroidx/j/q;

    iget-boolean v0, v0, Landroidx/j/q;->i:Z

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Landroidx/j/q$a;->a:Landroidx/j/q;

    invoke-virtual {v0}, Landroidx/j/q;->j()V

    .line 441
    iget-object v0, p0, Landroidx/j/q$a;->a:Landroidx/j/q;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/j/q;->i:Z

    .line 443
    :cond_0
    return-void
.end method
