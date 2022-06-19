.class public final Lorg/mistergroup/shouldianswer/ui/main/c/h;
.super Lorg/mistergroup/shouldianswer/components/stickyheaders/a;
.source "LogsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/main/c/h$b;,
        Lorg/mistergroup/shouldianswer/ui/main/c/h$a;
    }
.end annotation


# static fields
.field public static final b:Lorg/mistergroup/shouldianswer/ui/main/c/h$a;

.field private static final r:Ljava/text/SimpleDateFormat;


# instance fields
.field private final c:I

.field private final d:I

.field private e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

.field private final f:Ljava/lang/String;

.field private g:Z

.field private h:Lkotlin/e/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/m<",
            "-",
            "Landroid/view/ContextMenu;",
            "-",
            "Lorg/mistergroup/shouldianswer/ui/main/c/c;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lkotlin/e/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/b<",
            "-",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lorg/mistergroup/shouldianswer/ui/main/c/h$b;

.field private k:J

.field private l:J

.field private m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

.field private n:Z

.field private o:I

.field private p:I

.field private q:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/main/c/h$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->b:Lorg/mistergroup/shouldianswer/ui/main/c/h$a;

    .line 286
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->r:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;-><init>()V

    const/4 v0, 0x3

    .line 30
    iput v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->c:I

    const/16 v0, 0xa

    .line 31
    iput v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->d:I

    .line 32
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->a:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    const-string v0, "calllog"

    .line 33
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->f:Ljava/lang/String;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->g:Z

    .line 37
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$b;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/h$b;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->j:Lorg/mistergroup/shouldianswer/ui/main/c/h$b;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/main/c/h;)Lorg/mistergroup/shouldianswer/ui/main/c/j;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    return-object p0
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/main/c/h;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m(I)V

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/main/c/h;)I
    .locals 0

    .line 28
    iget p0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->p:I

    return p0
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/main/c/h;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic m()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 28
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->r:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private final m(I)V
    .locals 8

    .line 227
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->k()I

    move-result v0

    .line 228
    sget-object v1, Lorg/mistergroup/shouldianswer/model/ab;->a:Lorg/mistergroup/shouldianswer/model/ab;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ab;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->k:J

    .line 229
    sget-object v1, Lorg/mistergroup/shouldianswer/model/ad;->a:Lorg/mistergroup/shouldianswer/model/ad;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ad;->c()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->l:J

    .line 231
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->o:I

    if-le p1, v1, :cond_0

    if-le p1, v0, :cond_0

    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->n:Z

    if-nez v1, :cond_0

    sub-int v0, p1, v0

    const/4 v1, 0x0

    .line 234
    :try_start_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LogsAdapter.processLoadMore launching background load "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " new items "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 235
    iput-boolean v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->n:Z

    .line 236
    iput p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->o:I

    .line 237
    sget-object p1, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lkotlin/c/f;

    const/4 v4, 0x0

    new-instance p1, Lorg/mistergroup/shouldianswer/ui/main/c/h$d;

    const/4 v5, 0x0

    invoke-direct {p1, p0, v0, v5}, Lorg/mistergroup/shouldianswer/ui/main/c/h$d;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/h;ILkotlin/c/c;)V

    move-object v5, p1

    check-cast v5, Lkotlin/e/a/m;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iput-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->n:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->n:Z

    throw p1

    .line 257
    :cond_0
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->p:I

    if-le p1, v0, :cond_1

    .line 258
    iput p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->p:I

    .line 259
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogsAdapter.processLoadMore received request for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 115
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->f:Ljava/lang/String;

    const-string v2, "LogsAdapter.getNumberOfSections"

    invoke-virtual {v0, v2, v1}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(I)I
    .locals 3

    .line 121
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LogsAdapter.getNumberOfItemsInSection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/a/g;->a(Ljava/util/List;)I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 125
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, p1

    :cond_0
    return v1
.end method

.method public a(II)I
    .locals 2

    .line 140
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/a/g;->a(Ljava/util/List;)I

    move-result v1

    if-gt p1, v1, :cond_0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/a/g;->a(Ljava/util/List;)I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 142
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/c;->a()Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;->ordinal()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/util/ArrayList;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p2, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;

    iget v1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->b:I

    sub-int/2addr p2, v2

    iput p2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;

    invoke-direct {v0, p0, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/h;Lkotlin/c/c;)V

    :goto_0
    iget-object p2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 274
    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->i:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/j;

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->h:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/j;

    iget p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->k:I

    iget v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->j:I

    iget-object v4, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->g:Ljava/lang/Object;

    check-cast v4, [Lorg/mistergroup/shouldianswer/ui/main/c/j;

    iget-object v5, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->f:Ljava/lang/Object;

    check-cast v5, [Lorg/mistergroup/shouldianswer/ui/main/c/j;

    iget-object v6, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->e:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    iget-object v7, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->d:Ljava/lang/Object;

    check-cast v7, Lorg/mistergroup/shouldianswer/ui/main/c/h;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 282
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :cond_2
    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 276
    :try_start_1
    sget-object p2, Lorg/mistergroup/shouldianswer/model/ab;->a:Lorg/mistergroup/shouldianswer/model/ab;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/ab;->a()[Lorg/mistergroup/shouldianswer/ui/main/c/j;

    move-result-object p2

    .line 292
    array-length v2, p2

    const/4 v4, 0x0

    move-object v7, p0

    move-object v6, p1

    move-object v5, p2

    move p1, v4

    move-object v4, v5

    :goto_1
    if-ge p1, v2, :cond_5

    aget-object p2, v4, p1

    if-eqz p2, :cond_4

    .line 277
    iput-object v7, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->d:Ljava/lang/Object;

    iput-object v6, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->e:Ljava/lang/Object;

    iput-object v5, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->f:Ljava/lang/Object;

    iput-object v4, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->g:Ljava/lang/Object;

    iput v2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->j:I

    iput p1, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->k:I

    iput-object p2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->h:Ljava/lang/Object;

    iput-object p2, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->i:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/ui/main/c/h$c;->b:I

    invoke-virtual {p2, v6, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b(Ljava/util/ArrayList;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 274
    :cond_3
    :goto_2
    check-cast p2, Lkotlin/o;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    add-int/2addr p1, v3

    goto :goto_1

    :catch_0
    move-exception p1

    .line 280
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 282
    :cond_5
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public a(Landroid/view/ViewGroup;I)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;
    .locals 6

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 163
    move-object v1, v0

    check-cast v1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;

    .line 164
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/utils/u;->a()J

    const/4 v2, 0x2

    .line 166
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 167
    invoke-static {}, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;->values()[Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

    move-result-object v4

    aget-object p2, v4, p2

    sget-object v4, Lorg/mistergroup/shouldianswer/ui/main/c/i;->b:[I

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;->ordinal()I

    move-result p2

    aget p2, v4, p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p2, v4, :cond_2

    if-eq p2, v2, :cond_1

    const/4 v4, 0x3

    if-eq p2, v4, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f0d003b

    .line 177
    invoke-static {v3, p2, p1, v5}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/a/ag;

    .line 178
    new-instance p2, Lorg/mistergroup/shouldianswer/ui/main/c/g;

    const-string v3, "bindingNumber"

    invoke-static {p1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1, p0}, Lorg/mistergroup/shouldianswer/ui/main/c/g;-><init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/ui/main/c/h;)V

    move-object p1, p2

    check-cast p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;

    move-object v1, p1

    goto :goto_0

    :cond_1
    const p2, 0x7f0d0039

    .line 173
    invoke-static {v3, p2, p1, v5}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/a/ac;

    .line 174
    new-instance p2, Lorg/mistergroup/shouldianswer/ui/main/c/e;

    const-string v3, "bindingInfo"

    invoke-static {p1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lorg/mistergroup/shouldianswer/ui/main/c/e;-><init>(Lorg/mistergroup/shouldianswer/a/ac;)V

    move-object p1, p2

    check-cast p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;

    goto :goto_1

    :cond_2
    const p2, 0x7f0d003a

    .line 169
    invoke-static {v3, p2, p1, v5}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/a/ae;

    .line 170
    new-instance p2, Lorg/mistergroup/shouldianswer/ui/main/c/f;

    const-string v3, "binding"

    invoke-static {p1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    invoke-direct {p2, p1, p0, v3}, Lorg/mistergroup/shouldianswer/ui/main/c/f;-><init>(Lorg/mistergroup/shouldianswer/a/ae;Lorg/mistergroup/shouldianswer/ui/main/c/h;Lorg/mistergroup/shouldianswer/ui/main/c/j$a;)V

    move-object p1, p2

    check-cast p1, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 182
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v0, v2, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method public final a(Lkotlin/e/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/b<",
            "-",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->i:Lkotlin/e/a/b;

    return-void
.end method

.method public final a(Lkotlin/e/a/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/m<",
            "-",
            "Landroid/view/ContextMenu;",
            "-",
            "Lorg/mistergroup/shouldianswer/ui/main/c/c;",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->h:Lkotlin/e/a/m;

    return-void
.end method

.method public a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$d;II)V
    .locals 1

    const-string p3, "viewHolder"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    sget-object p3, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {p3}, Lorg/mistergroup/shouldianswer/utils/u;->a()J

    .line 216
    :try_start_0
    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/d;

    .line 217
    iget-object p3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    if-eqz p3, :cond_0

    .line 218
    invoke-virtual {p3}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->b()Lorg/mistergroup/shouldianswer/ui/main/c/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/d;->a(Lorg/mistergroup/shouldianswer/ui/main/c/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 221
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, p3, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;III)V
    .locals 2

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/u;->a()J

    const/4 v0, 0x2

    .line 191
    :try_start_0
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "it.sections[sectionIndex]"

    invoke-static {p2, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    .line 193
    invoke-static {}, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;->values()[Lorg/mistergroup/shouldianswer/ui/main/c/a$a;

    move-result-object v1

    aget-object p4, v1, p4

    sget-object v1, Lorg/mistergroup/shouldianswer/ui/main/c/i;->c:[I

    invoke-virtual {p4}, Lorg/mistergroup/shouldianswer/ui/main/c/a$a;->ordinal()I

    move-result p4

    aget p4, v1, p4

    const/4 v1, 0x1

    if-eq p4, v1, :cond_1

    if-eq p4, v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/e;

    .line 200
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->b()Lorg/mistergroup/shouldianswer/ui/main/c/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/e;->a(Lorg/mistergroup/shouldianswer/ui/main/c/b;)V

    goto :goto_0

    .line 195
    :cond_1
    check-cast p1, Lorg/mistergroup/shouldianswer/ui/main/c/g;

    .line 196
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/main/c/g;->a(Lorg/mistergroup/shouldianswer/ui/main/c/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 208
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 p3, 0x0

    invoke-static {p2, p1, p3, v0, p3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/ui/main/c/j$a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/ui/main/c/j$a;Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;)V
    .locals 5

    const-string v0, "filterType"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutManager"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->q:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;

    .line 48
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    if-eq p1, v0, :cond_a

    .line 49
    :cond_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LogsAdapter.setFilter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 50
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    .line 51
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->e()V

    .line 52
    :cond_1
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ab;->a:Lorg/mistergroup/shouldianswer/model/ab;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ab;->a()[Lorg/mistergroup/shouldianswer/ui/main/c/j;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->a()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    .line 53
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    const/4 v1, 0x1

    if-nez v0, :cond_7

    .line 54
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/i;->a:[I

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 59
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 58
    :cond_3
    new-instance v3, Lorg/mistergroup/shouldianswer/ui/main/c/j;

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    invoke-direct {v3, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j$a;)V

    goto :goto_0

    .line 57
    :cond_4
    new-instance v3, Lorg/mistergroup/shouldianswer/ui/main/c/j;

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->d:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    invoke-direct {v3, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j$a;)V

    goto :goto_0

    .line 56
    :cond_5
    new-instance v3, Lorg/mistergroup/shouldianswer/ui/main/c/j;

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->c:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    invoke-direct {v3, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j$a;)V

    goto :goto_0

    .line 55
    :cond_6
    new-instance v3, Lorg/mistergroup/shouldianswer/ui/main/c/j;

    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    invoke-direct {v3, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;-><init>(Lorg/mistergroup/shouldianswer/ui/main/c/j$a;)V

    .line 54
    :goto_0
    iput-object v3, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    .line 61
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->b:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    if-ne p1, v0, :cond_7

    .line 62
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ab;->a:Lorg/mistergroup/shouldianswer/model/ab;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ab;->a()[Lorg/mistergroup/shouldianswer/ui/main/c/j;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->a()I

    move-result p1

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    aput-object v2, v0, p1

    .line 64
    :cond_7
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->b()V

    .line 65
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    if-eqz p1, :cond_8

    move-object v0, p0

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/main/c/h;

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->a(Lorg/mistergroup/shouldianswer/ui/main/c/h;)V

    .line 66
    :cond_8
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->d()V

    :cond_9
    const/4 p1, 0x0

    .line 67
    invoke-virtual {p2, p1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->scrollToPosition(I)V

    .line 68
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->k()I

    move-result p1

    iput p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->o:I

    .line 69
    iget p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->o:I

    iput p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->p:I

    .line 70
    iget p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->d:I

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m(I)V

    :cond_a
    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$d;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    :try_start_0
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/u;->a:Lorg/mistergroup/shouldianswer/utils/u;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/utils/u;->a()J

    .line 151
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0039

    const/4 v1, 0x0

    .line 152
    invoke-static {p2, v0, p1, v1}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/a/ac;

    .line 153
    new-instance p2, Lorg/mistergroup/shouldianswer/ui/main/c/d;

    const-string v0, "bindingInfo"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lorg/mistergroup/shouldianswer/ui/main/c/d;-><init>(Lorg/mistergroup/shouldianswer/a/ac;)V

    .line 155
    check-cast p2, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 157
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v1
.end method

.method public b(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final d()Lorg/mistergroup/shouldianswer/ui/main/c/j$a;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    return-object v0
.end method

.method public d(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final e()Lkotlin/e/a/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/e/a/m<",
            "Landroid/view/ContextMenu;",
            "Lorg/mistergroup/shouldianswer/ui/main/c/c;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->h:Lkotlin/e/a/m;

    return-object v0
.end method

.method public final f(II)I
    .locals 4

    .line 98
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/a/g;->a(Ljava/util/List;)I

    move-result v2

    if-gt p1, v2, :cond_1

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    .line 100
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    add-int/2addr v1, p2

    return v1
.end method

.method public final f()Lkotlin/e/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/e/a/b<",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->i:Lkotlin/e/a/b;

    return-object v0
.end method

.method public final g()Lorg/mistergroup/shouldianswer/ui/main/c/h$b;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->j:Lorg/mistergroup/shouldianswer/ui/main/c/h$b;

    return-object v0
.end method

.method public final h()V
    .locals 4

    .line 75
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "LogsAdapter.onNewContent scrollToTop"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->q:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 4

    .line 80
    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->k:J

    sget-object v2, Lorg/mistergroup/shouldianswer/model/ab;->a:Lorg/mistergroup/shouldianswer/model/ab;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/ab;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->l:J

    sget-object v2, Lorg/mistergroup/shouldianswer/model/ad;->a:Lorg/mistergroup/shouldianswer/model/ad;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/ad;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 81
    :cond_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "LogsAdapter.onActivate - NumberInfoCache invalidate"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/main/c/o;->a:Lorg/mistergroup/shouldianswer/ui/main/c/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/o;->a()V

    .line 83
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    sget-object v3, Lorg/mistergroup/shouldianswer/ui/main/c/j$a;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    if-ne v0, v3, :cond_2

    .line 84
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "LogsAdapter.onActivate - reloading due blockingChangedTime differs"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->e:Lorg/mistergroup/shouldianswer/ui/main/c/j$a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->q:Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    invoke-virtual {p0, v0, v1}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->a(Lorg/mistergroup/shouldianswer/ui/main/c/j$a;Lorg/mistergroup/shouldianswer/components/stickyheaders/StickyHeaderLayoutManager;)V

    return-void

    .line 89
    :cond_2
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->d()V

    :cond_3
    return-void
.end method

.method public final j()V
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->e()V

    :cond_0
    return-void
.end method

.method public final k()I
    .locals 5

    .line 108
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->c()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/ui/main/c/j$b;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method public final l(I)V
    .locals 2

    .line 269
    iget v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->c:I

    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->d:I

    div-int/2addr p1, v1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v0, p1

    .line 270
    iget p1, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->d:I

    mul-int/2addr v0, p1

    .line 271
    invoke-direct {p0, v0}, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m(I)V

    return-void
.end method

.method public final l()Z
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/main/c/h;->m:Lorg/mistergroup/shouldianswer/ui/main/c/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/main/c/j;->b()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
