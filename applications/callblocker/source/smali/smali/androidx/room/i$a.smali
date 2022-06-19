.class public Landroidx/room/i$a;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/room/i;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/room/i$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/Executor;

.field private f:Ljava/util/concurrent/Executor;

.field private g:Landroidx/i/a/c$c;

.field private h:Z

.field private i:Landroidx/room/i$c;

.field private j:Z

.field private k:Z

.field private l:Z

.field private final m:Landroidx/room/i$d;

.field private n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;

.field private q:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    iput-object p1, p0, Landroidx/room/i$a;->c:Landroid/content/Context;

    .line 571
    iput-object p2, p0, Landroidx/room/i$a;->a:Ljava/lang/Class;

    .line 572
    iput-object p3, p0, Landroidx/room/i$a;->b:Ljava/lang/String;

    .line 573
    sget-object v0, Landroidx/room/i$c;->a:Landroidx/room/i$c;

    iput-object v0, p0, Landroidx/room/i$a;->i:Landroidx/room/i$c;

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/i$a;->k:Z

    .line 575
    new-instance v0, Landroidx/room/i$d;

    invoke-direct {v0}, Landroidx/room/i$d;-><init>()V

    iput-object v0, p0, Landroidx/room/i$a;->m:Landroidx/room/i$d;

    .line 576
    return-void
.end method


# virtual methods
.method public a()Landroidx/room/i$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/i$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 687
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/i$a;->h:Z

    .line 688
    return-object p0
.end method

.method public a(Landroidx/i/a/c$c;)Landroidx/room/i$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/i/a/c$c;",
            ")",
            "Landroidx/room/i$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 636
    iput-object p1, p0, Landroidx/room/i$a;->g:Landroidx/i/a/c$c;

    .line 637
    return-object p0
.end method

.method public a(Landroidx/room/i$b;)Landroidx/room/i$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/i$b;",
            ")",
            "Landroidx/room/i$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 869
    iget-object v0, p0, Landroidx/room/i$a;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 870
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/i$a;->d:Ljava/util/ArrayList;

    .line 872
    :cond_0
    iget-object v0, p0, Landroidx/room/i$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    return-object p0
.end method

.method public a(Ljava/util/concurrent/Executor;)Landroidx/room/i$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroidx/room/i$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 733
    iput-object p1, p0, Landroidx/room/i$a;->e:Ljava/util/concurrent/Executor;

    .line 734
    return-object p0
.end method

.method public varargs a([Landroidx/room/a/a;)Landroidx/room/i$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/room/a/a;",
            ")",
            "Landroidx/room/i$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 661
    iget-object v0, p0, Landroidx/room/i$a;->o:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 662
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/room/i$a;->o:Ljava/util/Set;

    .line 664
    :cond_0
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 665
    iget-object v3, p0, Landroidx/room/i$a;->o:Ljava/util/Set;

    iget v4, v2, Landroidx/room/a/a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 666
    iget-object v3, p0, Landroidx/room/i$a;->o:Ljava/util/Set;

    iget v2, v2, Landroidx/room/a/a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 669
    :cond_1
    iget-object v0, p0, Landroidx/room/i$a;->m:Landroidx/room/i$d;

    invoke-virtual {v0, p1}, Landroidx/room/i$d;->a([Landroidx/room/a/a;)V

    .line 670
    return-object p0
.end method

.method public b()Landroidx/room/i$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/i$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 809
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/room/i$a;->k:Z

    .line 810
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/i$a;->l:Z

    .line 811
    return-object p0
.end method

.method public c()Landroidx/room/i;
    .locals 17
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

    .prologue
    .line 888
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/i$a;->c:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 889
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Cannot provide null context for the database."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 892
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/i$a;->a:Ljava/lang/Class;

    if-nez v1, :cond_1

    .line 893
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 896
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/i$a;->e:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/i$a;->f:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_4

    .line 897
    invoke-static {}, Landroidx/a/a/a/a;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroidx/room/i$a;->f:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroidx/room/i$a;->e:Ljava/util/concurrent/Executor;

    .line 904
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/i$a;->o:Ljava/util/Set;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/i$a;->n:Ljava/util/Set;

    if-eqz v1, :cond_6

    .line 905
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/i$a;->o:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 906
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/room/i$a;->n:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 907
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 898
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/i$a;->e:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/i$a;->f:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_5

    .line 899
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/i$a;->e:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroidx/room/i$a;->f:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 900
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/i$a;->e:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/i$a;->f:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_2

    .line 901
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/i$a;->f:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iput-object v1, v0, Landroidx/room/i$a;->e:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 918
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/i$a;->g:Landroidx/i/a/c$c;

    if-nez v1, :cond_7

    .line 919
    new-instance v1, Landroidx/i/a/a/c;

    invoke-direct {v1}, Landroidx/i/a/a/c;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroidx/room/i$a;->g:Landroidx/i/a/c$c;

    .line 922
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/i$a;->p:Ljava/lang/String;

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/i$a;->q:Ljava/io/File;

    if-eqz v1, :cond_b

    .line 923
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/i$a;->b:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 924
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Cannot create from asset or file for an in-memory database."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 927
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/i$a;->p:Ljava/lang/String;

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/i$a;->q:Ljava/io/File;

    if-eqz v1, :cond_a

    .line 928
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Both createFromAsset() and createFromFile() was called on this Builder but the database can only be created using one of the two configurations."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 932
    :cond_a
    new-instance v1, Landroidx/room/n;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/room/i$a;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/room/i$a;->q:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/room/i$a;->g:Landroidx/i/a/c$c;

    invoke-direct {v1, v2, v3, v4}, Landroidx/room/n;-><init>(Ljava/lang/String;Ljava/io/File;Landroidx/i/a/c$c;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroidx/room/i$a;->g:Landroidx/i/a/c$c;

    .line 935
    :cond_b
    new-instance v1, Landroidx/room/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/room/i$a;->c:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/room/i$a;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroidx/room/i$a;->g:Landroidx/i/a/c$c;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/room/i$a;->m:Landroidx/room/i$d;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/room/i$a;->d:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroidx/room/i$a;->h:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Landroidx/room/i$a;->i:Landroidx/room/i$c;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroidx/room/i$a;->c:Landroid/content/Context;

    .line 943
    invoke-virtual {v8, v9}, Landroidx/room/i$c;->a(Landroid/content/Context;)Landroidx/room/i$c;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroidx/room/i$a;->e:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroidx/room/i$a;->f:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroidx/room/i$a;->j:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroidx/room/i$a;->k:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroidx/room/i$a;->l:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/room/i$a;->n:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroidx/room/i$a;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/room/i$a;->q:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-direct/range {v1 .. v16}, Landroidx/room/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/i/a/c$c;Landroidx/room/i$d;Ljava/util/List;ZLandroidx/room/i$c;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/room/i$a;->a:Ljava/lang/Class;

    const-string/jumbo v3, "_Impl"

    invoke-static {v2, v3}, Landroidx/room/h;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/i;

    .line 953
    invoke-virtual {v2, v1}, Landroidx/room/i;->a(Landroidx/room/a;)V

    .line 954
    return-object v2
.end method
