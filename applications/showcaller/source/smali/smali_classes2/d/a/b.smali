.class public Ld/a/b;
.super Ljava/lang/Object;
.source "Context.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/a/b$f;,
        Ld/a/b$c;,
        Ld/a/b$g;,
        Ld/a/b$d;,
        Ld/a/b$b;,
        Ld/a/b$a;,
        Ld/a/b$e;
    }
.end annotation


# static fields
.field static final d:Ljava/util/logging/Logger;

.field private static final e:Ld/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a/c<",
            "Ld/a/b$d<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ld/a/b;


# instance fields
.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ld/a/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ld/a/b$b;

.field final i:Ld/a/b$a;

.field final j:Ld/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/a/c<",
            "Ld/a/b$d<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ld/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ld/a/b;->d:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Ld/a/c;

    invoke-direct {v0}, Ld/a/c;-><init>()V

    sput-object v0, Ld/a/b;->e:Ld/a/c;

    .line 3
    new-instance v1, Ld/a/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Ld/a/b;-><init>(Ld/a/b;Ld/a/c;)V

    sput-object v1, Ld/a/b;->f:Ld/a/b;

    return-void
.end method

.method private constructor <init>(Ld/a/b;Ld/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/b;",
            "Ld/a/c<",
            "Ld/a/b$d<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ld/a/b$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ld/a/b$f;-><init>(Ld/a/b;Ld/a/a;)V

    iput-object v0, p0, Ld/a/b;->h:Ld/a/b$b;

    .line 3
    invoke-static {p1}, Ld/a/b;->f(Ld/a/b;)Ld/a/b$a;

    move-result-object v0

    iput-object v0, p0, Ld/a/b;->i:Ld/a/b$a;

    .line 4
    iput-object p2, p0, Ld/a/b;->j:Ld/a/c;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget p1, p1, Ld/a/b;->k:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Ld/a/b;->k:I

    .line 6
    invoke-static {p1}, Ld/a/b;->E(I)V

    return-void
.end method

.method static D()Ld/a/b$g;
    .locals 1

    .line 1
    sget-object v0, Ld/a/b$e;->a:Ld/a/b$g;

    return-object v0
.end method

.method private static E(I)V
    .locals 3

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Ld/a/b;->d:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000"

    invoke-virtual {p0, v0, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static f(Ld/a/b;)Ld/a/b$a;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p0, Ld/a/b$a;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Ld/a/b$a;

    return-object p0

    .line 3
    :cond_1
    iget-object p0, p0, Ld/a/b;->i:Ld/a/b$a;

    return-object p0
.end method

.method static k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static p()Ld/a/b;
    .locals 1

    .line 1
    invoke-static {}, Ld/a/b;->D()Ld/a/b$g;

    move-result-object v0

    invoke-virtual {v0}, Ld/a/b$g;->b()Ld/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ld/a/b;->f:Ld/a/b;

    :cond_0
    return-object v0
.end method

.method public static y(Ljava/lang/String;)Ld/a/b$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ld/a/b$d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ld/a/b$d;

    invoke-direct {v0, p0}, Ld/a/b$d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method A()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ld/a/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Ld/a/b;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 4
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Ld/a/b;->g:Ljava/util/ArrayList;

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/a/b$c;

    iget-object v3, v3, Ld/a/b$c;->e:Ld/a/b$b;

    instance-of v3, v3, Ld/a/b$f;

    if-nez v3, :cond_2

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/a/b$c;

    invoke-virtual {v3}, Ld/a/b$c;->a()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/a/b$c;

    iget-object v2, v2, Ld/a/b$c;->e:Ld/a/b$b;

    instance-of v2, v2, Ld/a/b$f;

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/a/b$c;

    invoke-virtual {v2}, Ld/a/b$c;->a()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_5
    iget-object v0, p0, Ld/a/b;->i:Ld/a/b$a;

    if-eqz v0, :cond_6

    .line 14
    iget-object v1, p0, Ld/a/b;->h:Ld/a/b$b;

    invoke-virtual {v0, v1}, Ld/a/b;->C(Ld/a/b$b;)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public C(Ld/a/b$b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld/a/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Ld/a/b;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 5
    iget-object v1, p0, Ld/a/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/a/b$c;

    iget-object v1, v1, Ld/a/b$c;->e:Ld/a/b$b;

    if-ne v1, p1, :cond_1

    .line 6
    iget-object p1, p0, Ld/a/b;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    iget-object p1, p0, Ld/a/b;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Ld/a/b;->i:Ld/a/b$a;

    if-eqz p1, :cond_3

    .line 9
    iget-object v0, p0, Ld/a/b;->h:Ld/a/b$b;

    invoke-virtual {p1, v0}, Ld/a/b;->C(Ld/a/b$b;)V

    :cond_3
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Ld/a/b;->g:Ljava/util/ArrayList;

    .line 11
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public I(Ld/a/b$d;Ljava/lang/Object;)Ld/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ld/a/b$d<",
            "TV;>;TV;)",
            "Ld/a/b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld/a/b;->j:Ld/a/c;

    invoke-virtual {v0, p1, p2}, Ld/a/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Ld/a/c;

    move-result-object p1

    .line 2
    new-instance p2, Ld/a/b;

    invoke-direct {p2, p0, p1}, Ld/a/b;-><init>(Ld/a/b;Ld/a/c;)V

    return-object p2
.end method

.method public a()Ld/a/b;
    .locals 1

    .line 1
    invoke-static {}, Ld/a/b;->D()Ld/a/b$g;

    move-result-object v0

    invoke-virtual {v0, p0}, Ld/a/b$g;->d(Ld/a/b;)Ld/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ld/a/b;->f:Ld/a/b;

    :cond_0
    return-object v0
.end method

.method e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a/b;->i:Ld/a/b$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a/b;->i:Ld/a/b$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ld/a/b$a;->g()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public q(Ld/a/b;)V
    .locals 1

    const-string v0, "toAttach"

    .line 1
    invoke-static {p1, v0}, Ld/a/b;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Ld/a/b;->D()Ld/a/b$g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ld/a/b$g;->c(Ld/a/b;Ld/a/b;)V

    return-void
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a/b;->i:Ld/a/b$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ld/a/b$a;->u()Z

    move-result v0

    return v0
.end method

.method z(Ld/a/b$d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/a/b$d<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld/a/b;->j:Ld/a/c;

    invoke-virtual {v0, p1}, Ld/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
