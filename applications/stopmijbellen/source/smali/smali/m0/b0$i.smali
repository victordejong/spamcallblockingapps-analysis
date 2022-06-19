.class public Lm0/b0$i;
.super Lm0/b0$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public n:Lf0/b;

.field public o:Lf0/b;

.field public p:Lf0/b;


# direct methods
.method public constructor <init>(Lm0/b0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lm0/b0$h;-><init>(Lm0/b0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lm0/b0$i;->n:Lf0/b;

    .line 3
    iput-object p1, p0, Lm0/b0$i;->o:Lf0/b;

    .line 4
    iput-object p1, p0, Lm0/b0$i;->p:Lf0/b;

    return-void
.end method


# virtual methods
.method public f()Lf0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/b0$i;->o:Lf0/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm0/b0$f;->c:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lf0/b;->b(Landroid/graphics/Insets;)Lf0/b;

    move-result-object v0

    iput-object v0, p0, Lm0/b0$i;->o:Lf0/b;

    .line 4
    :cond_0
    iget-object v0, p0, Lm0/b0$i;->o:Lf0/b;

    return-object v0
.end method

.method public h()Lf0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/b0$i;->n:Lf0/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm0/b0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lf0/b;->b(Landroid/graphics/Insets;)Lf0/b;

    move-result-object v0

    iput-object v0, p0, Lm0/b0$i;->n:Lf0/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lm0/b0$i;->n:Lf0/b;

    return-object v0
.end method

.method public j(IIII)Lm0/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/b0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lm0/b0;->i(Landroid/view/WindowInsets;)Lm0/b0;

    move-result-object p1

    return-object p1
.end method

.method public o(Lf0/b;)V
    .locals 0

    return-void
.end method
