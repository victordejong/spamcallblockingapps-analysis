.class public final Landroidx/constraintlayout/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/a/a/a/b$a;,
        Landroidx/constraintlayout/a/a/a/b$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroidx/constraintlayout/a/a/f;

.field private c:Landroidx/constraintlayout/a/a/a/b$a;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/a/a/f;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/a/b;->a:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Landroidx/constraintlayout/a/a/a/b$a;

    invoke-direct {v0}, Landroidx/constraintlayout/a/a/a/b$a;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/a/b;->c:Landroidx/constraintlayout/a/a/a/b$a;

    .line 71
    iput-object p1, p0, Landroidx/constraintlayout/a/a/a/b;->b:Landroidx/constraintlayout/a/a/f;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/a/a/f;)V
    .locals 6

    .line 56
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    iget-object v0, p1, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 59
    iget-object v3, p1, Landroidx/constraintlayout/a/a/f;->be:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/a/a/e;

    .line 2966
    iget-object v4, v3, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    aget-object v4, v4, v1

    .line 60
    sget-object v5, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-eq v4, v5, :cond_0

    .line 2975
    iget-object v4, v3, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    .line 61
    sget-object v5, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v4, v5, :cond_1

    .line 62
    :cond_0
    iget-object v4, p0, Landroidx/constraintlayout/a/a/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/f;->d()V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/a/f;II)V
    .locals 3

    .line 148
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/f;->q()I

    move-result v0

    .line 149
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/f;->r()I

    move-result v1

    const/4 v2, 0x0

    .line 150
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/a/a/f;->i(I)V

    .line 151
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/a/a/f;->j(I)V

    .line 152
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/a/a/f;->g(I)V

    .line 153
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/a/a/f;->h(I)V

    .line 154
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/a/a/f;->i(I)V

    .line 155
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/a/a/f;->j(I)V

    .line 159
    iget-object p1, p0, Landroidx/constraintlayout/a/a/a/b;->b:Landroidx/constraintlayout/a/a/f;

    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/f;->z()V

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/a/a/b$b;Landroidx/constraintlayout/a/a/e;I)Z
    .locals 4

    .line 457
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/b;->c:Landroidx/constraintlayout/a/a/a/b$a;

    .line 3966
    iget-object v1, p2, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 457
    iput-object v1, v0, Landroidx/constraintlayout/a/a/a/b$a;->d:Landroidx/constraintlayout/a/a/e$a;

    .line 458
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/b;->c:Landroidx/constraintlayout/a/a/a/b$a;

    .line 3975
    iget-object v1, p2, Landroidx/constraintlayout/a/a/e;->R:[Landroidx/constraintlayout/a/a/e$a;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    .line 458
    iput-object v1, v0, Landroidx/constraintlayout/a/a/a/b$a;->e:Landroidx/constraintlayout/a/a/e$a;

    .line 459
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/b;->c:Landroidx/constraintlayout/a/a/a/b$a;

    invoke-virtual {p2}, Landroidx/constraintlayout/a/a/e;->o()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/a/a/a/b$a;->f:I

    .line 460
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/b;->c:Landroidx/constraintlayout/a/a/a/b$a;

    invoke-virtual {p2}, Landroidx/constraintlayout/a/a/e;->p()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/a/a/a/b$a;->g:I

    .line 461
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/b;->c:Landroidx/constraintlayout/a/a/a/b$a;

    iput-boolean v2, v0, Landroidx/constraintlayout/a/a/a/b$a;->l:Z

    .line 462
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/b;->c:Landroidx/constraintlayout/a/a/a/b$a;

    iput p3, v0, Landroidx/constraintlayout/a/a/a/b$a;->m:I

    .line 464
    iget-object p3, p0, Landroidx/constraintlayout/a/a/a/b;->c:Landroidx/constraintlayout/a/a/a/b$a;

    iget-object p3, p3, Landroidx/constraintlayout/a/a/a/b$a;->d:Landroidx/constraintlayout/a/a/e$a;

    sget-object v0, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 465
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/b;->c:Landroidx/constraintlayout/a/a/a/b$a;

    iget-object v0, v0, Landroidx/constraintlayout/a/a/a/b$a;->e:Landroidx/constraintlayout/a/a/e$a;

    sget-object v1, Landroidx/constraintlayout/a/a/e$a;->MATCH_CONSTRAINT:Landroidx/constraintlayout/a/a/e$a;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x0

    if-eqz p3, :cond_2

    .line 466
    iget p3, p2, Landroidx/constraintlayout/a/a/e;->V:F

    cmpl-float p3, p3, v1

    if-lez p3, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 467
    iget v0, p2, Landroidx/constraintlayout/a/a/e;->V:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x4

    if-eqz p3, :cond_4

    .line 470
    iget-object p3, p2, Landroidx/constraintlayout/a/a/e;->q:[I

    aget p3, p3, v2

    if-ne p3, v1, :cond_4

    .line 471
    iget-object p3, p0, Landroidx/constraintlayout/a/a/a/b;->c:Landroidx/constraintlayout/a/a/a/b$a;

    sget-object v2, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    iput-object v2, p3, Landroidx/constraintlayout/a/a/a/b$a;->d:Landroidx/constraintlayout/a/a/e$a;

    :cond_4
    if-eqz v0, :cond_5

    .line 475
    iget-object p3, p2, Landroidx/constraintlayout/a/a/e;->q:[I

    aget p3, p3, v3

    if-ne p3, v1, :cond_5

    .line 476
    iget-object p3, p0, Landroidx/constraintlayout/a/a/a/b;->c:Landroidx/constraintlayout/a/a/a/b$a;

    sget-object v0, Landroidx/constraintlayout/a/a/e$a;->FIXED:Landroidx/constraintlayout/a/a/e$a;

    iput-object v0, p3, Landroidx/constraintlayout/a/a/a/b$a;->e:Landroidx/constraintlayout/a/a/e$a;

    .line 480
    :cond_5
    iget-object p3, p0, Landroidx/constraintlayout/a/a/a/b;->c:Landroidx/constraintlayout/a/a/a/b$a;

    invoke-interface {p1, p2, p3}, Landroidx/constraintlayout/a/a/a/b$b;->a(Landroidx/constraintlayout/a/a/e;Landroidx/constraintlayout/a/a/a/b$a;)V

    .line 481
    iget-object p1, p0, Landroidx/constraintlayout/a/a/a/b;->c:Landroidx/constraintlayout/a/a/a/b$a;

    iget p1, p1, Landroidx/constraintlayout/a/a/a/b$a;->h:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/a/a/e;->g(I)V

    .line 482
    iget-object p1, p0, Landroidx/constraintlayout/a/a/a/b;->c:Landroidx/constraintlayout/a/a/a/b$a;

    iget p1, p1, Landroidx/constraintlayout/a/a/a/b$a;->i:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/a/a/e;->h(I)V

    .line 483
    iget-object p1, p0, Landroidx/constraintlayout/a/a/a/b;->c:Landroidx/constraintlayout/a/a/a/b$a;

    iget-boolean p1, p1, Landroidx/constraintlayout/a/a/a/b$a;->k:Z

    .line 4288
    iput-boolean p1, p2, Landroidx/constraintlayout/a/a/e;->C:Z

    .line 484
    iget-object p1, p0, Landroidx/constraintlayout/a/a/a/b;->c:Landroidx/constraintlayout/a/a/a/b$a;

    iget p1, p1, Landroidx/constraintlayout/a/a/a/b$a;->j:I

    invoke-virtual {p2, p1}, Landroidx/constraintlayout/a/a/e;->k(I)V

    .line 485
    iget-object p1, p0, Landroidx/constraintlayout/a/a/a/b;->c:Landroidx/constraintlayout/a/a/a/b$a;

    sget p2, Landroidx/constraintlayout/a/a/a/b$a;->a:I

    iput p2, p1, Landroidx/constraintlayout/a/a/a/b$a;->m:I

    .line 486
    iget-object p1, p0, Landroidx/constraintlayout/a/a/a/b;->c:Landroidx/constraintlayout/a/a/a/b$a;

    iget-boolean p1, p1, Landroidx/constraintlayout/a/a/a/b$a;->l:Z

    return p1
.end method
