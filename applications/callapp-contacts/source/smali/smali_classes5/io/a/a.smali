.class public Lio/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/a/a$f;,
        Lio/a/a$c;,
        Lio/a/a$g;,
        Lio/a/a$d;,
        Lio/a/a$b;,
        Lio/a/a$a;,
        Lio/a/a$e;
    }
.end annotation


# static fields
.field static final a:Ljava/util/logging/Logger;

.field public static final b:Lio/a/a;

.field private static final f:Lio/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/a/c<",
            "Lio/a/a$d<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final c:Lio/a/a$a;

.field public final d:Lio/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/a/c<",
            "Lio/a/a$d<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final e:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/a/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lio/a/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 100
    const-class v0, Lio/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/a/a;->a:Ljava/util/logging/Logger;

    .line 102
    new-instance v0, Lio/a/c;

    invoke-direct {v0}, Lio/a/c;-><init>()V

    sput-object v0, Lio/a/a;->f:Lio/a/c;

    .line 117
    new-instance v1, Lio/a/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lio/a/a;-><init>(Lio/a/a;Lio/a/c;)V

    sput-object v1, Lio/a/a;->b:Lio/a/a;

    return-void
.end method

.method public constructor <init>(Lio/a/a;Lio/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/a/a;",
            "Lio/a/c<",
            "Lio/a/a$d<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Lio/a/a$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/a/a$f;-><init>(Lio/a/a;Lio/a/a$1;)V

    iput-object v0, p0, Lio/a/a;->h:Lio/a/a$b;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2078
    :cond_0
    instance-of v0, p1, Lio/a/a$a;

    if-eqz v0, :cond_1

    .line 2079
    move-object v1, p1

    check-cast v1, Lio/a/a$a;

    goto :goto_0

    .line 2083
    :cond_1
    iget-object v1, p1, Lio/a/a;->c:Lio/a/a$a;

    .line 210
    :goto_0
    iput-object v1, p0, Lio/a/a;->c:Lio/a/a$a;

    .line 211
    iput-object p2, p0, Lio/a/a;->d:Lio/a/c;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    .line 212
    :cond_2
    iget p1, p1, Lio/a/a;->e:I

    add-int/lit8 p1, p1, 0x1

    :goto_1
    iput p1, p0, Lio/a/a;->e:I

    .line 213
    invoke-static {p1}, Lio/a/a;->a(I)V

    return-void
.end method

.method synthetic constructor <init>(Lio/a/a;Lio/a/c;Lio/a/a$1;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lio/a/a;-><init>(Lio/a/a;Lio/a/c;)V

    return-void
.end method

.method private constructor <init>(Lio/a/c;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/a/c<",
            "Lio/a/a$d<",
            "*>;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Lio/a/a$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/a/a$f;-><init>(Lio/a/a;Lio/a/a$1;)V

    iput-object v0, p0, Lio/a/a;->h:Lio/a/a$b;

    .line 199
    iput-object v1, p0, Lio/a/a;->c:Lio/a/a$a;

    .line 200
    iput-object p1, p0, Lio/a/a;->d:Lio/a/c;

    .line 201
    iput p2, p0, Lio/a/a;->e:I

    .line 202
    invoke-static {p2}, Lio/a/a;->a(I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lio/a/a$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lio/a/a$d<",
            "TT;>;"
        }
    .end annotation

    .line 162
    new-instance v0, Lio/a/a$d;

    invoke-direct {v0, p0}, Lio/a/a$d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a()Lio/a/a;
    .locals 1

    .line 1121
    sget-object v0, Lio/a/a$e;->a:Lio/a/a$g;

    .line 181
    invoke-virtual {v0}, Lio/a/a$g;->a()Lio/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    sget-object v0, Lio/a/a;->b:Lio/a/a;

    :cond_0
    return-object v0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 1051
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(I)V
    .locals 3

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    .line 1092
    sget-object p0, Lio/a/a;->a:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000"

    invoke-virtual {p0, v0, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lio/a/a$b;)V
    .locals 2

    .line 528
    invoke-virtual {p0}, Lio/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 531
    :cond_0
    monitor-enter p0

    .line 532
    :try_start_0
    iget-object v0, p0, Lio/a/a;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 533
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 534
    iget-object v1, p0, Lio/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/a/a$c;

    iget-object v1, v1, Lio/a/a$c;->a:Lio/a/a$b;

    if-ne v1, p1, :cond_1

    .line 535
    iget-object p1, p0, Lio/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 542
    :cond_2
    :goto_1
    iget-object p1, p0, Lio/a/a;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 543
    iget-object p1, p0, Lio/a/a;->c:Lio/a/a$a;

    if-eqz p1, :cond_3

    .line 544
    iget-object v0, p0, Lio/a/a;->h:Lio/a/a$b;

    invoke-virtual {p1, v0}, Lio/a/a$a;->a(Lio/a/a$b;)V

    :cond_3
    const/4 p1, 0x0

    .line 546
    iput-object p1, p0, Lio/a/a;->g:Ljava/util/ArrayList;

    .line 549
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

.method public a(Lio/a/a;)V
    .locals 1

    const-string v0, "toAttach"

    .line 447
    invoke-static {p1, v0}, Lio/a/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3121
    sget-object v0, Lio/a/a$e;->a:Lio/a/a$g;

    .line 448
    invoke-virtual {v0, p0, p1}, Lio/a/a$g;->a(Lio/a/a;Lio/a/a;)V

    return-void
.end method

.method b()Z
    .locals 1

    .line 402
    iget-object v0, p0, Lio/a/a;->c:Lio/a/a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Lio/a/a;
    .locals 1

    .line 2121
    sget-object v0, Lio/a/a$e;->a:Lio/a/a$g;

    .line 425
    invoke-virtual {v0, p0}, Lio/a/a$g;->a(Lio/a/a;)Lio/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 427
    sget-object v0, Lio/a/a;->b:Lio/a/a;

    :cond_0
    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 460
    iget-object v0, p0, Lio/a/a;->c:Lio/a/a$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 463
    :cond_0
    invoke-virtual {v0}, Lio/a/a$a;->d()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/Throwable;
    .locals 1

    .line 476
    iget-object v0, p0, Lio/a/a;->c:Lio/a/a$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 479
    :cond_0
    invoke-virtual {v0}, Lio/a/a$a;->e()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public f()Lio/a/b;
    .locals 1

    .line 488
    iget-object v0, p0, Lio/a/a;->c:Lio/a/a$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3876
    :cond_0
    iget-object v0, v0, Lio/a/a$a;->f:Lio/a/b;

    return-object v0
.end method

.method final g()V
    .locals 4

    .line 557
    invoke-virtual {p0}, Lio/a/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 561
    :cond_0
    monitor-enter p0

    .line 562
    :try_start_0
    iget-object v0, p0, Lio/a/a;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 563
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 566
    iput-object v1, p0, Lio/a/a;->g:Ljava/util/ArrayList;

    .line 567
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 572
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 573
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/a/a$c;

    iget-object v3, v3, Lio/a/a$c;->a:Lio/a/a$b;

    instance-of v3, v3, Lio/a/a$f;

    if-nez v3, :cond_2

    .line 574
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/a/a$c;

    invoke-virtual {v3}, Lio/a/a$c;->a()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 577
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 578
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/a/a$c;

    iget-object v2, v2, Lio/a/a$c;->a:Lio/a/a$b;

    instance-of v2, v2, Lio/a/a$f;

    if-eqz v2, :cond_4

    .line 579
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/a/a$c;

    invoke-virtual {v2}, Lio/a/a$c;->a()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 582
    :cond_5
    iget-object v0, p0, Lio/a/a;->c:Lio/a/a$a;

    if-eqz v0, :cond_6

    .line 583
    iget-object v1, p0, Lio/a/a;->h:Lio/a/a$b;

    invoke-virtual {v0, v1}, Lio/a/a$a;->a(Lio/a/a$b;)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 567
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
