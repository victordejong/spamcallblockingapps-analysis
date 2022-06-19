.class Landroidx/d/b/a$a;
.super Landroidx/core/h/a/d;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/d/b/a;


# direct methods
.method constructor <init>(Landroidx/d/b/a;)V
    .locals 0

    .prologue
    .line 1238
    iput-object p1, p0, Landroidx/d/b/a$a;->a:Landroidx/d/b/a;

    invoke-direct {p0}, Landroidx/core/h/a/d;-><init>()V

    .line 1239
    return-void
.end method


# virtual methods
.method public a(I)Landroidx/core/h/a/c;
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Landroidx/d/b/a$a;->a:Landroidx/d/b/a;

    .line 1246
    invoke-virtual {v0, p1}, Landroidx/d/b/a;->a(I)Landroidx/core/h/a/c;

    move-result-object v0

    .line 1247
    invoke-static {v0}, Landroidx/core/h/a/c;->a(Landroidx/core/h/a/c;)Landroidx/core/h/a/c;

    move-result-object v0

    return-object v0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Landroidx/d/b/a$a;->a:Landroidx/d/b/a;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/d/b/a;->a(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public b(I)Landroidx/core/h/a/c;
    .locals 2

    .prologue
    .line 1257
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroidx/d/b/a$a;->a:Landroidx/d/b/a;

    iget v0, v0, Landroidx/d/b/a;->a:I

    .line 1259
    :goto_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 1260
    const/4 v0, 0x0

    .line 1262
    :goto_1
    return-object v0

    .line 1257
    :cond_0
    iget-object v0, p0, Landroidx/d/b/a$a;->a:Landroidx/d/b/a;

    iget v0, v0, Landroidx/d/b/a;->b:I

    goto :goto_0

    .line 1262
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/d/b/a$a;->a(I)Landroidx/core/h/a/c;

    move-result-object v0

    goto :goto_1
.end method
