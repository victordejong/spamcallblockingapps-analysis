.class public final Lorg/mistergroup/shouldianswer/ui/main/c/j;
.super Ljava/lang/Object;
.source "LogsDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/main/c/j$a;,
        Lorg/mistergroup/shouldianswer/ui/main/c/j$b;
    }
.end annotation


# instance fields
.field public a:Lorg/mistergroup/shouldianswer/ui/main/c/h;

.field private b:Z

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/mistergroup/shouldianswer/ui/main/c/j$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private final h:Ljava/lang/String;

.field private final i:Lorg/mistergroup/shouldianswer/model/j;

.field private j:Landroid/database/ContentObserver;

.field private k:Z

.field private l:Lorg/mistergroup/shouldianswer/model/j$b;

.field private final m:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/ui/main/c/j$a;)V
    .locals 1

    const-string v0, "filterType"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b:Z

    .line 52
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c:Ljava/util/LinkedList;

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calllog-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->h:Ljava/lang/String;

    .line 58
    new-instance p1, Lorg/mistergroup/shouldianswer/model/j;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/mistergroup/shouldianswer/model/j;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->i:Lorg/mistergroup/shouldianswer/model/j;

    .line 62
    new-instance p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j$1;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j;Landroid/os/Handler;)V

    check-cast p1, Landroid/database/ContentObserver;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->j:Landroid/database/ContentObserver;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/main/c/j;)I
    .locals 0

    .line 23
    iget p0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->d:I

    return p0
.end method

.method static synthetic a(Lorg/mistergroup/shouldianswer/ui/main/c/j;Ljava/util/ArrayList;Lkotlin/c/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 192
    check-cast p1, Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a(Ljava/util/ArrayList;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/main/c/j;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a(Z)V

    return-void
.end method

.method private final a(Z)V
    .locals 8

    .line 170
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->d:I

    .line 171
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->d:I

    .line 172
    sget-object v1, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/c/f;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;

    const/4 v4, 0x0

    invoke-direct {v1, p0, p1, v0, v4}, Lorg/mistergroup/shouldianswer/ui/main/c/j$i;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j;ZILkotlin/c/c;)V

    move-object v5, v1

    check-cast v5, Lkotlin/e/a/m;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/main/c/j;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->h:Ljava/lang/String;

    return-object p0
.end method

.method private final g()Z
    .locals 5

    .line 72
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 74
    :cond_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->h:Ljava/lang/String;

    const-string v3, "LogsDataSourceCallLog.registerObserver"

    invoke-virtual {v0, v3, v2}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :try_start_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->f()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->b()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->j:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 78
    iput-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->e:Z

    .line 79
    iput-boolean v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->g:Z

    move v2, v1

    goto :goto_0

    .line 81
    :cond_1
    iput-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->g:Z

    .line 82
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "LogsDataSourceCallLog.registerObservers - permission NOT granted!"

    if-nez v0, :cond_2

    .line 83
    :try_start_1
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->h:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 84
    iput-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->f:Z

    goto :goto_0

    .line 86
    :cond_2
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->h:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    :goto_0
    :try_start_2
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->b()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->j:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move v2, v1

    .line 104
    :goto_1
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_2
    return v2
.end method

.method private final h()V
    .locals 2

    .line 110
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->b()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->j:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->e:Z

    return-void
.end method

.method private final i()V
    .locals 10

    .line 130
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/u;->a()J

    move-result-wide v0

    .line 131
    sget-object v2, Lorg/mistergroup/shouldianswer/ui/main/c/o;->a:Lorg/mistergroup/shouldianswer/ui/main/c/o;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/main/c/o;->a()V

    .line 132
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 133
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "sections[sectionIndex]"

    invoke-static {v5, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    .line 134
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_1

    .line 135
    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    .line 136
    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->d()V

    .line 137
    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    if-nez v8, :cond_0

    const-string v9, "adapter"

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v8, v4, v7}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->c(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 140
    :cond_2
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogsDataSourceCallLog.invalidate in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v4, v0, v1}, Lorg/mistergroup/shouldianswer/utils/u;->a(J)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->h:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(ILkotlin/c/c;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;

    iget v3, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->b:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->b:I

    sub-int/2addr v1, v4

    iput v1, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->b:I

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;

    invoke-direct {v2, v0, v1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j;Lkotlin/c/c;)V

    :goto_0
    iget-object v1, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v3

    .line 336
    iget v4, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->b:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-wide v3, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->p:J

    iget-object v3, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->h:Ljava/lang/Object;

    check-cast v3, Lkotlin/e/b/m$c;

    iget-object v3, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->g:Ljava/lang/Object;

    check-cast v3, Lkotlin/e/b/m$c;

    iget-object v3, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iget v3, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->n:I

    iget-object v4, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->e:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    iget-wide v4, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->o:J

    iget v4, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->m:I

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->d:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object v1, v2

    goto/16 :goto_10

    .line 426
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_2
    iget-object v4, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->l:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v4, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->k:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    iget-object v4, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->j:Ljava/lang/Object;

    check-cast v4, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    iget-object v10, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->i:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/model/j$b;

    iget-object v11, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->h:Ljava/lang/Object;

    check-cast v11, Lkotlin/e/b/m$c;

    iget-object v12, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->g:Ljava/lang/Object;

    check-cast v12, Lkotlin/e/b/m$c;

    iget-object v13, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->f:Ljava/lang/Object;

    check-cast v13, Ljava/util/ArrayList;

    iget v14, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->n:I

    iget-object v15, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->e:Ljava/lang/Object;

    check-cast v15, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    iget-wide v5, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->o:J

    iget v7, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->m:I

    iget-object v9, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->d:Ljava/lang/Object;

    check-cast v9, Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_5

    :cond_3
    iget-object v4, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->h:Ljava/lang/Object;

    check-cast v4, Lkotlin/e/b/m$c;

    iget-object v5, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->g:Ljava/lang/Object;

    check-cast v5, Lkotlin/e/b/m$c;

    iget-object v6, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->f:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    iget v7, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->n:I

    iget-object v9, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->e:Ljava/lang/Object;

    check-cast v9, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    iget-wide v10, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->o:J

    iget v12, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->m:I

    iget-object v13, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->d:Ljava/lang/Object;

    check-cast v13, Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move v14, v7

    move-object v15, v9

    move v7, v12

    move-object v9, v13

    move-object v13, v1

    move-object v12, v5

    move-object v1, v6

    move-wide v5, v10

    move-object v11, v4

    goto/16 :goto_2

    :cond_4
    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 337
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LogsDataSourceCallLog.readMore.begin wantedItems="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->h:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/u;->a()J

    move-result-wide v6

    .line 339
    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c:Ljava/util/LinkedList;

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/a/g;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    .line 341
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 342
    new-instance v9, Lkotlin/e/b/m$c;

    invoke-direct {v9}, Lkotlin/e/b/m$c;-><init>()V

    move-object v10, v8

    check-cast v10, Ljava/lang/Integer;

    iput-object v10, v9, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 343
    new-instance v11, Lkotlin/e/b/m$c;

    invoke-direct {v11}, Lkotlin/e/b/m$c;-><init>()V

    iput-object v10, v11, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    move-object v12, v3

    move-object v10, v9

    move-object v3, v1

    move-object v9, v4

    const/4 v4, 0x0

    move-object v1, v0

    .line 344
    :goto_1
    iput-object v1, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->d:Ljava/lang/Object;

    iput v5, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->m:I

    iput-wide v6, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->o:J

    iput-object v3, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->e:Ljava/lang/Object;

    iput v4, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->n:I

    iput-object v9, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->f:Ljava/lang/Object;

    iput-object v10, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->g:Ljava/lang/Object;

    iput-object v11, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->h:Ljava/lang/Object;

    const/4 v13, 0x1

    iput v13, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->b:I

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v12, :cond_5

    return-object v12

    :cond_5
    move-object v15, v3

    move v14, v4

    move-object v3, v12

    move-object v12, v10

    move-object/from16 v23, v9

    move-object v9, v1

    move-object/from16 v1, v23

    move-wide/from16 v24, v6

    move v7, v5

    move-wide/from16 v5, v24

    .line 336
    :goto_2
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 345
    iget-object v10, v9, Lorg/mistergroup/shouldianswer/ui/main/c/j;->l:Lorg/mistergroup/shouldianswer/model/j$b;

    if-eqz v10, :cond_17

    .line 347
    move-object v4, v8

    check-cast v4, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    .line 348
    iget-object v13, v9, Lorg/mistergroup/shouldianswer/ui/main/c/j;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    sget-object v8, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    if-eq v13, v8, :cond_d

    .line 349
    new-instance v4, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    invoke-direct {v4, v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c;-><init>(Lorg/mistergroup/shouldianswer/model/j$b;)V

    .line 351
    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->f()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v8

    .line 352
    iget-object v13, v9, Lorg/mistergroup/shouldianswer/ui/main/c/j;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    sget-object v19, Lorg/mistergroup/shouldianswer/ui/main/c/l;->c:[I

    invoke-virtual {v13}, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->ordinal()I

    move-result v13

    aget v13, v19, v13

    const/4 v0, 0x1

    if-eq v13, v0, :cond_a

    const/4 v0, 0x2

    if-eq v13, v0, :cond_9

    const/4 v0, 0x3

    if-eq v13, v0, :cond_6

    :goto_3
    const/4 v0, 0x1

    :goto_4
    move-object/from16 v23, v9

    move-object v9, v1

    move-object/from16 v1, v23

    move-wide/from16 v24, v5

    move-object v5, v3

    move-object v6, v4

    move v4, v14

    move-object v3, v15

    move-wide/from16 v13, v24

    goto :goto_7

    .line 355
    :cond_6
    iput-object v9, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->d:Ljava/lang/Object;

    iput v7, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->m:I

    iput-wide v5, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->o:J

    iput-object v15, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->e:Ljava/lang/Object;

    iput v14, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->n:I

    iput-object v1, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->f:Ljava/lang/Object;

    iput-object v12, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->g:Ljava/lang/Object;

    iput-object v11, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->h:Ljava/lang/Object;

    iput-object v10, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->i:Ljava/lang/Object;

    iput-object v4, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->j:Ljava/lang/Object;

    iput-object v4, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->k:Ljava/lang/Object;

    iput-object v8, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->l:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->b:I

    invoke-virtual {v8, v2}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->e(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_7

    return-object v3

    :cond_7
    move-object v13, v1

    .line 336
    :goto_5
    check-cast v0, Lorg/mistergroup/shouldianswer/model/h;

    sget-object v1, Lorg/mistergroup/shouldianswer/model/h;->a:Lorg/mistergroup/shouldianswer/model/h;

    if-ne v0, v1, :cond_8

    move-object v1, v9

    move-object v9, v13

    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    move-object v1, v9

    move-object v9, v13

    const/4 v0, 0x0

    :goto_6
    move-wide/from16 v23, v5

    move-object v5, v3

    move-object v6, v4

    move v4, v14

    move-object v3, v15

    move-wide/from16 v13, v23

    goto :goto_7

    .line 354
    :cond_9
    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v0

    if-eqz v0, :cond_b

    goto :goto_3

    .line 353
    :cond_a
    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    :goto_7
    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 359
    move-object v8, v0

    check-cast v8, Lorg/mistergroup/shouldianswer/model/j$b;

    iput-object v8, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j;->l:Lorg/mistergroup/shouldianswer/model/j$b;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v10, v12

    move-object v12, v5

    move v5, v7

    move-wide v6, v13

    goto/16 :goto_1

    :cond_c
    move-object v15, v3

    move-object v3, v5

    move-object v0, v6

    move v5, v7

    move-wide v6, v13

    goto :goto_8

    :cond_d
    move-object v0, v4

    move v4, v14

    move-object/from16 v23, v9

    move-object v9, v1

    move-object/from16 v1, v23

    move-wide/from16 v24, v5

    move v5, v7

    move-wide/from16 v6, v24

    .line 363
    :goto_8
    sget-object v8, Lorg/mistergroup/shouldianswer/ui/main/c/h;->b:Lorg/mistergroup/shouldianswer/ui/main/c/h$a;

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/ui/main/c/h$a;->a()Ljava/text/SimpleDateFormat;

    move-result-object v8

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/j$b;->e()J

    move-result-wide v13

    invoke-static {v13, v14}, Lkotlin/c/b/a/b;->a(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-nez v4, :cond_f

    if-eqz v15, :cond_f

    .line 364
    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->a()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 365
    iget-object v8, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c:Ljava/util/LinkedList;

    check-cast v8, Ljava/util/List;

    invoke-static {v8}, Lkotlin/a/g;->a(Ljava/util/List;)I

    move-result v8

    invoke-static {v8}, Lkotlin/c/b/a/b;->a(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v12, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 366
    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_e

    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lkotlin/a/g;->a(Ljava/util/List;)I

    move-result v8

    invoke-static {v8}, Lkotlin/c/b/a/b;->a(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_9

    :cond_e
    const/4 v8, 0x0

    :goto_9
    iput-object v8, v11, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 367
    new-instance v8, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->d()J

    move-result-wide v13

    move-object/from16 p1, v2

    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    invoke-direct {v8, v13, v14, v2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;-><init>(JLorg/mistergroup/shouldianswer/ui/main/c/j$a;)V

    .line 368
    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v2, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 370
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v8

    const/4 v8, 0x1

    goto :goto_b

    :cond_f
    move-object/from16 p1, v2

    if-eqz v15, :cond_10

    .line 372
    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x1

    xor-int/2addr v2, v8

    if-eqz v2, :cond_11

    goto :goto_a

    :cond_10
    const/4 v8, 0x1

    .line 373
    :goto_a
    new-instance v2, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/j$b;->e()J

    move-result-wide v13

    iget-object v15, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    invoke-direct {v2, v13, v14, v15}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;-><init>(JLorg/mistergroup/shouldianswer/ui/main/c/j$a;)V

    .line 374
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v2

    .line 376
    :cond_11
    :goto_b
    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/a/g;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    if-eqz v2, :cond_13

    .line 377
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-static {v13}, Lkotlin/a/g;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/mistergroup/shouldianswer/model/j$b;

    if-eqz v13, :cond_12

    invoke-virtual {v13}, Lorg/mistergroup/shouldianswer/model/j$b;->b()Ljava/lang/String;

    move-result-object v13

    goto :goto_c

    :cond_12
    const/4 v13, 0x0

    :goto_c
    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/j$b;->b()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v3

    move-wide/from16 v19, v6

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x2

    invoke-static {v13, v14, v3, v8, v6}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 378
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    move-object v0, v6

    check-cast v0, Lorg/mistergroup/shouldianswer/model/j$b;

    iput-object v0, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j;->l:Lorg/mistergroup/shouldianswer/model/j$b;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v10, v12

    move-object v3, v15

    move-object/from16 v12, v16

    move-wide/from16 v6, v19

    goto/16 :goto_1

    :cond_13
    move-object/from16 v16, v3

    move-wide/from16 v19, v6

    const/4 v8, 0x2

    :cond_14
    if-ne v4, v5, :cond_15

    move-object/from16 v14, p1

    move v3, v4

    move v4, v5

    move-object v0, v9

    move-object v2, v12

    move-object v13, v15

    move-object/from16 v12, v16

    move-wide/from16 v5, v19

    move-object v15, v11

    goto :goto_f

    .line 384
    :cond_15
    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v0, :cond_16

    goto :goto_d

    :cond_16
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    invoke-direct {v0, v10}, Lorg/mistergroup/shouldianswer/ui/main/c/c;-><init>(Lorg/mistergroup/shouldianswer/model/j$b;)V

    :goto_d
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 385
    move-object v2, v0

    check-cast v2, Lorg/mistergroup/shouldianswer/model/j$b;

    iput-object v2, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j;->l:Lorg/mistergroup/shouldianswer/model/j$b;

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p1

    move-object v10, v12

    move-object v3, v15

    move-object/from16 v12, v16

    move-wide/from16 v6, v19

    goto :goto_e

    :cond_17
    move-object v0, v8

    const/4 v8, 0x2

    move-object v10, v12

    move v4, v14

    move-object v12, v3

    move-object v3, v15

    move-object/from16 v23, v9

    move-object v9, v1

    move-object/from16 v1, v23

    move-wide/from16 v24, v5

    move v5, v7

    move-wide/from16 v6, v24

    :goto_e
    move-object v8, v0

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_18
    move-object v0, v1

    move v4, v7

    move-object v1, v9

    move-object v13, v15

    move-object v15, v11

    move/from16 v23, v14

    move-object v14, v2

    move-object v2, v12

    move-object v12, v3

    move/from16 v3, v23

    .line 389
    :goto_f
    sget-object v7, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LogsDataSourceCallLog.readMore readed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v9, v5, v6}, Lorg/mistergroup/shouldianswer/utils/u;->a(J)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j;->h:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_19

    .line 392
    sget-object v7, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/utils/u;->a()J

    move-result-wide v9

    .line 393
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lkotlin/c/f;

    new-instance v16, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;

    const/16 v17, 0x0

    move-object/from16 v7, v16

    move-object v8, v1

    move-wide/from16 v18, v9

    move-object/from16 v21, v11

    move-object v11, v0

    move-object/from16 v22, v12

    move-object v12, v2

    move-object/from16 p1, v2

    move-object v2, v13

    move-object v13, v15

    move-object/from16 v20, v15

    move-object v15, v14

    move-object/from16 v14, v17

    invoke-direct/range {v7 .. v14}, Lorg/mistergroup/shouldianswer/ui/main/c/j$f;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j;JLjava/util/ArrayList;Lkotlin/e/b/m$c;Lkotlin/e/b/m$c;Lkotlin/c/c;)V

    move-object/from16 v7, v16

    check-cast v7, Lkotlin/e/a/m;

    iput-object v1, v15, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->d:Ljava/lang/Object;

    iput v4, v15, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->m:I

    iput-wide v5, v15, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->o:J

    iput-object v2, v15, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->e:Ljava/lang/Object;

    iput v3, v15, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->n:I

    iput-object v0, v15, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->f:Ljava/lang/Object;

    move-object/from16 v12, p1

    iput-object v12, v15, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->g:Ljava/lang/Object;

    move-object/from16 v11, v20

    iput-object v11, v15, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->h:Ljava/lang/Object;

    move-wide/from16 v5, v18

    iput-wide v5, v15, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->p:J

    const/4 v0, 0x3

    iput v0, v15, Lorg/mistergroup/shouldianswer/ui/main/c/j$e;->b:I

    move-object/from16 v0, v21

    invoke-static {v0, v7, v15}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, v22

    if-ne v0, v2, :cond_19

    return-object v2

    :cond_19
    :goto_10
    const/4 v0, 0x0

    .line 424
    iput-boolean v0, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b:Z

    .line 425
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LogsDataSourceCallLog.readMore.end readed "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and wanted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0
.end method

.method final synthetic a(Ljava/util/ArrayList;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/model/j$b;",
            ">;",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;

    iget v1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;->b:I

    sub-int/2addr p2, v2

    iput p2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;

    invoke-direct {v0, p0, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j;Lkotlin/c/c;)V

    :goto_0
    iget-object p2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 192
    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;->f:Ljava/lang/Object;

    check-cast p1, Lkotlin/e/b/m$a;

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 325
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_2
    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 193
    new-instance p2, Lkotlin/e/b/m$a;

    invoke-direct {p2}, Lkotlin/e/b/m$a;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p2, Lkotlin/e/b/m$a;->a:Z

    .line 194
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->h:Ljava/lang/String;

    const-string v5, "LogsDataSourceCallLog.update"

    invoke-virtual {v2, v5, v4}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->i:Lorg/mistergroup/shouldianswer/model/j;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p2, v5}, Lorg/mistergroup/shouldianswer/ui/main/c/j$h;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j;Lkotlin/e/b/m$a;Lkotlin/c/c;)V

    check-cast v4, Lkotlin/e/a/q;

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;->e:Ljava/lang/Object;

    iput-object p2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;->f:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$g;->b:I

    invoke-virtual {v2, p1, v4, v0}, Lorg/mistergroup/shouldianswer/model/j;->a(Ljava/util/ArrayList;Lkotlin/e/a/q;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p2

    .line 325
    :goto_1
    iget-boolean p1, p1, Lkotlin/e/b/m$a;->a:Z

    invoke-static {p1}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$d;

    iget v1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$d;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$d;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$d;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$d;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$d;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$d;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 329
    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$d;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$d;->e:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/ui/main/c/j;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$d;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 333
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 329
    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 330
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->l:Lorg/mistergroup/shouldianswer/model/j$b;

    if-nez p1, :cond_4

    .line 331
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->i:Lorg/mistergroup/shouldianswer/model/j;

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$d;->d:Ljava/lang/Object;

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$d;->e:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$d;->b:I

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/j;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    move-object v1, v0

    .line 329
    :goto_1
    check-cast p1, Lorg/mistergroup/shouldianswer/model/j$b;

    iput-object p1, v1, Lorg/mistergroup/shouldianswer/ui/main/c/j;->l:Lorg/mistergroup/shouldianswer/model/j$b;

    goto :goto_2

    :cond_4
    move-object v0, p0

    .line 333
    :goto_2
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->l:Lorg/mistergroup/shouldianswer/model/j$b;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-static {v3}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a()Lorg/mistergroup/shouldianswer/ui/main/c/h;
    .locals 2

    .line 24
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    if-nez v0, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final a(Lorg/mistergroup/shouldianswer/ui/main/c/h;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a:Lorg/mistergroup/shouldianswer/ui/main/c/h;

    return-void
.end method

.method public final b(Ljava/util/ArrayList;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/model/j$b;",
            ">;",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/mistergroup/shouldianswer/ui/main/c/j$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$c;

    iget v1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$c;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$c;->b:I

    sub-int/2addr p2, v2

    iput p2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$c;

    invoke-direct {v0, p0, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$c;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j;Lkotlin/c/c;)V

    :goto_0
    iget-object p2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 428
    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$c;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$c;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$c;->d:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/j;

    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 430
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 428
    :cond_2
    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 429
    iput-object p0, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$c;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$c;->e:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$c;->b:I

    invoke-virtual {p0, p1, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a(Ljava/util/ArrayList;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 430
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final b()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b:Z

    return v0
.end method

.method public final c()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lorg/mistergroup/shouldianswer/ui/main/c/j$b;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final d()V
    .locals 3

    .line 151
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->k:Z

    if-nez v0, :cond_1

    .line 152
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->h:Ljava/lang/String;

    const-string v2, "LogsDataSourceCallLog.onActive"

    invoke-virtual {v0, v2, v1}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->k:Z

    .line 154
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 155
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->i()V

    .line 156
    :cond_0
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    invoke-direct {p0, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a(Z)V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 3

    .line 162
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->k:Z

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->h:Ljava/lang/String;

    const-string v2, "LogsDataSourceCallLog.onInactive"

    invoke-virtual {v0, v2, v1}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->k:Z

    .line 165
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->h()V

    :cond_0
    return-void
.end method

.method public final f()Lorg/mistergroup/shouldianswer/ui/main/c/j$a;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/j;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    return-object v0
.end method
