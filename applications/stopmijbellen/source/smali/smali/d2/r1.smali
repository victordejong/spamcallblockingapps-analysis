.class public Ld2/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Ld2/r1;


# instance fields
.field public a:Ld2/o1;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public c:Ld2/w1;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ld2/i3;->F()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ld2/r1;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ld2/r1;->c:Ld2/w1;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Ld2/r1;->d:Z

    return-void
.end method

.method public static a(Ld2/f4;Ld2/o1$a;)Landroid/content/ContentValues;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    iget-object p1, p1, Ld2/o1$a;->f:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/o1$b;

    .line 4
    iget-object v2, v1, Ld2/o1$b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v2}, Ld2/f4;->n(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 7
    iget-object v1, v1, Ld2/o1$b;->a:Ljava/lang/String;

    .line 8
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 9
    :cond_1
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_2

    .line 10
    iget-object v1, v1, Ld2/o1$b;->a:Ljava/lang/String;

    .line 11
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 12
    :cond_2
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_3

    .line 13
    iget-object v1, v1, Ld2/o1$b;->a:Ljava/lang/String;

    .line 14
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 15
    :cond_3
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_5

    .line 16
    check-cast v2, Ljava/lang/Number;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    long-to-double v5, v5

    cmpl-double v7, v3, v5

    if-nez v7, :cond_4

    .line 18
    iget-object v3, v1, Ld2/o1$b;->b:Ljava/lang/String;

    const-string v4, "INTEGER"

    .line 19
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 20
    iget-object v1, v1, Ld2/o1$b;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 22
    :cond_4
    iget-object v1, v1, Ld2/o1$b;->a:Ljava/lang/String;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 24
    :cond_5
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 25
    iget-object v1, v1, Ld2/o1$b;->a:Ljava/lang/String;

    .line 26
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public static c()Ld2/r1;
    .locals 2

    .line 1
    sget-object v0, Ld2/r1;->e:Ld2/r1;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Ld2/r1;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Ld2/r1;->e:Ld2/r1;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ld2/r1;

    invoke-direct {v1}, Ld2/r1;-><init>()V

    sput-object v1, Ld2/r1;->e:Ld2/r1;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Ld2/r1;->e:Ld2/r1;

    return-object v0
.end method


# virtual methods
.method public b(Ld2/a;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld2/a<",
            "Ld2/w1;",
            ">;J)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld2/r1;->a:Ld2/o1;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-interface {p1, p2}, Ld2/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Ld2/r1;->d:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object p2, p0, Ld2/r1;->c:Ld2/w1;

    invoke-interface {p1, p2}, Ld2/a;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Ld2/r1;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ld2/r1$a;

    invoke-direct {v1, p0, p1, p2, p3}, Ld2/r1$a;-><init>(Ld2/r1;Ld2/a;J)V

    invoke-static {v0, v1}, Ld2/i3;->m(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Execute ADCOdtEventsListener.calculateFeatureVectors failed"

    .line 6
    invoke-static {p1}, Landroidx/recyclerview/widget/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 7
    invoke-static {p3, p3, p1, p2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method
