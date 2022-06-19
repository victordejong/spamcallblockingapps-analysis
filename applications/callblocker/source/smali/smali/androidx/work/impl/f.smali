.class public Landroidx/work/impl/f;
.super Landroidx/work/r;
.source "WorkContinuationImpl.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroidx/work/impl/i;

.field private final c:Ljava/lang/String;

.field private final d:Landroidx/work/g;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Landroidx/work/u;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/f;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Landroidx/work/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "WorkContinuationImpl"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/f;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/work/impl/i;Ljava/lang/String;Landroidx/work/g;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/i;",
            "Ljava/lang/String;",
            "Landroidx/work/g;",
            "Ljava/util/List",
            "<+",
            "Landroidx/work/u;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/f;-><init>(Landroidx/work/impl/i;Ljava/lang/String;Landroidx/work/g;Ljava/util/List;Ljava/util/List;)V

    .line 126
    return-void
.end method

.method constructor <init>(Landroidx/work/impl/i;Ljava/lang/String;Landroidx/work/g;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/i;",
            "Ljava/lang/String;",
            "Landroidx/work/g;",
            "Ljava/util/List",
            "<+",
            "Landroidx/work/u;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    invoke-direct {p0}, Landroidx/work/r;-><init>()V

    .line 133
    iput-object p1, p0, Landroidx/work/impl/f;->b:Landroidx/work/impl/i;

    .line 134
    iput-object p2, p0, Landroidx/work/impl/f;->c:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Landroidx/work/impl/f;->d:Landroidx/work/g;

    .line 136
    iput-object p4, p0, Landroidx/work/impl/f;->e:Ljava/util/List;

    .line 137
    iput-object p5, p0, Landroidx/work/impl/f;->h:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/work/impl/f;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/work/impl/f;->f:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/f;->g:Ljava/util/List;

    .line 140
    if-eqz p5, :cond_0

    .line 141
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/f;

    .line 142
    iget-object v2, p0, Landroidx/work/impl/f;->g:Ljava/util/List;

    iget-object v0, v0, Landroidx/work/impl/f;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 145
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 146
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/u;

    invoke-virtual {v0}, Landroidx/work/u;->a()Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v2, p0, Landroidx/work/impl/f;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v2, p0, Landroidx/work/impl/f;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 150
    :cond_1
    return-void
.end method

.method public static a(Landroidx/work/impl/f;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/f;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 277
    invoke-virtual {p0}, Landroidx/work/impl/f;->h()Ljava/util/List;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/f;

    .line 280
    invoke-virtual {v0}, Landroidx/work/impl/f;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 283
    :cond_0
    return-object v1
.end method

.method private static a(Landroidx/work/impl/f;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/f;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 240
    invoke-virtual {p0}, Landroidx/work/impl/f;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 242
    invoke-static {p0}, Landroidx/work/impl/f;->a(Landroidx/work/impl/f;)Ljava/util/Set;

    move-result-object v2

    .line 243
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 266
    :goto_0
    return v0

    .line 251
    :cond_1
    invoke-virtual {p0}, Landroidx/work/impl/f;->h()Ljava/util/List;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/f;

    .line 255
    invoke-static {v0, p1}, Landroidx/work/impl/f;->a(Landroidx/work/impl/f;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 256
    goto :goto_0

    .line 265
    :cond_3
    invoke-virtual {p0}, Landroidx/work/impl/f;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 266
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroidx/work/impl/i;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroidx/work/impl/f;->b:Landroidx/work/impl/i;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Landroidx/work/impl/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Landroidx/work/g;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroidx/work/impl/f;->d:Landroidx/work/g;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Landroidx/work/u;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Landroidx/work/impl/f;->e:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Landroidx/work/impl/f;->f:Ljava/util/List;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Landroidx/work/impl/f;->i:Z

    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/impl/f;->i:Z

    .line 103
    return-void
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroidx/work/impl/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Landroidx/work/impl/f;->h:Ljava/util/List;

    return-object v0
.end method

.method public i()Landroidx/work/n;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 183
    iget-boolean v0, p0, Landroidx/work/impl/f;->i:Z

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Landroidx/work/impl/utils/b;

    invoke-direct {v0, p0}, Landroidx/work/impl/utils/b;-><init>(Landroidx/work/impl/f;)V

    .line 187
    iget-object v1, p0, Landroidx/work/impl/f;->b:Landroidx/work/impl/i;

    invoke-virtual {v1}, Landroidx/work/impl/i;->g()Landroidx/work/impl/utils/b/a;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/work/impl/utils/b/a;->a(Ljava/lang/Runnable;)V

    .line 188
    invoke-virtual {v0}, Landroidx/work/impl/utils/b;->a()Landroidx/work/n;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/f;->j:Landroidx/work/n;

    .line 193
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/f;->j:Landroidx/work/n;

    return-object v0

    .line 190
    :cond_0
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/f;->a:Ljava/lang/String;

    const-string/jumbo v2, "Already enqueued work ids (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, ", "

    iget-object v5, p0, Landroidx/work/impl/f;->f:Ljava/util/List;

    .line 191
    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Throwable;

    .line 190
    invoke-virtual {v0, v1, v2, v3}, Landroidx/work/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 223
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v0}, Landroidx/work/impl/f;->a(Landroidx/work/impl/f;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method
