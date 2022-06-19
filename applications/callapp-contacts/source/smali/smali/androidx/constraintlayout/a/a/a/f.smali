.class public Landroidx/constraintlayout/a/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/constraintlayout/a/a/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/a/a/a/f$a;
    }
.end annotation


# instance fields
.field public a:Landroidx/constraintlayout/a/a/a/d;

.field public b:Z

.field public c:Z

.field d:Landroidx/constraintlayout/a/a/a/p;

.field e:Landroidx/constraintlayout/a/a/a/f$a;

.field f:I

.field public g:I

.field h:I

.field i:Landroidx/constraintlayout/a/a/a/g;

.field public j:Z

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/constraintlayout/a/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/constraintlayout/a/a/a/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/a/a/a/p;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Landroidx/constraintlayout/a/a/a/f;->a:Landroidx/constraintlayout/a/a/a/d;

    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/a/f;->b:Z

    .line 25
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/a/f;->c:Z

    .line 30
    sget-object v2, Landroidx/constraintlayout/a/a/a/f$a;->UNKNOWN:Landroidx/constraintlayout/a/a/a/f$a;

    iput-object v2, p0, Landroidx/constraintlayout/a/a/a/f;->e:Landroidx/constraintlayout/a/a/a/f$a;

    const/4 v2, 0x1

    .line 33
    iput v2, p0, Landroidx/constraintlayout/a/a/a/f;->h:I

    .line 34
    iput-object v0, p0, Landroidx/constraintlayout/a/a/a/f;->i:Landroidx/constraintlayout/a/a/a/g;

    .line 35
    iput-boolean v1, p0, Landroidx/constraintlayout/a/a/a/f;->j:Z

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/a/f;->k:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    .line 38
    iput-object p1, p0, Landroidx/constraintlayout/a/a/a/f;->d:Landroidx/constraintlayout/a/a/a/p;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 119
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 120
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/f;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/a/f;->j:Z

    .line 122
    iput v0, p0, Landroidx/constraintlayout/a/a/a/f;->g:I

    .line 123
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/a/f;->c:Z

    .line 124
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/a/f;->b:Z

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 50
    iget-boolean v0, p0, Landroidx/constraintlayout/a/a/a/f;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/a/f;->j:Z

    .line 55
    iput p1, p0, Landroidx/constraintlayout/a/a/a/f;->g:I

    .line 56
    iget-object p1, p0, Landroidx/constraintlayout/a/a/a/f;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/a/a/a/d;

    .line 57
    invoke-interface {v0}, Landroidx/constraintlayout/a/a/a/d;->d()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/a/a/d;)V
    .locals 1

    .line 100
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/f;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-boolean v0, p0, Landroidx/constraintlayout/a/a/a/f;->j:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {p1}, Landroidx/constraintlayout/a/a/a/d;->d()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 6

    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/a/a/a/f;

    .line 63
    iget-boolean v1, v1, Landroidx/constraintlayout/a/a/a/f;->j:Z

    if-nez v1, :cond_0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Landroidx/constraintlayout/a/a/a/f;->c:Z

    .line 68
    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/f;->a:Landroidx/constraintlayout/a/a/a/d;

    if-eqz v1, :cond_2

    .line 69
    invoke-interface {v1}, Landroidx/constraintlayout/a/a/a/d;->d()V

    .line 71
    :cond_2
    iget-boolean v1, p0, Landroidx/constraintlayout/a/a/a/f;->b:Z

    if-eqz v1, :cond_3

    .line 72
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/f;->d:Landroidx/constraintlayout/a/a/a/p;

    invoke-virtual {v0}, Landroidx/constraintlayout/a/a/a/p;->d()V

    return-void

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 77
    iget-object v3, p0, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/a/a/a/f;

    .line 78
    instance-of v5, v4, Landroidx/constraintlayout/a/a/a/g;

    if-nez v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    move-object v1, v4

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_8

    if-ne v2, v0, :cond_8

    .line 84
    iget-boolean v0, v1, Landroidx/constraintlayout/a/a/a/f;->j:Z

    if-eqz v0, :cond_8

    .line 85
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/f;->i:Landroidx/constraintlayout/a/a/a/g;

    if-eqz v0, :cond_7

    .line 86
    iget-boolean v0, v0, Landroidx/constraintlayout/a/a/a/g;->j:Z

    if-eqz v0, :cond_6

    .line 87
    iget v0, p0, Landroidx/constraintlayout/a/a/a/f;->h:I

    iget-object v2, p0, Landroidx/constraintlayout/a/a/a/f;->i:Landroidx/constraintlayout/a/a/a/g;

    iget v2, v2, Landroidx/constraintlayout/a/a/a/g;->g:I

    mul-int v0, v0, v2

    iput v0, p0, Landroidx/constraintlayout/a/a/a/f;->f:I

    goto :goto_1

    :cond_6
    return-void

    .line 92
    :cond_7
    :goto_1
    iget v0, v1, Landroidx/constraintlayout/a/a/a/f;->g:I

    iget v1, p0, Landroidx/constraintlayout/a/a/a/f;->f:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/a/a/a/f;->a(I)V

    .line 94
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/a/a/a/f;->a:Landroidx/constraintlayout/a/a/a/d;

    if-eqz v0, :cond_9

    .line 95
    invoke-interface {v0}, Landroidx/constraintlayout/a/a/a/d;->d()V

    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/f;->d:Landroidx/constraintlayout/a/a/a/p;

    iget-object v1, v1, Landroidx/constraintlayout/a/a/a/p;->d:Landroidx/constraintlayout/a/a/e;

    .line 1723
    iget-object v1, v1, Landroidx/constraintlayout/a/a/e;->al:Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/f;->e:Landroidx/constraintlayout/a/a/a/f$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/constraintlayout/a/a/a/f;->j:Z

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/constraintlayout/a/a/a/f;->g:I

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "unresolved"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") <t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/f;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/a/a/a/f;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
