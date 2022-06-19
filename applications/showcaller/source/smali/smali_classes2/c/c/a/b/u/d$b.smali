.class Lc/c/a/b/u/d$b;
.super Lc/c/a/b/u/f;
.source "TextAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/u/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Lc/c/a/b/u/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/TextPaint;

.field final synthetic b:Lc/c/a/b/u/f;

.field final synthetic c:Lc/c/a/b/u/d;


# direct methods
.method constructor <init>(Lc/c/a/b/u/d;Landroid/text/TextPaint;Lc/c/a/b/u/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/b/u/d$b;->c:Lc/c/a/b/u/d;

    iput-object p2, p0, Lc/c/a/b/u/d$b;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Lc/c/a/b/u/d$b;->b:Lc/c/a/b/u/f;

    invoke-direct {p0}, Lc/c/a/b/u/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/b/u/d$b;->b:Lc/c/a/b/u/f;

    invoke-virtual {v0, p1}, Lc/c/a/b/u/f;->a(I)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/b/u/d$b;->c:Lc/c/a/b/u/d;

    iget-object v1, p0, Lc/c/a/b/u/d$b;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Lc/c/a/b/u/d;->l(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 2
    iget-object v0, p0, Lc/c/a/b/u/d$b;->b:Lc/c/a/b/u/f;

    invoke-virtual {v0, p1, p2}, Lc/c/a/b/u/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
