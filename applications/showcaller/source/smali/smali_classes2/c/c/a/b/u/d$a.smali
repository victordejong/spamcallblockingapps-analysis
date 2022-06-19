.class Lc/c/a/b/u/d$a;
.super Landroidx/core/content/d/f$c;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/u/d;->h(Landroid/content/Context;Lc/c/a/b/u/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/c/a/b/u/f;

.field final synthetic b:Lc/c/a/b/u/d;


# direct methods
.method constructor <init>(Lc/c/a/b/u/d;Lc/c/a/b/u/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/b/u/d$a;->b:Lc/c/a/b/u/d;

    iput-object p2, p0, Lc/c/a/b/u/d$a;->a:Lc/c/a/b/u/f;

    invoke-direct {p0}, Landroidx/core/content/d/f$c;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/b/u/d$a;->b:Lc/c/a/b/u/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc/c/a/b/u/d;->c(Lc/c/a/b/u/d;Z)Z

    .line 2
    iget-object v0, p0, Lc/c/a/b/u/d$a;->a:Lc/c/a/b/u/f;

    invoke-virtual {v0, p1}, Lc/c/a/b/u/f;->a(I)V

    return-void
.end method

.method public e(Landroid/graphics/Typeface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/b/u/d$a;->b:Lc/c/a/b/u/d;

    iget v1, v0, Lc/c/a/b/u/d;->f:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {v0, p1}, Lc/c/a/b/u/d;->b(Lc/c/a/b/u/d;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2
    iget-object p1, p0, Lc/c/a/b/u/d$a;->b:Lc/c/a/b/u/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lc/c/a/b/u/d;->c(Lc/c/a/b/u/d;Z)Z

    .line 3
    iget-object p1, p0, Lc/c/a/b/u/d$a;->a:Lc/c/a/b/u/f;

    iget-object v0, p0, Lc/c/a/b/u/d$a;->b:Lc/c/a/b/u/d;

    invoke-static {v0}, Lc/c/a/b/u/d;->a(Lc/c/a/b/u/d;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lc/c/a/b/u/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
