.class public Lf/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/m;


# instance fields
.field public final synthetic a:Lf/m;


# direct methods
.method public constructor <init>(Lf/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/n;->a:Lf/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lm0/b0;)Lm0/b0;
    .locals 6

    .line 1
    invoke-virtual {p2}, Lm0/b0;->e()I

    move-result v0

    .line 2
    iget-object v1, p0, Lf/n;->a:Lf/m;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lf/m;->a0(Lm0/b0;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 3
    invoke-virtual {p2}, Lm0/b0;->c()I

    move-result v0

    .line 4
    invoke-virtual {p2}, Lm0/b0;->d()I

    move-result v2

    .line 5
    invoke-virtual {p2}, Lm0/b0;->b()I

    move-result v3

    .line 6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_0

    .line 7
    new-instance v4, Lm0/b0$d;

    invoke-direct {v4, p2}, Lm0/b0$d;-><init>(Lm0/b0;)V

    goto :goto_0

    :cond_0
    const/16 v5, 0x1d

    if-lt v4, v5, :cond_1

    .line 8
    new-instance v4, Lm0/b0$c;

    invoke-direct {v4, p2}, Lm0/b0$c;-><init>(Lm0/b0;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v4, Lm0/b0$b;

    invoke-direct {v4, p2}, Lm0/b0$b;-><init>(Lm0/b0;)V

    .line 10
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lf0/b;->a(IIII)Lf0/b;

    move-result-object p2

    .line 11
    invoke-virtual {v4, p2}, Lm0/b0$e;->d(Lf0/b;)V

    .line 12
    invoke-virtual {v4}, Lm0/b0$e;->b()Lm0/b0;

    move-result-object p2

    .line 13
    :cond_2
    invoke-static {p1, p2}, Lm0/v;->p(Landroid/view/View;Lm0/b0;)Lm0/b0;

    move-result-object p1

    return-object p1
.end method
