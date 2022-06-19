.class Le/c/a/b/t/d$a;
.super Landroidx/core/content/c/f$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/c/a/b/t/d;->h(Landroid/content/Context;Le/c/a/b/t/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le/c/a/b/t/f;

.field final synthetic b:Le/c/a/b/t/d;


# direct methods
.method constructor <init>(Le/c/a/b/t/d;Le/c/a/b/t/f;)V
    .locals 0

    iput-object p1, p0, Le/c/a/b/t/d$a;->b:Le/c/a/b/t/d;

    iput-object p2, p0, Le/c/a/b/t/d$a;->a:Le/c/a/b/t/f;

    invoke-direct {p0}, Landroidx/core/content/c/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 2

    iget-object v0, p0, Le/c/a/b/t/d$a;->b:Le/c/a/b/t/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Le/c/a/b/t/d;->c(Le/c/a/b/t/d;Z)Z

    iget-object v0, p0, Le/c/a/b/t/d$a;->a:Le/c/a/b/t/f;

    invoke-virtual {v0, p1}, Le/c/a/b/t/f;->a(I)V

    return-void
.end method

.method public d(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Le/c/a/b/t/d$a;->b:Le/c/a/b/t/d;

    iget v1, v0, Le/c/a/b/t/d;->d:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {v0, p1}, Le/c/a/b/t/d;->b(Le/c/a/b/t/d;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p1, p0, Le/c/a/b/t/d$a;->b:Le/c/a/b/t/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Le/c/a/b/t/d;->c(Le/c/a/b/t/d;Z)Z

    iget-object p1, p0, Le/c/a/b/t/d$a;->a:Le/c/a/b/t/f;

    iget-object v0, p0, Le/c/a/b/t/d$a;->b:Le/c/a/b/t/d;

    invoke-static {v0}, Le/c/a/b/t/d;->a(Le/c/a/b/t/d;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Le/c/a/b/t/f;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method
