.class public Landroidx/j/b;
.super Landroidx/j/r;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/j/r;-><init>()V

    .line 38
    invoke-direct {p0}, Landroidx/j/b;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Landroidx/j/b;->a(I)Landroidx/j/r;

    .line 48
    new-instance v1, Landroidx/j/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroidx/j/d;-><init>(I)V

    invoke-virtual {p0, v1}, Landroidx/j/b;->a(Landroidx/j/n;)Landroidx/j/r;

    move-result-object v1

    new-instance v2, Landroidx/j/c;

    invoke-direct {v2}, Landroidx/j/c;-><init>()V

    .line 49
    invoke-virtual {v1, v2}, Landroidx/j/r;->a(Landroidx/j/n;)Landroidx/j/r;

    move-result-object v1

    new-instance v2, Landroidx/j/d;

    invoke-direct {v2, v0}, Landroidx/j/d;-><init>(I)V

    .line 50
    invoke-virtual {v1, v2}, Landroidx/j/r;->a(Landroidx/j/n;)Landroidx/j/r;

    return-void
.end method
