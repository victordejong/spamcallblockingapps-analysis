.class public Lz3/e;
.super Landroid/support/v4/media/a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/text/TextPaint;

.field public final synthetic b:Landroid/support/v4/media/a;

.field public final synthetic c:Lz3/d;


# direct methods
.method public constructor <init>(Lz3/d;Landroid/text/TextPaint;Landroid/support/v4/media/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz3/e;->c:Lz3/d;

    iput-object p2, p0, Lz3/e;->a:Landroid/text/TextPaint;

    iput-object p3, p0, Lz3/e;->b:Landroid/support/v4/media/a;

    invoke-direct {p0}, Landroid/support/v4/media/a;-><init>()V

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz3/e;->b:Landroid/support/v4/media/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/a;->A(I)V

    return-void
.end method

.method public B(Landroid/graphics/Typeface;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lz3/e;->c:Lz3/d;

    iget-object v1, p0, Lz3/e;->a:Landroid/text/TextPaint;

    invoke-virtual {v0, v1, p1}, Lz3/d;->g(Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    .line 2
    iget-object v0, p0, Lz3/e;->b:Landroid/support/v4/media/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/a;->B(Landroid/graphics/Typeface;Z)V

    return-void
.end method
