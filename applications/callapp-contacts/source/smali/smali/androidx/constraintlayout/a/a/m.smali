.class public Landroidx/constraintlayout/a/a/m;
.super Landroidx/constraintlayout/a/a/e;
.source "SourceFile"


# instance fields
.field public be:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/a/a/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/constraintlayout/a/a/e;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/a/a/e;-><init>(II)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/a/a/e;-><init>(IIII)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/a/a/e;)V
    .locals 1

    .line 72
    iget-object v0, p0, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1620
    iget-object v0, p1, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    if-eqz v0, :cond_0

    .line 2620
    iget-object v0, p1, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    .line 74
    check-cast v0, Landroidx/constraintlayout/a/a/m;

    .line 75
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/a/a/m;->b(Landroidx/constraintlayout/a/a/e;)V

    .line 2629
    :cond_0
    iput-object p0, p1, Landroidx/constraintlayout/a/a/e;->S:Landroidx/constraintlayout/a/a/e;

    return-void
.end method

.method public final a(Landroidx/constraintlayout/a/c;)V
    .locals 3

    .line 172
    invoke-super {p0, p1}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/c;)V

    .line 173
    iget-object v0, p0, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 175
    iget-object v2, p0, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/a/a/e;

    .line 176
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/a/a/e;->a(Landroidx/constraintlayout/a/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Landroidx/constraintlayout/a/a/e;)V
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p1}, Landroidx/constraintlayout/a/a/e;->k()V

    return-void
.end method

.method public k()V
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    invoke-super {p0}, Landroidx/constraintlayout/a/a/e;->k()V

    return-void
.end method

.method public z()V
    .locals 4

    .line 158
    iget-object v0, p0, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 163
    iget-object v2, p0, Landroidx/constraintlayout/a/a/m;->be:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/a/a/e;

    .line 164
    instance-of v3, v2, Landroidx/constraintlayout/a/a/m;

    if-eqz v3, :cond_1

    .line 165
    check-cast v2, Landroidx/constraintlayout/a/a/m;

    invoke-virtual {v2}, Landroidx/constraintlayout/a/a/m;->z()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
