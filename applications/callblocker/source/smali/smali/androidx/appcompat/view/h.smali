.class public Landroidx/appcompat/view/h;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatSet.java"


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/h/y;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroidx/core/h/z;

.field private c:J

.field private d:Landroid/view/animation/Interpolator;

.field private e:Z

.field private final f:Landroidx/core/h/aa;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/appcompat/view/h;->c:J

    .line 120
    new-instance v0, Landroidx/appcompat/view/h$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/h$1;-><init>(Landroidx/appcompat/view/h;)V

    iput-object v0, p0, Landroidx/appcompat/view/h;->f:Landroidx/core/h/aa;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/h;->a:Ljava/util/ArrayList;

    .line 50
    return-void
.end method


# virtual methods
.method public a(J)Landroidx/appcompat/view/h;
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Landroidx/appcompat/view/h;->e:Z

    if-nez v0, :cond_0

    .line 101
    iput-wide p1, p0, Landroidx/appcompat/view/h;->c:J

    .line 103
    :cond_0
    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/h;
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Landroidx/appcompat/view/h;->e:Z

    if-nez v0, :cond_0

    .line 108
    iput-object p1, p0, Landroidx/appcompat/view/h;->d:Landroid/view/animation/Interpolator;

    .line 110
    :cond_0
    return-object p0
.end method

.method public a(Landroidx/core/h/y;)Landroidx/appcompat/view/h;
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Landroidx/appcompat/view/h;->e:Z

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Landroidx/appcompat/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    return-object p0
.end method

.method public a(Landroidx/core/h/y;Landroidx/core/h/y;)Landroidx/appcompat/view/h;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Landroidx/appcompat/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {p1}, Landroidx/core/h/y;->a()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroidx/core/h/y;->b(J)Landroidx/core/h/y;

    .line 63
    iget-object v0, p0, Landroidx/appcompat/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    return-object p0
.end method

.method public a(Landroidx/core/h/z;)Landroidx/appcompat/view/h;
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Landroidx/appcompat/view/h;->e:Z

    if-nez v0, :cond_0

    .line 115
    iput-object p1, p0, Landroidx/appcompat/view/h;->b:Landroidx/core/h/z;

    .line 117
    :cond_0
    return-object p0
.end method

.method public a()V
    .locals 6

    .prologue
    .line 68
    iget-boolean v0, p0, Landroidx/appcompat/view/h;->e:Z

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/h/y;

    .line 70
    iget-wide v2, p0, Landroidx/appcompat/view/h;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 71
    iget-wide v2, p0, Landroidx/appcompat/view/h;->c:J

    invoke-virtual {v0, v2, v3}, Landroidx/core/h/y;->a(J)Landroidx/core/h/y;

    .line 73
    :cond_1
    iget-object v2, p0, Landroidx/appcompat/view/h;->d:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, p0, Landroidx/appcompat/view/h;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroidx/core/h/y;->a(Landroid/view/animation/Interpolator;)Landroidx/core/h/y;

    .line 76
    :cond_2
    iget-object v2, p0, Landroidx/appcompat/view/h;->b:Landroidx/core/h/z;

    if-eqz v2, :cond_3

    .line 77
    iget-object v2, p0, Landroidx/appcompat/view/h;->f:Landroidx/core/h/aa;

    invoke-virtual {v0, v2}, Landroidx/core/h/y;->a(Landroidx/core/h/z;)Landroidx/core/h/y;

    .line 79
    :cond_3
    invoke-virtual {v0}, Landroidx/core/h/y;->c()V

    goto :goto_1

    .line 82
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/h;->e:Z

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/h;->e:Z

    .line 87
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 90
    iget-boolean v0, p0, Landroidx/appcompat/view/h;->e:Z

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/h/y;

    .line 94
    invoke-virtual {v0}, Landroidx/core/h/y;->b()V

    goto :goto_1

    .line 96
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/h;->e:Z

    goto :goto_0
.end method
