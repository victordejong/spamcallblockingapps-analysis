.class public final Lorg/mistergroup/shouldianswer/ui/search/a;
.super Lorg/mistergroup/shouldianswer/components/stickyheaders/a;
.source "SearchAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/search/a$b;,
        Lorg/mistergroup/shouldianswer/ui/search/a$a;
    }
.end annotation


# static fields
.field public static final b:Lorg/mistergroup/shouldianswer/ui/search/a$a;

.field private static final k:Ljava/text/SimpleDateFormat;


# instance fields
.field private c:Lkotlin/e/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/m<",
            "-",
            "Landroid/view/ContextMenu;",
            "-",
            "Lorg/mistergroup/shouldianswer/ui/search/d;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lkotlin/e/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/b<",
            "-",
            "Lorg/mistergroup/shouldianswer/ui/search/d;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/ui/search/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/ui/main/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lorg/mistergroup/shouldianswer/ui/search/e;

.field private i:Ljava/lang/String;

.field private final j:Lkotlin/i/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/search/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/search/a$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/search/a;->b:Lorg/mistergroup/shouldianswer/ui/search/a$a;

    .line 405
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-dd-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/search/a;->k:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/components/stickyheaders/a;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->e:Ljava/util/ArrayList;

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->i:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->f:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 181
    new-instance v0, Lkotlin/i/f;

    const-string v1, "\\p{InCombiningDiacriticalMarks}+"

    invoke-direct {v0, v1}, Lkotlin/i/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->j:Lkotlin/i/f;

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .line 75
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const/4 v3, -0x1

    if-eqz v0, :cond_2

    return v3

    .line 76
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    if-eqz v1, :cond_5

    return v3

    :cond_5
    const-string v0, "null cannot be cast to non-null type java.lang.String"

    if-eqz p1, :cond_7

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.String).toUpperCase()"

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/i/g;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    return p1

    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/search/a;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/search/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/search/a;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/search/a;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->f:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/search/a;)Lkotlin/i/f;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->j:Lkotlin/i/f;

    return-object p0
.end method

.method public static final synthetic d(Lorg/mistergroup/shouldianswer/ui/search/a;)Ljava/util/ArrayList;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic f()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 38
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/search/a;->k:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private final g()V
    .locals 7

    .line 184
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/c/f;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/search/a$c;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lorg/mistergroup/shouldianswer/ui/search/a$c;-><init>(Lorg/mistergroup/shouldianswer/ui/search/a;Lkotlin/c/c;)V

    move-object v4, v0

    check-cast v4, Lkotlin/e/a/m;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 378
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 1

    .line 382
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->e:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 383
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/search/a$b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/search/a$b;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(II)I
    .locals 1

    .line 398
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->e:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/search/a$b;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/search/a$b;->c()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 399
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/search/a$b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/search/a$b;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/search/d;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/search/d;->j()Lorg/mistergroup/shouldianswer/ui/search/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/search/d$a;->ordinal()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final synthetic a(Lorg/mistergroup/shouldianswer/ui/search/e;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/ui/search/e;",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "+"

    instance-of v4, v2, Lorg/mistergroup/shouldianswer/ui/search/a$d;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;

    iget v5, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->b:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget v2, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->b:I

    sub-int/2addr v2, v6

    iput v2, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->b:I

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;

    invoke-direct {v4, v1, v2}, Lorg/mistergroup/shouldianswer/ui/search/a$d;-><init>(Lorg/mistergroup/shouldianswer/ui/search/a;Lkotlin/c/c;)V

    :goto_0
    iget-object v2, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v5

    .line 302
    iget v6, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->b:I

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_3

    if-eq v6, v9, :cond_2

    if-ne v6, v7, :cond_1

    iget-object v0, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    iget-object v0, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v0, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->n:I

    iget-object v0, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->e:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/search/e;

    iget-object v0, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/search/a;

    :try_start_0
    invoke-static {v2}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    .line 375
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_2
    iget-object v0, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->m:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v3, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->l:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v6, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->k:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v6, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->j:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v9, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->i:Ljava/lang/Object;

    check-cast v9, Lorg/mistergroup/shouldianswer/ui/search/d;

    iget-object v10, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->h:Ljava/lang/Object;

    check-cast v10, Lorg/mistergroup/shouldianswer/ui/search/a$b;

    iget-object v11, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->g:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    iget-object v12, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->f:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget v13, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->n:I

    iget-object v14, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->e:Ljava/lang/Object;

    check-cast v14, Lorg/mistergroup/shouldianswer/ui/search/e;

    iget-object v15, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->d:Ljava/lang/Object;

    check-cast v15, Lorg/mistergroup/shouldianswer/ui/search/a;

    :try_start_1
    invoke-static {v2}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v9

    goto/16 :goto_5

    :cond_3
    invoke-static {v2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 303
    iput-object v0, v1, Lorg/mistergroup/shouldianswer/ui/search/a;->h:Lorg/mistergroup/shouldianswer/ui/search/e;

    .line 304
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ContactsAdapter.setFinalData items count="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/mistergroup/shouldianswer/ui/search/e;->a()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v8, v7, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 307
    :try_start_2
    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/search/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 310
    invoke-virtual/range {p1 .. p1}, Lorg/mistergroup/shouldianswer/ui/search/e;->a()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 313
    move-object v2, v8

    check-cast v2, Lorg/mistergroup/shouldianswer/ui/search/a$b;

    .line 314
    invoke-virtual/range {p1 .. p1}, Lorg/mistergroup/shouldianswer/ui/search/e;->a()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v13, v2

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/mistergroup/shouldianswer/ui/search/d;

    if-nez v2, :cond_4

    .line 315
    invoke-virtual {v14}, Lorg/mistergroup/shouldianswer/ui/search/d;->b()Lorg/mistergroup/shouldianswer/ui/main/c/c;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 317
    new-instance v13, Lorg/mistergroup/shouldianswer/ui/search/a$b;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v13, v1, v2, v9, v11}, Lorg/mistergroup/shouldianswer/ui/search/a$b;-><init>(Lorg/mistergroup/shouldianswer/ui/search/a;Ljava/util/Date;ZI)V

    .line 318
    invoke-virtual {v13}, Lorg/mistergroup/shouldianswer/ui/search/a$b;->b()Lorg/mistergroup/shouldianswer/ui/search/d;

    move-result-object v2

    sget-object v15, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v15}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v15

    const v6, 0x7f1000ad

    invoke-virtual {v15, v6}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/mistergroup/shouldianswer/ui/search/d;->a(Ljava/lang/String;)V

    .line 319
    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/search/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v9

    :cond_4
    if-nez v12, :cond_5

    .line 321
    invoke-virtual {v14}, Lorg/mistergroup/shouldianswer/ui/search/d;->a()Lorg/mistergroup/shouldianswer/components/a/a;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 323
    new-instance v13, Lorg/mistergroup/shouldianswer/ui/search/a$b;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-direct {v13, v1, v6, v9, v11}, Lorg/mistergroup/shouldianswer/ui/search/a$b;-><init>(Lorg/mistergroup/shouldianswer/ui/search/a;Ljava/util/Date;ZI)V

    .line 324
    invoke-virtual {v13}, Lorg/mistergroup/shouldianswer/ui/search/a$b;->b()Lorg/mistergroup/shouldianswer/ui/search/d;

    move-result-object v6

    sget-object v12, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v12

    const v15, 0x7f1000f3

    invoke-virtual {v12, v15}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lorg/mistergroup/shouldianswer/ui/search/d;->a(Ljava/lang/String;)V

    .line 325
    iget-object v6, v1, Lorg/mistergroup/shouldianswer/ui/search/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v9

    :cond_5
    if-eqz v13, :cond_6

    .line 327
    invoke-virtual {v13}, Lorg/mistergroup/shouldianswer/ui/search/a$b;->a()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_6
    move-object v6, v8

    :goto_2
    sget-object v15, Lorg/mistergroup/shouldianswer/ui/search/a;->k:Ljava/text/SimpleDateFormat;

    invoke-virtual {v14}, Lorg/mistergroup/shouldianswer/ui/search/d;->h()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v9

    if-eqz v6, :cond_7

    .line 328
    new-instance v6, Lorg/mistergroup/shouldianswer/ui/search/a$b;

    invoke-virtual {v14}, Lorg/mistergroup/shouldianswer/ui/search/d;->h()Ljava/util/Date;

    move-result-object v8

    invoke-direct {v6, v1, v8, v9, v11}, Lorg/mistergroup/shouldianswer/ui/search/a$b;-><init>(Lorg/mistergroup/shouldianswer/ui/search/a;Ljava/util/Date;ZI)V

    .line 329
    iget-object v8, v1, Lorg/mistergroup/shouldianswer/ui/search/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v13, v6

    :cond_7
    if-eqz v13, :cond_8

    .line 331
    invoke-virtual {v13}, Lorg/mistergroup/shouldianswer/ui/search/a$b;->c()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    :cond_8
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_9
    move v13, v11

    goto :goto_3

    :cond_a
    const/4 v13, 0x0

    .line 336
    :goto_3
    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/search/a;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "filterStripped"

    .line 337
    invoke-static {v12, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12}, Lkotlin/i/g;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 338
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_d

    .line 339
    new-instance v10, Lorg/mistergroup/shouldianswer/ui/search/a$b;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v10, v1, v2, v9, v13}, Lorg/mistergroup/shouldianswer/ui/search/a$b;-><init>(Lorg/mistergroup/shouldianswer/ui/search/a;Ljava/util/Date;ZI)V

    .line 340
    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/search/a$b;->b()Lorg/mistergroup/shouldianswer/ui/search/d;

    move-result-object v2

    const-string v6, "Possible Actions"

    invoke-virtual {v2, v6}, Lorg/mistergroup/shouldianswer/ui/search/d;->a(Ljava/lang/String;)V

    .line 341
    iget-object v2, v1, Lorg/mistergroup/shouldianswer/ui/search/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v2, Lorg/mistergroup/shouldianswer/ui/search/d;

    sget-object v6, Lorg/mistergroup/shouldianswer/ui/search/d$a;->b:Lorg/mistergroup/shouldianswer/ui/search/d$a;

    invoke-direct {v2, v6}, Lorg/mistergroup/shouldianswer/ui/search/d;-><init>(Lorg/mistergroup/shouldianswer/ui/search/d$a;)V

    .line 344
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/utils/f;->a()Ljava/lang/String;

    move-result-object v6

    .line 346
    sget-object v8, Lorg/mistergroup/shouldianswer/utils/f;->a:Lorg/mistergroup/shouldianswer/utils/f;

    invoke-virtual {v8, v6}, Lorg/mistergroup/shouldianswer/utils/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 347
    iget-object v14, v1, Lorg/mistergroup/shouldianswer/ui/search/a;->i:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v3, v15, v7, v9}, Lkotlin/i/g;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/search/a;->i:Ljava/lang/String;

    goto :goto_4

    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lorg/mistergroup/shouldianswer/ui/search/a;->i:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    :goto_4
    new-instance v9, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sget-object v19, Lorg/mistergroup/shouldianswer/model/k;->h:Lorg/mistergroup/shouldianswer/model/k;

    const/16 v20, 0x0

    const/16 v21, 0x8

    const/16 v22, 0x0

    move-object/from16 v16, v9

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    invoke-direct/range {v16 .. v22}, Lorg/mistergroup/shouldianswer/model/NumberInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/mistergroup/shouldianswer/model/k;ZILkotlin/e/b/e;)V

    .line 349
    iput-object v1, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->d:Ljava/lang/Object;

    iput-object v0, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->e:Ljava/lang/Object;

    iput v13, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->n:I

    iput-object v12, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->f:Ljava/lang/Object;

    iput-object v11, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->g:Ljava/lang/Object;

    iput-object v10, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->h:Ljava/lang/Object;

    iput-object v2, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->i:Ljava/lang/Object;

    iput-object v6, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->j:Ljava/lang/Object;

    iput-object v8, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->k:Ljava/lang/Object;

    iput-object v3, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->l:Ljava/lang/Object;

    iput-object v9, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->m:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->b:I

    invoke-virtual {v9, v4}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->w(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_c

    return-object v5

    :cond_c
    move-object v14, v0

    move-object v15, v1

    move-object v0, v9

    .line 350
    :goto_5
    new-instance v8, Lorg/mistergroup/shouldianswer/model/j$b;

    invoke-direct {v8}, Lorg/mistergroup/shouldianswer/model/j$b;-><init>()V

    .line 351
    invoke-virtual {v8, v3}, Lorg/mistergroup/shouldianswer/model/j$b;->a(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v8, v6}, Lorg/mistergroup/shouldianswer/model/j$b;->b(Ljava/lang/String;)V

    .line 353
    sget-object v3, Lorg/mistergroup/shouldianswer/model/k;->h:Lorg/mistergroup/shouldianswer/model/k;

    invoke-virtual {v8, v3}, Lorg/mistergroup/shouldianswer/model/j$b;->a(Lorg/mistergroup/shouldianswer/model/k;)V

    move/from16 p2, v13

    move-object/from16 p1, v14

    const-wide/16 v13, 0x0

    .line 354
    invoke-virtual {v8, v13, v14}, Lorg/mistergroup/shouldianswer/model/j$b;->b(J)V

    .line 355
    new-instance v3, Lorg/mistergroup/shouldianswer/ui/main/c/c;

    invoke-direct {v3, v8}, Lorg/mistergroup/shouldianswer/ui/main/c/c;-><init>(Lorg/mistergroup/shouldianswer/model/j$b;)V

    .line 356
    invoke-virtual {v2, v3}, Lorg/mistergroup/shouldianswer/ui/search/d;->a(Lorg/mistergroup/shouldianswer/ui/main/c/c;)V

    .line 357
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o()Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/mistergroup/shouldianswer/ui/search/d;->a(Lorg/mistergroup/shouldianswer/model/ac;)V

    .line 358
    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/search/a$b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/search/d;

    sget-object v2, Lorg/mistergroup/shouldianswer/ui/search/d$a;->c:Lorg/mistergroup/shouldianswer/ui/search/d$a;

    invoke-direct {v0, v2}, Lorg/mistergroup/shouldianswer/ui/search/d;-><init>(Lorg/mistergroup/shouldianswer/ui/search/d$a;)V

    .line 361
    invoke-virtual {v0, v12}, Lorg/mistergroup/shouldianswer/ui/search/d;->a(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/search/a$b;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    new-instance v0, Lorg/mistergroup/shouldianswer/ui/search/d;

    sget-object v2, Lorg/mistergroup/shouldianswer/ui/search/d$a;->d:Lorg/mistergroup/shouldianswer/ui/search/d$a;

    invoke-direct {v0, v2}, Lorg/mistergroup/shouldianswer/ui/search/d;-><init>(Lorg/mistergroup/shouldianswer/ui/search/d$a;)V

    .line 365
    invoke-virtual {v0, v12}, Lorg/mistergroup/shouldianswer/ui/search/d;->a(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/ui/search/a$b;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    move/from16 v13, p2

    goto :goto_6

    :cond_d
    move-object v15, v1

    .line 368
    :goto_6
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->b()Lkotlinx/coroutines/y;

    move-result-object v2

    check-cast v2, Lkotlin/c/f;

    new-instance v3, Lorg/mistergroup/shouldianswer/ui/search/a$e;

    const/4 v6, 0x0

    invoke-direct {v3, v15, v6}, Lorg/mistergroup/shouldianswer/ui/search/a$e;-><init>(Lorg/mistergroup/shouldianswer/ui/search/a;Lkotlin/c/c;)V

    check-cast v3, Lkotlin/e/a/m;

    iput-object v15, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->d:Ljava/lang/Object;

    iput-object v0, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->e:Ljava/lang/Object;

    iput v13, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->n:I

    iput-object v12, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->f:Ljava/lang/Object;

    iput-object v11, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->g:Ljava/lang/Object;

    iput v7, v4, Lorg/mistergroup/shouldianswer/ui/search/a$d;->b:I

    invoke-static {v2, v3, v4}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v0, v5, :cond_e

    return-object v5

    :catch_0
    move-exception v0

    .line 373
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v7, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 375
    :cond_e
    :goto_7
    sget-object v0, Lkotlin/o;->a:Lkotlin/o;

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;
    .locals 7

    const-string v0, "bindingNumber"

    const-string v1, "parent"

    invoke-static {p1, v1}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x2

    const v3, 0x7f0d003b

    const/4 v4, 0x0

    .line 95
    :try_start_0
    invoke-static {}, Lorg/mistergroup/shouldianswer/ui/search/d$a;->values()[Lorg/mistergroup/shouldianswer/ui/search/d$a;

    move-result-object v5

    aget-object p2, v5, p2

    sget-object v5, Lorg/mistergroup/shouldianswer/ui/search/b;->a:[I

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/search/d$a;->ordinal()I

    move-result p2

    aget p2, v5, p2

    const/4 v5, 0x1

    if-eq p2, v5, :cond_4

    if-eq p2, v2, :cond_3

    const/4 v5, 0x3

    if-eq p2, v5, :cond_2

    const/4 v5, 0x4

    if-eq p2, v5, :cond_1

    const/4 v5, 0x5

    if-ne p2, v5, :cond_0

    const p2, 0x7f0d0039

    .line 113
    invoke-static {v1, p2, p1, v4}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/a/ac;

    .line 114
    new-instance v5, Lorg/mistergroup/shouldianswer/ui/search/i;

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, p2}, Lorg/mistergroup/shouldianswer/ui/search/i;-><init>(Lorg/mistergroup/shouldianswer/a/ac;)V

    check-cast v5, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;

    return-object v5

    :cond_0
    new-instance p2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p2

    .line 109
    :cond_1
    invoke-static {v1, v3, p1, v4}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/a/ag;

    .line 110
    new-instance v5, Lorg/mistergroup/shouldianswer/ui/search/k;

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, p2, p0}, Lorg/mistergroup/shouldianswer/ui/search/k;-><init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/ui/search/a;)V

    check-cast v5, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;

    return-object v5

    .line 105
    :cond_2
    invoke-static {v1, v3, p1, v4}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/a/ag;

    .line 106
    new-instance v5, Lorg/mistergroup/shouldianswer/ui/search/j;

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, p2, p0}, Lorg/mistergroup/shouldianswer/ui/search/j;-><init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/ui/search/a;)V

    check-cast v5, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;

    return-object v5

    .line 101
    :cond_3
    invoke-static {v1, v3, p1, v4}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/a/ag;

    .line 102
    new-instance v5, Lorg/mistergroup/shouldianswer/ui/search/g;

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, p2, p0}, Lorg/mistergroup/shouldianswer/ui/search/g;-><init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/ui/search/a;)V

    check-cast v5, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;

    return-object v5

    .line 97
    :cond_4
    invoke-static {v1, v3, p1, v4}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/a/ag;

    .line 98
    new-instance v5, Lorg/mistergroup/shouldianswer/ui/search/f;

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, p2, p0}, Lorg/mistergroup/shouldianswer/ui/search/f;-><init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/ui/search/a;)V

    check-cast v5, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception p2

    .line 118
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v6, 0x0

    invoke-static {v5, p2, v6, v2, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 120
    invoke-static {v1, v3, p1, v4}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/a/ag;

    .line 121
    new-instance p2, Lorg/mistergroup/shouldianswer/ui/search/f;

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1, p0}, Lorg/mistergroup/shouldianswer/ui/search/f;-><init>(Lorg/mistergroup/shouldianswer/a/ag;Lorg/mistergroup/shouldianswer/ui/search/a;)V

    check-cast p2, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;

    return-object p2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->i:Ljava/lang/String;

    .line 178
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/search/a;->g()V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/ui/main/c/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "logItems"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->g:Ljava/util/ArrayList;

    .line 293
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/search/a;->g()V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/mistergroup/shouldianswer/ui/main/c/c;",
            ">;",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;)V"
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->g:Ljava/util/ArrayList;

    .line 298
    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->f:Ljava/util/List;

    .line 299
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/search/a;->g()V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contactItems"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->f:Ljava/util/List;

    .line 288
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/search/a;->g()V

    return-void
.end method

.method public final a(Lkotlin/e/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/b<",
            "-",
            "Lorg/mistergroup/shouldianswer/ui/search/d;",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->d:Lkotlin/e/a/b;

    return-void
.end method

.method public final a(Lkotlin/e/a/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/m<",
            "-",
            "Landroid/view/ContextMenu;",
            "-",
            "Lorg/mistergroup/shouldianswer/ui/search/d;",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->c:Lkotlin/e/a/m;

    return-void
.end method

.method public a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$d;II)V
    .locals 1

    const-string p3, "viewHolder"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    :try_start_0
    iget-object p3, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->e:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "sectionList[sectionIndex]"

    invoke-static {p2, p3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lorg/mistergroup/shouldianswer/ui/search/a$b;

    .line 143
    check-cast p1, Lorg/mistergroup/shouldianswer/ui/search/h;

    .line 144
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/search/a$b;->b()Lorg/mistergroup/shouldianswer/ui/search/d;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/search/h;->a(Lorg/mistergroup/shouldianswer/ui/search/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 146
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, p3, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Lorg/mistergroup/shouldianswer/components/stickyheaders/a$e;III)V
    .locals 0

    const-string p4, "viewHolder"

    invoke-static {p1, p4}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    :try_start_0
    iget-object p4, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->e:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "sectionList[sectionIndex]"

    invoke-static {p2, p4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lorg/mistergroup/shouldianswer/ui/search/a$b;

    .line 127
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/ui/search/a$b;->c()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/ui/search/d;

    .line 129
    instance-of p3, p1, Lorg/mistergroup/shouldianswer/ui/search/g;

    if-eqz p3, :cond_0

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/search/g;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/search/g;->a(Lorg/mistergroup/shouldianswer/ui/search/d;)V

    goto :goto_0

    .line 130
    :cond_0
    instance-of p3, p1, Lorg/mistergroup/shouldianswer/ui/search/f;

    if-eqz p3, :cond_1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/search/f;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/search/f;->a(Lorg/mistergroup/shouldianswer/ui/search/d;)V

    goto :goto_0

    .line 131
    :cond_1
    instance-of p3, p1, Lorg/mistergroup/shouldianswer/ui/search/j;

    if-eqz p3, :cond_2

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/search/j;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/search/j;->a(Lorg/mistergroup/shouldianswer/ui/search/d;)V

    goto :goto_0

    .line 132
    :cond_2
    instance-of p3, p1, Lorg/mistergroup/shouldianswer/ui/search/k;

    if-eqz p3, :cond_3

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/search/k;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/ui/search/k;->a(Lorg/mistergroup/shouldianswer/ui/search/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-static {p2, p1, p4, p3, p4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Lorg/mistergroup/shouldianswer/components/stickyheaders/a$d;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0039

    const/4 v1, 0x0

    .line 83
    invoke-static {p2, v0, p1, v1}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/a/ac;

    .line 84
    new-instance p2, Lorg/mistergroup/shouldianswer/ui/search/h;

    const-string v0, "bindingInfo"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lorg/mistergroup/shouldianswer/ui/search/h;-><init>(Lorg/mistergroup/shouldianswer/a/ac;)V

    check-cast p2, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 86
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v1
.end method

.method public b(I)Z
    .locals 1

    .line 388
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->e:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 389
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/ui/search/a$b;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/ui/search/a$b;->d()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Lkotlin/e/a/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/e/a/m<",
            "Landroid/view/ContextMenu;",
            "Lorg/mistergroup/shouldianswer/ui/search/d;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->c:Lkotlin/e/a/m;

    return-object v0
.end method

.method public d(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final e()Lkotlin/e/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/e/a/b<",
            "Lorg/mistergroup/shouldianswer/ui/search/d;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/search/a;->d:Lkotlin/e/a/b;

    return-object v0
.end method
