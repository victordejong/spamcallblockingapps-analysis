.class public Lz91;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz91$f;,
        Lz91$e;,
        Lz91$g;,
        Lz91$d;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "z91"

.field public static h:Lz91;

.field public static i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz91$g;",
            ">;"
        }
    .end annotation
.end field

.field public static j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Landroid/os/Handler;

.field public b:[Lz91$d;

.field public c:[Ljava/util/concurrent/ScheduledExecutorService;

.field public d:[Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public e:J

.field public f:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lz91;->i:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lz91;->j:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lz91;->e:J

    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lz91;->f:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lz91;->a:Landroid/os/Handler;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Lz91;->c:[Ljava/util/concurrent/ScheduledExecutorService;

    new-array v0, v0, [Ljava/util/concurrent/ScheduledFuture;

    iput-object v0, p0, Lz91;->d:[Ljava/util/concurrent/ScheduledFuture;

    new-array v0, v5, [Lz91$d;

    new-instance v1, Lz91$d;

    iget-object v2, p0, Lz91;->a:Landroid/os/Handler;

    sget-object v5, Lq71$e;->b:Lq71$e;

    invoke-direct {v1, v2, v5, v3}, Lz91$d;-><init>(Landroid/os/Handler;Lq71$e;I)V

    aput-object v1, v0, v3

    new-instance v1, Lz91$d;

    iget-object v2, p0, Lz91;->a:Landroid/os/Handler;

    sget-object v5, Lq71$e;->c:Lq71$e;

    invoke-direct {v1, v2, v5, v4}, Lz91$d;-><init>(Landroid/os/Handler;Lq71$e;I)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lz91;->b:[Lz91$d;

    iget-object v0, p0, Lz91;->c:[Ljava/util/concurrent/ScheduledExecutorService;

    aget-object v0, v0, v3

    new-instance v1, Lz91$a;

    invoke-direct {v1, p0}, Lz91$a;-><init>(Lz91;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static synthetic a(Lz91;)[Lz91$d;
    .locals 0

    iget-object p0, p0, Lz91;->b:[Lz91$d;

    return-object p0
.end method

.method public static synthetic b()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lz91;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic c()Lz91;
    .locals 1

    invoke-static {}, Lz91;->j()Lz91;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lz91;)[Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iget-object p0, p0, Lz91;->d:[Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method public static synthetic e()Lz91;
    .locals 1

    sget-object v0, Lz91;->h:Lz91;

    return-object v0
.end method

.method public static synthetic f(Lz91;Lq71$e;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz91;->n(Lq71$e;I)V

    return-void
.end method

.method public static synthetic g(Lz91;)[Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lz91;->c:[Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static h(Li91;)V
    .locals 4

    invoke-virtual {p0}, Li91;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lz91;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz91$g;

    instance-of v3, v2, Lz91$e;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lz91$e;

    iget-object v3, v3, Lz91$e;->b:Ln91$b;

    iget-boolean v3, v3, Ln91$b;->b:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lz91$g;->a:Li91;

    invoke-virtual {v3}, Li91;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz91$g;

    invoke-virtual {v1}, Lz91$g;->a()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static i()V
    .locals 0

    invoke-static {}, Lz91;->u()V

    invoke-static {}, Lz91;->j()Lz91;

    return-void
.end method

.method public static j()Lz91;
    .locals 1

    sget-object v0, Lz91;->h:Lz91;

    if-nez v0, :cond_0

    new-instance v0, Lz91;

    invoke-direct {v0}, Lz91;-><init>()V

    sput-object v0, Lz91;->h:Lz91;

    :cond_0
    sget-object v0, Lz91;->h:Lz91;

    return-object v0
.end method

.method public static k(Li91;)Lz91$e;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested notification for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Li91;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lz91;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz91$g;

    instance-of v3, v2, Lz91$e;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lz91$g;->a:Li91;

    invoke-virtual {v3}, Li91;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v2, Lz91$e;

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No notification found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " from "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lz91;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " queued"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Li91;Ljava/lang/String;)Lz91$f;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requested notification for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with body "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Li91;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lz91;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz91$g;

    instance-of v3, v2, Lz91$f;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lz91$g;->a:Li91;

    invoke-virtual {v3}, Li91;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v2, Lz91$f;

    iget-object v3, v2, Lz91$f;->d:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No notification found for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " from "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lz91;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " queued"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static m(Lq71$e;)Z
    .locals 1

    sget-object v0, Lz91;->j:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lq71$e;->b()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static o(Li91;Ln91$b;Lq71$e;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received filter notification for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p1, Ln91$b;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mask matched is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Ln91$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    sget-object v0, Lz91;->i:Ljava/util/ArrayList;

    new-instance v1, Lz91$e;

    invoke-direct {v1, p0, p1, p2}, Lz91$e;-><init>(Li91;Ln91$b;Lq71$e;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Notifications in queue: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lz91;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public static p(Li91;JJLjava/lang/String;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received Meta Thread notification for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lz91;->i:Ljava/util/ArrayList;

    new-instance v8, Lz91$f;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lz91$f;-><init>(Li91;JJLjava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Notifications in queue: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lz91;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public static q(Li91;Ln91$b;)V
    .locals 4

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p1, Ln91$b;->b:Z

    if-nez v0, :cond_1

    sget-object p0, Lz91;->g:Ljava/lang/String;

    const-string p1, "Trying to register blocked number with non-block resolution!"

    :goto_0
    invoke-static {p0, p1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ll81;

    invoke-direct {v0}, Ll81;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Ll81;->n:I

    iput-object p0, v0, Ll81;->m:Li91;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Ll81;->f:J

    iget-object v2, p1, Ln91$b;->a:Ln91$a;

    iput-object v2, v0, Ll81;->p:Ln91$a;

    iget-object v2, p1, Ln91$b;->g:Ljava/lang/Integer;

    iput-object v2, v0, Ll81;->q:Ljava/lang/Integer;

    sget-object v2, Lq71$e;->b:Lq71$e;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    iput-object v2, v0, Ll81;->o:Ljava/util/EnumSet;

    iput-boolean v1, v0, Ll81;->j:Z

    iget-object v1, p1, Ln91$b;->d:Ljava/lang/String;

    iput-object v1, v0, Ll81;->k:Ljava/lang/String;

    iget-object v1, p1, Ln91$b;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Li91;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Ln91$b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p1, p1, Ln91$b;->f:Ljava/lang/String;

    iput-object p1, v0, Ll81;->h:Ljava/lang/String;

    :cond_2
    invoke-virtual {v0}, Ll81;->E()Z

    invoke-virtual {v0}, Ll81;->E0()V

    iget-object p1, v0, Ll81;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Li91;->m()Ljava/lang/String;

    move-result-object p1

    iget-object v1, v0, Ll81;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_3
    new-instance p1, Lx81;

    invoke-direct {p1}, Lx81;-><init>()V

    invoke-virtual {p1, p0}, Lx81;->K(Li91;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    invoke-virtual {p1, p0}, Lx81;->I(Landroid/database/Cursor;)Lx81;

    iget-object v1, p1, Lx81;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object p1, p1, Lx81;->f:Ljava/lang/String;

    iput-object p1, v0, Ll81;->h:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    :goto_1
    if-eqz p0, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_7
    invoke-virtual {v0}, Lv71;->z()Z

    return-void

    :cond_8
    :goto_2
    sget-object p0, Lz91;->g:Ljava/lang/String;

    const-string p1, "Error registering blocked call, number or resolution is null!"

    goto/16 :goto_0
.end method

.method public static r(Li91;Ljava/lang/String;)V
    .locals 3

    new-instance p1, Ll81;

    invoke-direct {p1}, Ll81;-><init>()V

    invoke-virtual {p1}, Ll81;->V()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    invoke-virtual {p1, v0}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    iget-boolean v1, p1, Ll81;->j:Z

    if-eqz v1, :cond_3

    iget-object v1, p1, Ll81;->m:Li91;

    invoke-virtual {v1}, Li91;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Li91;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ll81;->E()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lv71;->z()Z

    :cond_3
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public static s()V
    .locals 0

    invoke-static {}, Lz91;->j()Lz91;

    return-void
.end method

.method public static u()V
    .locals 1

    sget-object v0, Lz91;->h:Lz91;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lz91;->t()V

    const/4 v0, 0x0

    sput-object v0, Lz91;->h:Lz91;

    return-void
.end method

.method public static v(Li91;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Li91;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lz91;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz91$g;

    instance-of v2, v1, Lz91$e;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lz91$g;->a:Li91;

    invoke-virtual {v2}, Li91;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lz91$e;

    iget-object p0, v1, Lz91$e;->b:Ln91$b;

    iput-object p1, p0, Ln91$b;->f:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public final n(Lq71$e;I)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "CALLLOG_SYNC"

    invoke-static {v3}, Lj91;->C(Ljava/lang/String;)V

    sget-object v4, Lz91$c;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-string v5, "date"

    const-string v6, "]"

    const-string v7, " ["

    const-string v8, "Call Log sync started: "

    const/4 v9, 0x2

    const/4 v12, 0x1

    if-eq v4, v12, :cond_4

    if-eq v4, v9, :cond_2

    const/4 v6, 0x3

    if-eq v4, v6, :cond_0

    const-string v1, "onChange called with unknown even kind"

    invoke-static {v0, v1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v4, Lta1;->H:Lta1;

    invoke-virtual {v4}, Lta1;->d()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v2, Lz91;->j:Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Lq71$e;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lm91$c;->c:Lm91$c;

    invoke-static {v0, v2, v1}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_2
    sget-object v4, Lta1;->H:Lta1;

    invoke-virtual {v4}, Lta1;->d()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v2, Lz91;->j:Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Lq71$e;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lm91$c;->c:Lm91$c;

    invoke-static {v0, v2, v1}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lfa1$f;->e:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v17, 0x0

    const-string v16, "type<>3"

    const-string v18, "date DESC"

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0

    :cond_4
    sget-object v4, Lta1;->H:Lta1;

    invoke-virtual {v4}, Lta1;->d()Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v2, Lz91;->j:Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Lq71$e;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lm91$c;->c:Lm91$c;

    invoke-static {v0, v2, v1}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    return-void

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "date DESC"

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->moveToLast()Z

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_1

    :cond_6
    :goto_0
    const-wide/16 v6, 0x0

    :goto_1
    if-nez v4, :cond_7

    return-void

    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-eqz v8, :cond_38

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_8

    goto/16 :goto_15

    :cond_8
    sget-object v8, Lz91;->j:Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Lq71$e;->b()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v8, Lm91$c;->a:Lm91$c;

    invoke-static {v0, v8, v1}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ll81;

    invoke-direct {v13}, Ll81;-><init>()V

    invoke-virtual {v13, v1}, Ll81;->W(Lq71$e;)Le4;

    move-result-object v13

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-virtual {v13}, Le4;->o()I

    move-result v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v9, "_id"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const/4 v11, 0x0

    const/16 v20, 0x0

    :goto_2
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    move-object/from16 v26, v3

    move-object/from16 v31, v4

    move/from16 v22, v5

    move-wide/from16 v29, v6

    move-object v4, v8

    move/from16 v25, v9

    :goto_3
    move/from16 v27, v14

    move/from16 v28, v15

    goto/16 :goto_7

    :cond_9
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    sub-long v21, v16, v21

    const-wide/16 v23, 0x7530

    cmp-long v10, v21, v23

    if-lez v10, :cond_a

    move-object v10, v3

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v13, v2, v3}, Le4;->h(J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v13, v2, v3}, Le4;->m(J)V

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v31, v4

    move/from16 v22, v5

    move-wide/from16 v29, v6

    move-object v4, v8

    move/from16 v25, v9

    move-object/from16 v26, v10

    goto :goto_3

    :cond_a
    move-object v10, v3

    :cond_b
    new-instance v2, Ll81;

    invoke-direct {v2}, Ll81;-><init>()V

    invoke-virtual {v2, v4, v1, v12}, Ll81;->R(Landroid/database/Cursor;Lq71$e;Z)Ll81;

    invoke-static/range {p1 .. p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    iput-object v3, v2, Ll81;->o:Ljava/util/EnumSet;

    sget-object v3, Lq71$e;->b:Lq71$e;

    if-ne v1, v3, :cond_c

    invoke-static {}, Lc91;->c()Lc91;

    move-result-object v12

    move/from16 v22, v5

    iget v5, v2, Ll81;->n:I

    invoke-virtual {v12, v5}, Lc91;->a(I)I

    move-result v5

    iput v5, v2, Ll81;->n:I

    goto :goto_4

    :cond_c
    move/from16 v22, v5

    :goto_4
    move v5, v9

    move-object v12, v10

    iget-wide v9, v2, Ll81;->f:J

    move/from16 v25, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v12

    const-string v12, "Checking record "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v2, Ll81;->h:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ("

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v27, v14

    move/from16 v28, v15

    iget-wide v14, v2, Ll81;->f:J

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-wide/from16 v29, v6

    iget-wide v5, v2, Ll81;->f:J

    invoke-virtual {v13, v5, v6}, Le4;->h(J)Ljava/lang/Object;

    move-result-object v5

    const-string v6, " with reason "

    const-string v7, "Found pending filter notification for "

    const-string v15, "Found Meta Thread notification for "

    if-nez v5, :cond_20

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v4

    const-string v4, "Our records do not have "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Ll81;->h:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v8

    move-wide/from16 v32, v9

    iget-wide v8, v2, Ll81;->f:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ") - Adding"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lfa1;->u()Z

    move-result v5

    if-nez v5, :cond_d

    sget-object v5, Lq71$e;->d:Lq71$e;

    if-ne v1, v5, :cond_d

    invoke-static {v2}, Lfa1$d;->b(Ll81;)Z

    move-result v5

    if-nez v5, :cond_d

    goto/16 :goto_7

    :cond_d
    iget-object v5, v2, Ll81;->m:Li91;

    invoke-static {v5}, Lz91;->k(Li91;)Lz91$e;

    move-result-object v5

    if-eqz v5, :cond_12

    iget-object v8, v5, Lz91$e;->b:Ln91$b;

    iget-object v9, v8, Ln91$b;->a:Ln91$a;

    iput-object v9, v2, Ll81;->p:Ln91$a;

    iget-object v9, v8, Ln91$b;->g:Ljava/lang/Integer;

    iput-object v9, v2, Ll81;->q:Ljava/lang/Integer;

    iget-boolean v8, v8, Ln91$b;->b:Z

    if-eqz v8, :cond_e

    sget-object v8, Lr71$a;->d:Lr71$a;

    invoke-virtual {v8}, Lr71$a;->a()Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    goto :goto_5

    :cond_e
    const/4 v8, 0x0

    :goto_5
    iput-boolean v8, v2, Ll81;->j:Z

    iget-object v8, v5, Lz91$e;->b:Ln91$b;

    iget-object v9, v8, Ln91$b;->d:Ljava/lang/String;

    iput-object v9, v2, Ll81;->k:Ljava/lang/String;

    iget-object v8, v8, Ln91$b;->f:Ljava/lang/String;

    if-eqz v8, :cond_f

    iget-object v8, v2, Ll81;->m:Li91;

    invoke-virtual {v8}, Li91;->m()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Ll81;->h:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lz91$e;->b:Ln91$b;

    iget-object v9, v9, Ln91$b;->f:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v8, v5, Lz91$e;->b:Ln91$b;

    iget-object v8, v8, Ln91$b;->f:Ljava/lang/String;

    iput-object v8, v2, Ll81;->h:Ljava/lang/String;

    :cond_f
    invoke-virtual {v5}, Lz91$g;->a()V

    iget-object v8, v5, Lz91$e;->b:Ln91$b;

    iget-boolean v8, v8, Ln91$b;->b:Z

    if-eqz v8, :cond_11

    sget-object v8, Lr71$a;->d:Lr71$a;

    invoke-virtual {v8}, Lr71$a;->a()Z

    move-result v8

    if-eqz v8, :cond_11

    sget-object v8, Lq71$e;->d:Lq71$e;

    if-eq v1, v8, :cond_10

    iget-wide v8, v2, Ll81;->f:J

    iget-object v10, v5, Lz91$e;->c:Lq71$e;

    invoke-static {v8, v9, v10}, Lfa1;->H(JLq71$e;)V

    :cond_10
    if-ne v1, v3, :cond_11

    goto :goto_7

    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Ll81;->m:Li91;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lz91$e;->b:Ln91$b;

    iget-object v5, v5, Ln91$b;->a:Ln91$a;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_6

    :cond_12
    if-eq v1, v3, :cond_13

    iget v3, v2, Ll81;->n:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_13

    iget-object v3, v2, Ll81;->m:Li91;

    iget-object v5, v2, Ll81;->l:Ljava/lang/String;

    invoke-static {v3, v5}, Lz91;->l(Li91;Ljava/lang/String;)Lz91$f;

    move-result-object v3

    if-eqz v3, :cond_13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Ll81;->m:Li91;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-wide v5, v3, Lz91$f;->b:J

    iput-wide v5, v2, Ll81;->w:J

    iget-wide v5, v3, Lz91$f;->c:J

    iput-wide v5, v2, Ll81;->x:J

    invoke-virtual {v3}, Lz91$g;->a()V

    :cond_13
    :goto_6
    sget-object v3, Lq71$e;->d:Lq71$e;

    if-ne v1, v3, :cond_14

    invoke-static {v2}, Lfa1$d;->b(Ll81;)Z

    move-result v5

    if-nez v5, :cond_14

    iget-boolean v5, v2, Ll81;->j:Z

    if-nez v5, :cond_14

    :goto_7
    move-object v3, v4

    move/from16 v2, v20

    move-object/from16 v33, v31

    const/4 v4, 0x1

    goto/16 :goto_13

    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v2, Ll81;->s:J

    sub-long/2addr v5, v7

    cmp-long v7, v5, v23

    if-lez v7, :cond_15

    invoke-virtual {v2}, Ll81;->z0()Ll81;

    :cond_15
    iget-boolean v5, v2, Ll81;->j:Z

    if-eqz v5, :cond_17

    const-wide/16 v5, 0x0

    iput-wide v5, v2, Ll81;->f:J

    sget-object v7, Lq71$e;->c:Lq71$e;

    if-eq v1, v7, :cond_16

    if-ne v1, v3, :cond_17

    :cond_16
    invoke-static {}, Lfa1;->u()Z

    move-result v7

    if-nez v7, :cond_17

    iput-wide v5, v2, Ll81;->u:J

    invoke-virtual {v2}, Ll81;->F()V

    :cond_17
    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Ll81;->m:Li91;

    invoke-virtual {v6}, Li91;->p()Z

    move-result v6

    if-nez v6, :cond_19

    if-eqz v5, :cond_18

    iget-object v6, v2, Ll81;->m:Li91;

    invoke-virtual {v6}, Li91;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_8

    :cond_18
    const/4 v5, 0x0

    goto :goto_9

    :cond_19
    :goto_8
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ll81;->C0(I)V

    :goto_9
    iget v6, v2, Ll81;->n:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_1b

    invoke-virtual {v2, v5}, Ll81;->C0(I)V

    iget-object v6, v2, Ll81;->h:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1a

    iget-object v6, v2, Ll81;->m:Li91;

    invoke-virtual {v6}, Li91;->m()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Ll81;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    :cond_1a
    new-instance v6, Ll81;

    invoke-direct {v6}, Ll81;-><init>()V

    iget-object v7, v2, Ll81;->m:Li91;

    invoke-virtual {v6, v7}, Ll81;->u0(Li91;)Ll81;

    iget-wide v9, v6, Ll81;->d:J

    const-wide/16 v18, 0x0

    cmp-long v7, v9, v18

    if-lez v7, :cond_1b

    iget-object v7, v6, Ll81;->h:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1b

    iget-object v6, v6, Ll81;->h:Ljava/lang/String;

    iput-object v6, v2, Ll81;->h:Ljava/lang/String;

    :cond_1b
    invoke-virtual {v2}, Ll81;->E()Z

    invoke-virtual {v2}, Lv71;->z()Z

    move-result v6

    if-nez v6, :cond_1c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Ll81;->h:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v2, Ll81;->f:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :cond_1c
    if-ne v1, v3, :cond_1d

    iget-boolean v6, v2, Ll81;->j:Z

    if-eqz v6, :cond_1d

    move-wide/from16 v6, v32

    invoke-static {v6, v7, v1}, Lfa1;->H(JLq71$e;)V

    :cond_1d
    :goto_a
    invoke-virtual {v2}, Ll81;->s0()Z

    move-result v6

    if-nez v6, :cond_1f

    sget-object v6, Lq71$e;->c:Lq71$e;

    if-eq v1, v6, :cond_1e

    if-ne v1, v3, :cond_1f

    :cond_1e
    iget-boolean v3, v2, Ll81;->j:Z

    invoke-static {v1, v3}, Lr71;->G(Lq71$e;Z)V

    :cond_1f
    iget-wide v2, v2, Ll81;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object v3, v4

    move-object/from16 v33, v31

    const/4 v4, 0x1

    goto/16 :goto_12

    :cond_20
    move-object/from16 v31, v4

    move-object v4, v8

    const/4 v5, 0x0

    const/4 v8, 0x2

    invoke-virtual {v2}, Ll81;->q0()Ljava/lang/String;

    move-result-object v9

    move-object v10, v6

    iget-wide v5, v2, Ll81;->f:J

    invoke-virtual {v13, v5, v6}, Le4;->h(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll81$b;

    iget-object v5, v5, Ll81$b;->a:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Record update "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ll81;->q0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " != "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v2, Ll81;->f:J

    invoke-virtual {v13, v8, v9}, Le4;->h(J)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v5, Ll81;

    invoke-direct {v5}, Ll81;-><init>()V

    iget-wide v8, v2, Ll81;->f:J

    invoke-virtual {v5, v8, v9, v1}, Ll81;->a0(JLq71$e;)Ll81;

    iget v6, v5, Ll81;->n:I

    iget-object v8, v5, Ll81;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ll81;->s0()Z

    move-result v9

    move/from16 v32, v11

    move-object/from16 v11, v31

    move-object/from16 v31, v4

    const/4 v4, 0x1

    invoke-virtual {v5, v11, v1, v4}, Ll81;->R(Landroid/database/Cursor;Lq71$e;Z)Ll81;

    iget-object v4, v5, Ll81;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    iget-object v4, v5, Ll81;->m:Li91;

    invoke-virtual {v4}, Li91;->m()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v33, v11

    iget-object v11, v5, Ll81;->h:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_b

    :cond_21
    move-object/from16 v33, v11

    :goto_b
    iput-object v8, v5, Ll81;->h:Ljava/lang/String;

    :cond_22
    sget-object v4, Lq71$e;->c:Lq71$e;

    if-eq v1, v4, :cond_23

    sget-object v4, Lq71$e;->d:Lq71$e;

    if-ne v1, v4, :cond_24

    :cond_23
    invoke-static {}, Lfa1;->u()Z

    move-result v4

    if-nez v4, :cond_25

    :cond_24
    iget v4, v2, Ll81;->n:I

    iput v4, v5, Ll81;->n:I

    if-ne v1, v3, :cond_27

    invoke-static {}, Lc91;->c()Lc91;

    move-result-object v4

    iget v6, v2, Ll81;->n:I

    invoke-virtual {v4, v6}, Lc91;->a(I)I

    move-result v4

    iput v4, v5, Ll81;->n:I

    if-eqz v9, :cond_26

    goto :goto_c

    :cond_25
    iput v6, v5, Ll81;->n:I

    if-eqz v9, :cond_26

    :goto_c
    invoke-virtual {v5}, Ll81;->z0()Ll81;

    goto :goto_d

    :cond_26
    invoke-virtual {v5}, Ll81;->B0()Ll81;

    :cond_27
    :goto_d
    iget-object v4, v2, Ll81;->m:Li91;

    invoke-static {v4}, Lz91;->k(Li91;)Lz91$e;

    move-result-object v4

    if-eqz v4, :cond_2b

    iget-object v3, v4, Lz91$e;->b:Ln91$b;

    iget-object v6, v3, Ln91$b;->a:Ln91$a;

    iput-object v6, v5, Ll81;->p:Ln91$a;

    iget-object v6, v3, Ln91$b;->g:Ljava/lang/Integer;

    iput-object v6, v5, Ll81;->q:Ljava/lang/Integer;

    iget-boolean v3, v3, Ln91$b;->b:Z

    if-eqz v3, :cond_28

    sget-object v3, Lr71$a;->d:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    goto :goto_e

    :cond_28
    const/4 v3, 0x0

    :goto_e
    iput-boolean v3, v5, Ll81;->j:Z

    iget-object v3, v4, Lz91$e;->b:Ln91$b;

    iget-object v6, v3, Ln91$b;->d:Ljava/lang/String;

    iput-object v6, v2, Ll81;->k:Ljava/lang/String;

    iget-object v3, v3, Ln91$b;->f:Ljava/lang/String;

    if-eqz v3, :cond_29

    iget-object v3, v2, Ll81;->m:Li91;

    invoke-virtual {v3}, Li91;->m()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v2, Ll81;->h:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, v4, Lz91$e;->b:Ln91$b;

    iget-object v3, v3, Ln91$b;->f:Ljava/lang/String;

    iput-object v3, v2, Ll81;->h:Ljava/lang/String;

    :cond_29
    iget-object v3, v4, Lz91$e;->b:Ln91$b;

    iget-boolean v3, v3, Ln91$b;->b:Z

    if-eqz v3, :cond_2a

    sget-object v3, Lr71$a;->d:Lr71$a;

    invoke-virtual {v3}, Lr71$a;->a()Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-wide v8, v2, Ll81;->f:J

    iget-object v3, v4, Lz91$e;->c:Lq71$e;

    invoke-static {v8, v9, v3}, Lfa1;->H(JLq71$e;)V

    :cond_2a
    invoke-virtual {v4}, Lz91$g;->a()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Ll81;->m:Li91;

    invoke-virtual {v6}, Li91;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lz91$e;->b:Ln91$b;

    iget-object v4, v4, Ln91$b;->a:Ln91$a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_f

    :cond_2b
    if-eq v1, v3, :cond_2c

    iget v3, v2, Ll81;->n:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2d

    iget-object v3, v2, Ll81;->m:Li91;

    iget-object v6, v2, Ll81;->l:Ljava/lang/String;

    invoke-static {v3, v6}, Lz91;->l(Li91;Ljava/lang/String;)Lz91$f;

    move-result-object v3

    if-eqz v3, :cond_2d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Ll81;->m:Li91;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-wide v6, v3, Lz91$f;->b:J

    iput-wide v6, v2, Ll81;->w:J

    iget-wide v6, v3, Lz91$f;->c:J

    iput-wide v6, v2, Ll81;->x:J

    invoke-virtual {v3}, Lz91$g;->a()V

    goto :goto_10

    :cond_2c
    :goto_f
    const/4 v4, 0x1

    :cond_2d
    :goto_10
    iget-boolean v3, v5, Ll81;->j:Z

    if-eqz v3, :cond_2e

    const-wide/16 v6, 0x0

    iput-wide v6, v2, Ll81;->f:J

    :cond_2e
    invoke-virtual {v5}, Ll81;->E()Z

    invoke-virtual {v5}, Lv71;->z()Z

    move-result v3

    if-eqz v3, :cond_2f

    add-int/lit8 v20, v20, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Record updated "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Ll81;->h:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Ll81;->f:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_11

    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to update record "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Ll81;->h:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v2, Ll81;->f:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_11

    :cond_30
    move/from16 v32, v11

    move-object/from16 v33, v31

    move-object/from16 v31, v4

    const/4 v4, 0x1

    :goto_11
    iget-wide v5, v2, Ll81;->f:J

    invoke-virtual {v13, v5, v6}, Le4;->m(J)V

    iget-wide v2, v2, Ll81;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v3, v31

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v11, v32

    :goto_12
    add-int v2, v11, v20

    int-to-long v5, v2

    const-wide/16 v7, 0xa

    rem-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_32

    iget-wide v5, v0, Lz91;->f:J

    const-wide/16 v7, 0x3e8

    cmp-long v2, v5, v7

    if-gez v2, :cond_31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v9, v0, Lz91;->e:J

    sub-long/2addr v5, v9

    cmp-long v2, v5, v23

    if-lez v2, :cond_31

    iget-wide v5, v0, Lz91;->f:J

    const-wide/16 v9, 0x14

    add-long/2addr v5, v9

    iput-wide v5, v0, Lz91;->f:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    iput-wide v5, v0, Lz91;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lz91;->e:J

    :cond_31
    :try_start_0
    iget-wide v5, v0, Lz91;->f:J

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_32
    move/from16 v2, v20

    :goto_13
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_37

    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v13}, Lka1;->c(Le4;)[Ljava/lang/Long;

    move-result-object v4

    array-length v5, v4

    const/4 v10, 0x0

    :goto_14
    if-ge v10, v5, :cond_34

    aget-object v6, v4, v10

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v13, v7, v8}, Le4;->h(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ll81$b;

    iget-boolean v7, v7, Ll81$b;->b:Z

    if-nez v7, :cond_33

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    :cond_34
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v5, v4, [Ljava/lang/Long;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v6, Ll81;

    invoke-direct {v6}, Ll81;-><init>()V

    if-lez v4, :cond_35

    invoke-virtual {v6, v5}, Ll81;->N([Ljava/lang/Long;)Z

    :cond_35
    const-wide/16 v7, 0x0

    cmp-long v4, v29, v7

    if-lez v4, :cond_36

    const-wide/32 v4, 0x493e0

    sub-long v4, v29, v4

    invoke-virtual {v6, v4, v5}, Ll81;->P(J)V

    :cond_36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sync finished. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v28

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " total phone/us, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " new, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " updated, "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " deleted"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Lj91;->E(Ljava/lang/String;)Ljava/lang/Long;

    sget-object v2, Lz91;->j:Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Lq71$e;->b()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lm91$c;->c:Lm91$c;

    invoke-static {v0, v2, v1}, Lm91;->a(Ljava/lang/Object;Lm91$c;Ljava/lang/Object;)V

    iget-object v1, v0, Lz91;->c:[Ljava/util/concurrent/ScheduledExecutorService;

    aget-object v1, v1, p2

    new-instance v2, Lz91$b;

    invoke-direct {v2, v0}, Lz91$b;-><init>(Lz91;)V

    const-wide/16 v3, 0x12c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_37
    move/from16 v20, v2

    move-object v8, v3

    move/from16 v5, v22

    move/from16 v9, v25

    move-object/from16 v3, v26

    move/from16 v14, v27

    move/from16 v15, v28

    move-wide/from16 v6, v29

    move-object/from16 v4, v33

    const/4 v12, 0x1

    move/from16 v2, p2

    goto/16 :goto_2

    :cond_38
    :goto_15
    move-object/from16 v33, v4

    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public final t()V
    .locals 6

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lz91;->b:[Lz91$d;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz91;->c:[Ljava/util/concurrent/ScheduledExecutorService;

    array-length v1, v0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v2, v0, v3

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lz91;->c:[Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method
