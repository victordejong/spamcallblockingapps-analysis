.class Le/c/a/b/t/d$b;
.super Le/c/a/b/t/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/a/b/t/d;->g(Landroid/content/Context;Landroid/text/TextPaint;Le/c/a/b/t/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/text/TextPaint;

.field final synthetic b:Le/c/a/b/t/f;

.field final synthetic c:Le/c/a/b/t/d;


# direct methods
.method constructor <init>(Le/c/a/b/t/d;Landroid/text/TextPaint;Le/c/a/b/t/f;)V
    .locals 0

    iput-object p1, p0, Le/c/a/b/t/d$b;->c:Le/c/a/b/t/d;

    iput-object p2, p0, Le/c/a/b/t/d$b;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Le/c/a/b/t/d$b;->b:Le/c/a/b/t/f;

    invoke-direct {p0}, Le/c/a/b/t/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Le/c/a/b/t/d$b;->b:Le/c/a/b/t/f;

    invoke-virtual {v0, p1}, Le/c/a/b/t/f;->a(I)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;Z)V
    .locals 2

    iget-object v0, p0, Le/c/a/b/t/d$b;->c:Le/c/a/b/t/d;

    iget-object v1, p0, Le/c/a/b/t/d$b;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Le/c/a/b/t/d;->l(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Le/c/a/b/t/d$b;->b:Le/c/a/b/t/f;

    invoke-virtual {v0, p1, p2}, Le/c/a/b/t/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
