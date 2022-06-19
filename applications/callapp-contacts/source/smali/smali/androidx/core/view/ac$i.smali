.class final Landroidx/core/view/ac$i;
.super Landroidx/core/view/ac$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field private c:Landroidx/core/graphics/b;

.field private d:Landroidx/core/graphics/b;

.field private e:Landroidx/core/graphics/b;


# direct methods
.method constructor <init>(Landroidx/core/view/ac;Landroid/view/WindowInsets;)V
    .locals 0

    .line 794
    invoke-direct {p0, p1, p2}, Landroidx/core/view/ac$h;-><init>(Landroidx/core/view/ac;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 789
    iput-object p1, p0, Landroidx/core/view/ac$i;->c:Landroidx/core/graphics/b;

    .line 790
    iput-object p1, p0, Landroidx/core/view/ac$i;->d:Landroidx/core/graphics/b;

    .line 791
    iput-object p1, p0, Landroidx/core/view/ac$i;->e:Landroidx/core/graphics/b;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/ac;Landroidx/core/view/ac$i;)V
    .locals 0

    .line 798
    invoke-direct {p0, p1, p2}, Landroidx/core/view/ac$h;-><init>(Landroidx/core/view/ac;Landroidx/core/view/ac$h;)V

    const/4 p1, 0x0

    .line 789
    iput-object p1, p0, Landroidx/core/view/ac$i;->c:Landroidx/core/graphics/b;

    .line 790
    iput-object p1, p0, Landroidx/core/view/ac$i;->d:Landroidx/core/graphics/b;

    .line 791
    iput-object p1, p0, Landroidx/core/view/ac$i;->e:Landroidx/core/graphics/b;

    return-void
.end method


# virtual methods
.method final a(IIII)Landroidx/core/view/ac;
    .locals 1

    .line 832
    iget-object v0, p0, Landroidx/core/view/ac$i;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/ac;->a(Landroid/view/WindowInsets;)Landroidx/core/view/ac;

    move-result-object p1

    return-object p1
.end method

.method final i()Landroidx/core/graphics/b;
    .locals 1

    .line 813
    iget-object v0, p0, Landroidx/core/view/ac$i;->d:Landroidx/core/graphics/b;

    if-nez v0, :cond_0

    .line 814
    iget-object v0, p0, Landroidx/core/view/ac$i;->b:Landroid/view/WindowInsets;

    .line 815
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/b;->a(Landroid/graphics/Insets;)Landroidx/core/graphics/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/ac$i;->d:Landroidx/core/graphics/b;

    .line 817
    :cond_0
    iget-object v0, p0, Landroidx/core/view/ac$i;->d:Landroidx/core/graphics/b;

    return-object v0
.end method
