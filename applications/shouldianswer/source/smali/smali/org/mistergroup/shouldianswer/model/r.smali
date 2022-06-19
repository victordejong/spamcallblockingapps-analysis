.class public final Lorg/mistergroup/shouldianswer/model/r;
.super Ljava/util/Observable;
.source "CheckedCalls.kt"


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/model/r;

.field private static b:I

.field private static final c:Lorg/mistergroup/shouldianswer/model/p;

.field private static d:J

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lorg/mistergroup/shouldianswer/model/r;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/r;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/r;->a:Lorg/mistergroup/shouldianswer/model/r;

    const v0, 0x15f90

    .line 15
    sput v0, Lorg/mistergroup/shouldianswer/model/r;->b:I

    .line 17
    sget-object v0, Lorg/mistergroup/shouldianswer/model/AppDatabase;->d:Lorg/mistergroup/shouldianswer/model/AppDatabase$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/AppDatabase$a;->a()Lorg/mistergroup/shouldianswer/model/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/AppDatabase;->m()Lorg/mistergroup/shouldianswer/model/p;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/model/r;->c:Lorg/mistergroup/shouldianswer/model/p;

    const-string v0, ""

    .line 20
    sput-object v0, Lorg/mistergroup/shouldianswer/model/r;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method private final b(Ljava/lang/String;J)Lorg/mistergroup/shouldianswer/model/o;
    .locals 6

    const/4 v0, 0x0

    .line 58
    :try_start_0
    sget-object v1, Lorg/mistergroup/shouldianswer/model/r;->c:Lorg/mistergroup/shouldianswer/model/p;

    invoke-interface {v1, p1, p2, p3}, Lorg/mistergroup/shouldianswer/model/p;->b(Ljava/lang/String;J)Lorg/mistergroup/shouldianswer/model/o;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/o;->i()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 61
    sget v4, Lorg/mistergroup/shouldianswer/model/r;->b:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    return-object v1

    .line 65
    :cond_1
    sget-object v1, Lorg/mistergroup/shouldianswer/model/r;->c:Lorg/mistergroup/shouldianswer/model/p;

    invoke-interface {v1, p1, p2, p3}, Lorg/mistergroup/shouldianswer/model/p;->a(Ljava/lang/String;J)Lorg/mistergroup/shouldianswer/model/o;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 67
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/o;->i()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    .line 68
    sget v1, Lorg/mistergroup/shouldianswer/model/r;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v1, v1

    cmp-long p2, p2, v1

    if-gez p2, :cond_3

    return-object p1

    :catch_0
    move-exception p1

    .line 72
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 p3, 0x2

    invoke-static {p2, p1, v0, p3, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            "J",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    instance-of v3, v2, Lorg/mistergroup/shouldianswer/model/r$a;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/mistergroup/shouldianswer/model/r$a;

    iget v4, v3, Lorg/mistergroup/shouldianswer/model/r$a;->b:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lorg/mistergroup/shouldianswer/model/r$a;->b:I

    sub-int/2addr v2, v5

    iput v2, v3, Lorg/mistergroup/shouldianswer/model/r$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/mistergroup/shouldianswer/model/r$a;

    invoke-direct {v3, v1, v2}, Lorg/mistergroup/shouldianswer/model/r$a;-><init>(Lorg/mistergroup/shouldianswer/model/r;Lkotlin/c/c;)V

    :goto_0
    iget-object v2, v3, Lorg/mistergroup/shouldianswer/model/r$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v4

    .line 27
    iget v5, v3, Lorg/mistergroup/shouldianswer/model/r$a;->b:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v6, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v0, v3, Lorg/mistergroup/shouldianswer/model/r$a;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-wide v4, v3, Lorg/mistergroup/shouldianswer/model/r$a;->h:J

    iget-wide v4, v3, Lorg/mistergroup/shouldianswer/model/r$a;->g:J

    iget-object v0, v3, Lorg/mistergroup/shouldianswer/model/r$a;->e:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v0, v3, Lorg/mistergroup/shouldianswer/model/r$a;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/r;

    :try_start_0
    invoke-static {v2}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_2
    iget-wide v9, v3, Lorg/mistergroup/shouldianswer/model/r$a;->g:J

    iget-object v0, v3, Lorg/mistergroup/shouldianswer/model/r$a;->e:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v5, v3, Lorg/mistergroup/shouldianswer/model/r$a;->d:Ljava/lang/Object;

    check-cast v5, Lorg/mistergroup/shouldianswer/model/r;

    :try_start_1
    invoke-static {v2}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 29
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v2

    if-eqz v2, :cond_5

    iput-object v1, v3, Lorg/mistergroup/shouldianswer/model/r$a;->d:Ljava/lang/Object;

    iput-object v0, v3, Lorg/mistergroup/shouldianswer/model/r$a;->e:Ljava/lang/Object;

    move-wide/from16 v9, p2

    iput-wide v9, v3, Lorg/mistergroup/shouldianswer/model/r$a;->g:J

    iput v6, v3, Lorg/mistergroup/shouldianswer/model/r$a;->b:I

    invoke-virtual {v0, v3}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_4

    return-object v4

    :cond_4
    move-object v5, v1

    .line 27
    :goto_1
    check-cast v2, Lorg/mistergroup/shouldianswer/model/ag;

    sget-object v11, Lorg/mistergroup/shouldianswer/model/ag;->c:Lorg/mistergroup/shouldianswer/model/ag;

    if-eq v2, v11, :cond_6

    .line 30
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v11, "CheckedCalls.add skipped due number is in contacts!"

    invoke-static {v2, v11, v8, v7, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :cond_5
    move-wide/from16 v9, p2

    move-object v5, v1

    .line 32
    :cond_6
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 33
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v2

    .line 34
    sget-object v13, Lorg/mistergroup/shouldianswer/model/r;->e:Ljava/lang/String;

    invoke-static {v2, v13}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    sget-wide v13, Lorg/mistergroup/shouldianswer/model/r;->d:J

    sub-long v13, v11, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const/16 v15, 0x3e8

    int-to-long v6, v15

    cmp-long v6, v13, v6

    if-gez v6, :cond_7

    .line 35
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "CheckedCalls.add skipped due last write in less than 1 second"

    const/4 v3, 0x2

    invoke-static {v0, v2, v8, v3, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 36
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0

    .line 38
    :cond_7
    sput-wide v11, Lorg/mistergroup/shouldianswer/model/r;->d:J

    .line 39
    sput-object v2, Lorg/mistergroup/shouldianswer/model/r;->e:Ljava/lang/String;

    .line 40
    sget-object v6, Lorg/mistergroup/shouldianswer/model/o;->a:Lorg/mistergroup/shouldianswer/model/o$a;

    iput-object v5, v3, Lorg/mistergroup/shouldianswer/model/r$a;->d:Ljava/lang/Object;

    iput-object v0, v3, Lorg/mistergroup/shouldianswer/model/r$a;->e:Ljava/lang/Object;

    iput-wide v9, v3, Lorg/mistergroup/shouldianswer/model/r$a;->g:J

    iput-wide v11, v3, Lorg/mistergroup/shouldianswer/model/r$a;->h:J

    iput-object v2, v3, Lorg/mistergroup/shouldianswer/model/r$a;->f:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v3, Lorg/mistergroup/shouldianswer/model/r$a;->b:I

    invoke-virtual {v6, v0, v9, v10, v3}, Lorg/mistergroup/shouldianswer/model/o$a;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_8

    return-object v4

    :cond_8
    move-object v0, v5

    .line 27
    :goto_3
    check-cast v2, Lorg/mistergroup/shouldianswer/model/o;

    .line 41
    sget-object v3, Lorg/mistergroup/shouldianswer/model/r;->c:Lorg/mistergroup/shouldianswer/model/p;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/mistergroup/shouldianswer/model/o;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-interface {v3, v4}, Lorg/mistergroup/shouldianswer/model/p;->a([Lorg/mistergroup/shouldianswer/model/o;)V

    .line 42
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/r;->setChanged()V

    .line 43
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/r;->notifyObservers()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 45
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x2

    invoke-static {v2, v0, v8, v3, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 48
    :goto_4
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/o;",
            ">;"
        }
    .end annotation

    .line 24
    sget-object v0, Lorg/mistergroup/shouldianswer/model/r;->c:Lorg/mistergroup/shouldianswer/model/p;

    sget-object v1, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/c;->u()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/mistergroup/shouldianswer/model/p;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)Z
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lorg/mistergroup/shouldianswer/model/r;->b(Ljava/lang/String;J)Lorg/mistergroup/shouldianswer/model/o;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/o;->h()Lorg/mistergroup/shouldianswer/model/h;

    move-result-object p1

    sget-object p3, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    if-eq p1, p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method
