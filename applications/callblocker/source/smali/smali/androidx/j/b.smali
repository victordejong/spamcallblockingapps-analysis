.class public Landroidx/j/b;
.super Landroidx/j/q;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroidx/j/q;-><init>()V

    .line 38
    invoke-direct {p0}, Landroidx/j/b;->s()V

    .line 39
    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-virtual {p0, v2}, Landroidx/j/b;->a(I)Landroidx/j/q;

    .line 48
    new-instance v0, Landroidx/j/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/j/d;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/j/b;->a(Landroidx/j/m;)Landroidx/j/q;

    move-result-object v0

    new-instance v1, Landroidx/j/c;

    invoke-direct {v1}, Landroidx/j/c;-><init>()V

    .line 49
    invoke-virtual {v0, v1}, Landroidx/j/q;->a(Landroidx/j/m;)Landroidx/j/q;

    move-result-object v0

    new-instance v1, Landroidx/j/d;

    invoke-direct {v1, v2}, Landroidx/j/d;-><init>(I)V

    .line 50
    invoke-virtual {v0, v1}, Landroidx/j/q;->a(Landroidx/j/m;)Landroidx/j/q;

    .line 51
    return-void
.end method
