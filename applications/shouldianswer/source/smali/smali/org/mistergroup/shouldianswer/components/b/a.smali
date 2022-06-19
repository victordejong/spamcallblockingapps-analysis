.class public final Lorg/mistergroup/shouldianswer/components/b/a;
.super Ljava/lang/Object;
.source "ReviewList.kt"


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/components/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lorg/mistergroup/shouldianswer/components/b/a;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/components/b/a;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/components/b/a;->a:Lorg/mistergroup/shouldianswer/components/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            "Lkotlin/c/c<",
            "-",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/b/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/mistergroup/shouldianswer/components/b/a$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/mistergroup/shouldianswer/components/b/a$b;

    iget v1, v0, Lorg/mistergroup/shouldianswer/components/b/a$b;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lorg/mistergroup/shouldianswer/components/b/a$b;->b:I

    sub-int/2addr p2, v2

    iput p2, v0, Lorg/mistergroup/shouldianswer/components/b/a$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/components/b/a$b;

    invoke-direct {v0, p0, p2}, Lorg/mistergroup/shouldianswer/components/b/a$b;-><init>(Lorg/mistergroup/shouldianswer/components/b/a;Lkotlin/c/c;)V

    :goto_0
    iget-object p2, v0, Lorg/mistergroup/shouldianswer/components/b/a$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 20
    iget v2, v0, Lorg/mistergroup/shouldianswer/components/b/a$b;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/components/b/a$b;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/components/b/a$b;->f:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/MyApp;

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/components/b/a$b;->e:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/components/b/a$b;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/components/b/a;

    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_2
    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 21
    sget-object p2, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object p2

    .line 22
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v6, "ReviewList.loadLocalReviews"

    invoke-static {v2, v6, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iput-object p0, v0, Lorg/mistergroup/shouldianswer/components/b/a$b;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/components/b/a$b;->e:Ljava/lang/Object;

    iput-object p2, v0, Lorg/mistergroup/shouldianswer/components/b/a$b;->f:Ljava/lang/Object;

    iput-object v2, v0, Lorg/mistergroup/shouldianswer/components/b/a$b;->g:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/components/b/a$b;->b:I

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->o(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, p2

    move-object p2, v0

    move-object v7, v2

    move-object v2, p1

    move-object p1, v7

    .line 20
    :goto_1
    check-cast p2, Lorg/mistergroup/shouldianswer/model/NumberReport;

    if-eqz p2, :cond_4

    .line 26
    new-instance v0, Lorg/mistergroup/shouldianswer/components/b/b;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/components/b/b;-><init>()V

    .line 27
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/mistergroup/shouldianswer/components/b/b;->a(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->f()Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/mistergroup/shouldianswer/components/b/b;->a(Lorg/mistergroup/shouldianswer/model/m;)V

    .line 29
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/mistergroup/shouldianswer/components/b/b;->c(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->e()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/mistergroup/shouldianswer/components/b/b;->a(Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 31
    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->j()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/mistergroup/shouldianswer/components/b/b;->a(Ljava/util/Date;)V

    .line 32
    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/components/b/b;->a(Lorg/mistergroup/shouldianswer/model/NumberReport;)V

    .line 33
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_4
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v0, "ReviewList.loadLocalReviews isNumberInContacts"

    invoke-static {p2, v0, v5, v4, v5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 38
    sget-object p2, Lorg/mistergroup/shouldianswer/model/ae;->a:Lorg/mistergroup/shouldianswer/model/ae;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v5, v4, v5}, Lorg/mistergroup/shouldianswer/model/ae;->a(Lorg/mistergroup/shouldianswer/model/ae;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 39
    new-instance p2, Lorg/mistergroup/shouldianswer/components/b/b;

    invoke-direct {p2}, Lorg/mistergroup/shouldianswer/components/b/b;-><init>()V

    const v0, 0x7f100203

    .line 40
    invoke-virtual {v1, v0}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/components/b/b;->a(Ljava/lang/String;)V

    const v0, 0x7f100202

    .line 41
    invoke-virtual {v1, v0}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/components/b/b;->b(Ljava/lang/String;)V

    .line 42
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ag;->b:Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/components/b/b;->a(Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 43
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v0}, Lorg/mistergroup/shouldianswer/components/b/b;->a(Ljava/util/Date;)V

    .line 44
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/NumberInfo;ZLkotlin/c/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            "Z",
            "Lkotlin/c/c<",
            "-",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/b/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/mistergroup/shouldianswer/components/b/a$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/mistergroup/shouldianswer/components/b/a$a;

    iget v1, v0, Lorg/mistergroup/shouldianswer/components/b/a$a;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lorg/mistergroup/shouldianswer/components/b/a$a;->b:I

    sub-int/2addr p3, v2

    iput p3, v0, Lorg/mistergroup/shouldianswer/components/b/a$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/components/b/a$a;

    invoke-direct {v0, p0, p3}, Lorg/mistergroup/shouldianswer/components/b/a$a;-><init>(Lorg/mistergroup/shouldianswer/components/b/a;Lkotlin/c/c;)V

    :goto_0
    iget-object p3, v0, Lorg/mistergroup/shouldianswer/components/b/a$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 50
    iget v2, v0, Lorg/mistergroup/shouldianswer/components/b/a$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/components/b/a$a;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget-object p2, v0, Lorg/mistergroup/shouldianswer/components/b/a$a;->f:Ljava/lang/Object;

    check-cast p2, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;

    iget-boolean p2, v0, Lorg/mistergroup/shouldianswer/components/b/a$a;->h:Z

    iget-object p2, v0, Lorg/mistergroup/shouldianswer/components/b/a$a;->e:Ljava/lang/Object;

    check-cast p2, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object p2, v0, Lorg/mistergroup/shouldianswer/components/b/a$a;->d:Ljava/lang/Object;

    check-cast p2, Lorg/mistergroup/shouldianswer/components/b/a;

    invoke-static {p3}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_2
    invoke-static {p3}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 51
    sget-object p3, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v2, "ReviewList.getCommunityReviews"

    invoke-virtual {p3, v2}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    .line 53
    new-instance p3, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p3, v2, v4, p2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iput-object p0, v0, Lorg/mistergroup/shouldianswer/components/b/a$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/components/b/a$a;->e:Ljava/lang/Object;

    iput-boolean p2, v0, Lorg/mistergroup/shouldianswer/components/b/a$a;->h:Z

    iput-object p3, v0, Lorg/mistergroup/shouldianswer/components/b/a$a;->f:Ljava/lang/Object;

    iput-object v2, v0, Lorg/mistergroup/shouldianswer/components/b/a$a;->g:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/components/b/a$a;->b:I

    invoke-virtual {p3, v0}, Lorg/mistergroup/shouldianswer/model/communityDatabase/CommunityReviewsLoader;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, v2

    .line 50
    :goto_1
    check-cast p3, Ljava/util/ArrayList;

    .line 57
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;

    .line 58
    new-instance v0, Lorg/mistergroup/shouldianswer/components/b/b;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/components/b/b;-><init>()V

    .line 59
    invoke-virtual {v0, p3}, Lorg/mistergroup/shouldianswer/components/b/b;->a(Lorg/mistergroup/shouldianswer/model/communityDatabase/d;)V

    .line 60
    invoke-virtual {p3}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->a()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/components/b/b;->a(Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 61
    invoke-virtual {p3}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/components/b/b;->b(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p3}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->b()Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/components/b/b;->a(Lorg/mistergroup/shouldianswer/model/m;)V

    .line 63
    invoke-virtual {p3}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/components/b/b;->a(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p3}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/components/b/b;->c(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p3}, Lorg/mistergroup/shouldianswer/model/communityDatabase/d;->f()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/mistergroup/shouldianswer/components/b/b;->a(Ljava/util/Date;)V

    .line 66
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object p1
.end method
