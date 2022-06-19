.class Lb/h/l/e0$j;
.super Lb/h/l/e0$i;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/l/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# instance fields
.field private o:Lb/h/e/b;

.field private p:Lb/h/e/b;

.field private q:Lb/h/e/b;


# direct methods
.method constructor <init>(Lb/h/l/e0;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lb/h/l/e0$i;-><init>(Lb/h/l/e0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lb/h/l/e0$j;->o:Lb/h/e/b;

    .line 3
    iput-object p1, p0, Lb/h/l/e0$j;->p:Lb/h/e/b;

    .line 4
    iput-object p1, p0, Lb/h/l/e0$j;->q:Lb/h/e/b;

    return-void
.end method

.method constructor <init>(Lb/h/l/e0;Lb/h/l/e0$j;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lb/h/l/e0$i;-><init>(Lb/h/l/e0;Lb/h/l/e0$i;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lb/h/l/e0$j;->o:Lb/h/e/b;

    .line 7
    iput-object p1, p0, Lb/h/l/e0$j;->p:Lb/h/e/b;

    .line 8
    iput-object p1, p0, Lb/h/l/e0$j;->q:Lb/h/e/b;

    return-void
.end method


# virtual methods
.method h()Lb/h/e/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/l/e0$j;->p:Lb/h/e/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/h/l/e0$g;->i:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lb/h/e/b;->d(Landroid/graphics/Insets;)Lb/h/e/b;

    move-result-object v0

    iput-object v0, p0, Lb/h/l/e0$j;->p:Lb/h/e/b;

    .line 4
    :cond_0
    iget-object v0, p0, Lb/h/l/e0$j;->p:Lb/h/e/b;

    return-object v0
.end method

.method j()Lb/h/e/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/l/e0$j;->o:Lb/h/e/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/h/l/e0$g;->i:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lb/h/e/b;->d(Landroid/graphics/Insets;)Lb/h/e/b;

    move-result-object v0

    iput-object v0, p0, Lb/h/l/e0$j;->o:Lb/h/e/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lb/h/l/e0$j;->o:Lb/h/e/b;

    return-object v0
.end method

.method l()Lb/h/e/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/l/e0$j;->q:Lb/h/e/b;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/h/l/e0$g;->i:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Lb/h/e/b;->d(Landroid/graphics/Insets;)Lb/h/e/b;

    move-result-object v0

    iput-object v0, p0, Lb/h/l/e0$j;->q:Lb/h/e/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lb/h/l/e0$j;->q:Lb/h/e/b;

    return-object v0
.end method

.method m(IIII)Lb/h/l/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/l/e0$g;->i:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lb/h/l/e0;->w(Landroid/view/WindowInsets;)Lb/h/l/e0;

    move-result-object p1

    return-object p1
.end method

.method public s(Lb/h/e/b;)V
    .locals 0

    return-void
.end method
