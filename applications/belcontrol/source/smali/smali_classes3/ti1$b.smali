.class public Lti1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lhi1$a;
.implements Lqi1$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lti1;


# direct methods
.method public constructor <init>(Lti1;)V
    .locals 0

    iput-object p1, p0, Lti1$b;->a:Lti1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lti1;Lti1$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lti1$b;-><init>(Lti1;)V

    return-void
.end method


# virtual methods
.method public a(Lhi1;)V
    .locals 1

    iget-object v0, p0, Lti1$b;->a:Lti1;

    invoke-static {v0}, Lti1;->f(Lti1;)Lhi1$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti1$b;->a:Lti1;

    invoke-static {v0}, Lti1;->f(Lti1;)Lhi1$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lhi1$a;->a(Lhi1;)V

    :cond_0
    return-void
.end method

.method public b(Lhi1;)V
    .locals 1

    iget-object v0, p0, Lti1$b;->a:Lti1;

    invoke-static {v0}, Lti1;->f(Lti1;)Lhi1$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti1$b;->a:Lti1;

    invoke-static {v0}, Lti1;->f(Lti1;)Lhi1$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lhi1$a;->b(Lhi1;)V

    :cond_0
    return-void
.end method

.method public c(Lhi1;)V
    .locals 1

    iget-object v0, p0, Lti1$b;->a:Lti1;

    invoke-static {v0}, Lti1;->f(Lti1;)Lhi1$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti1$b;->a:Lti1;

    invoke-static {v0}, Lti1;->f(Lti1;)Lhi1$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lhi1$a;->c(Lhi1;)V

    :cond_0
    return-void
.end method

.method public d(Lhi1;)V
    .locals 1

    iget-object v0, p0, Lti1$b;->a:Lti1;

    invoke-static {v0}, Lti1;->f(Lti1;)Lhi1$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti1$b;->a:Lti1;

    invoke-static {v0}, Lti1;->f(Lti1;)Lhi1$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lhi1$a;->d(Lhi1;)V

    :cond_0
    iget-object v0, p0, Lti1$b;->a:Lti1;

    invoke-static {v0}, Lti1;->h(Lti1;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lti1$b;->a:Lti1;

    invoke-static {p1}, Lti1;->h(Lti1;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lti1$b;->a:Lti1;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lti1;->g(Lti1;Lhi1$a;)Lhi1$a;

    :cond_1
    return-void
.end method

.method public e(Lqi1;)V
    .locals 6

    invoke-virtual {p1}, Lqi1;->w()F

    move-result v0

    iget-object v1, p0, Lti1$b;->a:Lti1;

    invoke-static {v1}, Lti1;->h(Lti1;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lti1$d;

    iget v1, p1, Lti1$d;->a:I

    and-int/lit16 v1, v1, 0x1ff

    if-eqz v1, :cond_0

    iget-object v1, p0, Lti1$b;->a:Lti1;

    invoke-static {v1}, Lti1;->i(Lti1;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object p1, p1, Lti1$d;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lti1$c;

    iget v4, v3, Lti1$c;->b:F

    iget v5, v3, Lti1$c;->c:F

    mul-float v5, v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lti1$b;->a:Lti1;

    iget v3, v3, Lti1$c;->a:I

    invoke-static {v5, v3, v4}, Lti1;->j(Lti1;IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lti1$b;->a:Lti1;

    invoke-static {p1}, Lti1;->i(Lti1;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method
