.class public Lz00$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lz00;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz00$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/concurrent/Executor;

.field public f:Ljava/util/concurrent/Executor;

.field public g:Lo10$c;

.field public h:Z

.field public i:Lz00$c;

.field public j:Z

.field public k:Z

.field public l:Z

.field public final m:Lz00$d;

.field public n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz00$a;->c:Landroid/content/Context;

    iput-object p2, p0, Lz00$a;->a:Ljava/lang/Class;

    iput-object p3, p0, Lz00$a;->b:Ljava/lang/String;

    sget-object p1, Lz00$c;->a:Lz00$c;

    iput-object p1, p0, Lz00$a;->i:Lz00$c;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lz00$a;->k:Z

    new-instance p1, Lz00$d;

    invoke-direct {p1}, Lz00$d;-><init>()V

    iput-object p1, p0, Lz00$a;->m:Lz00$d;

    return-void
.end method


# virtual methods
.method public a(Lz00$b;)Lz00$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz00$b;",
            ")",
            "Lz00$a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lz00$a;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz00$a;->d:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lz00$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs b([Lf10;)Lz00$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lf10;",
            ")",
            "Lz00$a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lz00$a;->o:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lz00$a;->o:Ljava/util/Set;

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lz00$a;->o:Ljava/util/Set;

    iget v4, v2, Lf10;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lz00$a;->o:Ljava/util/Set;

    iget v2, v2, Lf10;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz00$a;->m:Lz00$d;

    invoke-virtual {v0, p1}, Lz00$d;->b([Lf10;)V

    return-object p0
.end method

.method public c()Lz00$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz00$a<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz00$a;->h:Z

    return-object p0
.end method

.method public d()Lz00;
    .locals 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lz00$a;->c:Landroid/content/Context;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lz00$a;->a:Ljava/lang/Class;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lz00$a;->e:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v1, p0, Lz00$a;->f:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    invoke-static {}, Lv2;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lz00$a;->f:Ljava/util/concurrent/Executor;

    :goto_0
    iput-object v0, p0, Lz00$a;->e:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lz00$a;->f:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_1

    iput-object v0, p0, Lz00$a;->f:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lz00$a;->f:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lz00$a;->o:Ljava/util/Set;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lz00$a;->n:Ljava/util/Set;

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lz00$a;->n:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lz00$a;->g:Lo10$c;

    if-nez v0, :cond_5

    new-instance v0, Lu10;

    invoke-direct {v0}, Lu10;-><init>()V

    iput-object v0, p0, Lz00$a;->g:Lo10$c;

    :cond_5
    new-instance v0, Lr00;

    iget-object v2, p0, Lz00$a;->c:Landroid/content/Context;

    iget-object v3, p0, Lz00$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lz00$a;->g:Lo10$c;

    iget-object v5, p0, Lz00$a;->m:Lz00$d;

    iget-object v6, p0, Lz00$a;->d:Ljava/util/ArrayList;

    iget-boolean v7, p0, Lz00$a;->h:Z

    iget-object v1, p0, Lz00$a;->i:Lz00$c;

    invoke-virtual {v1, v2}, Lz00$c;->a(Landroid/content/Context;)Lz00$c;

    move-result-object v8

    iget-object v9, p0, Lz00$a;->e:Ljava/util/concurrent/Executor;

    iget-object v10, p0, Lz00$a;->f:Ljava/util/concurrent/Executor;

    iget-boolean v11, p0, Lz00$a;->j:Z

    iget-boolean v12, p0, Lz00$a;->k:Z

    iget-boolean v13, p0, Lz00$a;->l:Z

    iget-object v14, p0, Lz00$a;->n:Ljava/util/Set;

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lr00;-><init>(Landroid/content/Context;Ljava/lang/String;Lo10$c;Lz00$d;Ljava/util/List;ZLz00$c;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;)V

    iget-object v1, p0, Lz00$a;->a:Ljava/lang/Class;

    const-string v2, "_Impl"

    invoke-static {v1, v2}, Ly00;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz00;

    invoke-virtual {v1, v0}, Lz00;->l(Lr00;)V

    return-object v1

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot provide null context for the database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Lz00$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz00$a<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz00$a;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz00$a;->l:Z

    return-object p0
.end method

.method public f(Ljava/util/concurrent/Executor;)Lz00$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lz00$a<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lz00$a;->e:Ljava/util/concurrent/Executor;

    return-object p0
.end method
