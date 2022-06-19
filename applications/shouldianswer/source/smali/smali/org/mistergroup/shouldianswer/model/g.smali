.class public final Lorg/mistergroup/shouldianswer/model/g;
.super Ljava/util/Observable;
.source "BlockExceptions.kt"


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/model/g;

.field private static final b:Lorg/mistergroup/shouldianswer/model/e;

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lorg/mistergroup/shouldianswer/model/g;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/g;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/g;->a:Lorg/mistergroup/shouldianswer/model/g;

    .line 18
    sget-object v0, Lorg/mistergroup/shouldianswer/model/AppDatabase;->d:Lorg/mistergroup/shouldianswer/model/AppDatabase$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/AppDatabase$a;->a()Lorg/mistergroup/shouldianswer/model/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/AppDatabase;->n()Lorg/mistergroup/shouldianswer/model/e;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/model/g;->b:Lorg/mistergroup/shouldianswer/model/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/String;Ljava/lang/String;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 74
    sget-object p3, Lorg/mistergroup/shouldianswer/model/g;->b:Lorg/mistergroup/shouldianswer/model/e;

    invoke-interface {p3, p1, p2}, Lorg/mistergroup/shouldianswer/model/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 75
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/model/d;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/d;->e()Z

    move-result p1

    invoke-static {p1}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method final synthetic a(Ljava/lang/String;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 79
    sget-object p2, Lorg/mistergroup/shouldianswer/model/g;->b:Lorg/mistergroup/shouldianswer/model/e;

    invoke-interface {p2, p1}, Lorg/mistergroup/shouldianswer/model/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 80
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/model/d;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/d;->e()Z

    move-result p1

    invoke-static {p1}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final a(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 0
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

    .line 63
    sget-object p1, Lorg/mistergroup/shouldianswer/model/g;->b:Lorg/mistergroup/shouldianswer/model/e;

    invoke-interface {p1}, Lorg/mistergroup/shouldianswer/model/e;->b()Lorg/mistergroup/shouldianswer/model/d;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lorg/json/JSONArray;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/mistergroup/shouldianswer/model/g$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/mistergroup/shouldianswer/model/g$d;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/g$d;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lorg/mistergroup/shouldianswer/model/g$d;->b:I

    sub-int/2addr p2, v2

    iput p2, v0, Lorg/mistergroup/shouldianswer/model/g$d;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/g$d;

    invoke-direct {v0, p0, p2}, Lorg/mistergroup/shouldianswer/model/g$d;-><init>(Lorg/mistergroup/shouldianswer/model/g;Lkotlin/c/c;)V

    :goto_0
    iget-object p2, v0, Lorg/mistergroup/shouldianswer/model/g$d;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 167
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/g$d;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/g$d;->e:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/g$d;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/g;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 184
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_2
    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 169
    :try_start_1
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumberReports.importFromJSON count="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 170
    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/g$d;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/model/g$d;->e:Ljava/lang/Object;

    iput v5, v0, Lorg/mistergroup/shouldianswer/model/g$d;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/g;->b(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 171
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_4

    .line 172
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 173
    new-instance v6, Lorg/mistergroup/shouldianswer/model/d;

    invoke-direct {v6}, Lorg/mistergroup/shouldianswer/model/d;-><init>()V

    const-string v7, "number"

    .line 174
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/mistergroup/shouldianswer/model/d;->a(Ljava/lang/String;)V

    const-string v7, "numberNormalized"

    .line 175
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/mistergroup/shouldianswer/model/d;->b(Ljava/lang/String;)V

    const-string v7, "country"

    .line 176
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/mistergroup/shouldianswer/model/d;->c(Ljava/lang/String;)V

    const-string v7, "block"

    .line 177
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lorg/mistergroup/shouldianswer/model/d;->a(Z)V

    const-string v7, "masked"

    .line 178
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v6, v2}, Lorg/mistergroup/shouldianswer/model/d;->b(Z)V

    .line 179
    sget-object v2, Lorg/mistergroup/shouldianswer/model/g;->b:Lorg/mistergroup/shouldianswer/model/e;

    new-array v7, v5, [Lorg/mistergroup/shouldianswer/model/d;

    aput-object v6, v7, v0

    invoke-interface {v2, v7}, Lorg/mistergroup/shouldianswer/model/e;->a([Lorg/mistergroup/shouldianswer/model/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 182
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 184
    :cond_4
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 44
    :try_start_0
    sget-object p2, Lorg/mistergroup/shouldianswer/model/g;->b:Lorg/mistergroup/shouldianswer/model/e;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/mistergroup/shouldianswer/model/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 45
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    sget-object p1, Lorg/mistergroup/shouldianswer/model/g;->b:Lorg/mistergroup/shouldianswer/model/e;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/model/d;

    invoke-interface {p1, p2}, Lorg/mistergroup/shouldianswer/model/e;->a(Lorg/mistergroup/shouldianswer/model/d;)V

    goto :goto_0

    .line 48
    :cond_0
    sget-object p2, Lorg/mistergroup/shouldianswer/model/g;->b:Lorg/mistergroup/shouldianswer/model/e;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/mistergroup/shouldianswer/model/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 49
    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    .line 50
    sget-object p2, Lorg/mistergroup/shouldianswer/model/g;->b:Lorg/mistergroup/shouldianswer/model/e;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/model/d;

    invoke-interface {p2, p1}, Lorg/mistergroup/shouldianswer/model/e;->a(Lorg/mistergroup/shouldianswer/model/d;)V

    .line 53
    :cond_1
    :goto_0
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ab;->a:Lorg/mistergroup/shouldianswer/model/ab;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/model/ab;->a(J)V

    .line 54
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/g;->setChanged()V

    .line 55
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/g;->notifyObservers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 57
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 60
    :goto_1
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/NumberInfo;ZLkotlin/c/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            "Z",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p3, 0x2

    const/4 v0, 0x0

    .line 23
    :try_start_0
    sget-object v1, Lorg/mistergroup/shouldianswer/model/g;->b:Lorg/mistergroup/shouldianswer/model/e;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/mistergroup/shouldianswer/model/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mistergroup/shouldianswer/model/d;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 26
    new-instance v1, Lorg/mistergroup/shouldianswer/model/d;

    invoke-direct {v1}, Lorg/mistergroup/shouldianswer/model/d;-><init>()V

    .line 27
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v5}, Lorg/mistergroup/shouldianswer/model/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_1
    invoke-virtual {v1, p2}, Lorg/mistergroup/shouldianswer/model/d;->a(Z)V

    .line 30
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "*"

    invoke-static {p1, p2, v3, p3, v0}, Lkotlin/i/g;->c(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lorg/mistergroup/shouldianswer/model/d;->b(Z)V

    .line 31
    sget-object p1, Lorg/mistergroup/shouldianswer/model/g;->b:Lorg/mistergroup/shouldianswer/model/e;

    const/4 p2, 0x1

    new-array p2, p2, [Lorg/mistergroup/shouldianswer/model/d;

    aput-object v1, p2, v3

    invoke-interface {p1, p2}, Lorg/mistergroup/shouldianswer/model/e;->a([Lorg/mistergroup/shouldianswer/model/d;)V

    .line 32
    move-object p1, v0

    check-cast p1, Ljava/util/List;

    sput-object p1, Lorg/mistergroup/shouldianswer/model/g;->c:Ljava/util/List;

    .line 33
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ab;->a:Lorg/mistergroup/shouldianswer/model/ab;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/mistergroup/shouldianswer/model/ab;->a(J)V

    .line 34
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/g;->setChanged()V

    .line 35
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/g;->notifyObservers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 37
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v0, p3, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 40
    :goto_1
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/ac;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/model/ac;",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 110
    invoke-static {p2}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 111
    :cond_0
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->s()Ljava/lang/String;

    move-result-object v0

    .line 112
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/w;->a:Lorg/mistergroup/shouldianswer/utils/w;

    invoke-virtual {v1, v0}, Lorg/mistergroup/shouldianswer/utils/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 113
    :cond_1
    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/i/f;

    const-string v2, ","

    invoke-direct {v1, v2}, Lkotlin/i/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, p2}, Lkotlin/i/f;->a(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 190
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 191
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 192
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 113
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, p2

    :goto_0
    invoke-static {v3}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 193
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lkotlin/a/g;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 197
    :cond_4
    invoke-static {}, Lkotlin/a/g;->a()Ljava/util/List;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_9

    new-array v1, p2, [Ljava/lang/String;

    .line 199
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 113
    check-cast v0, [Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object p1

    .line 115
    array-length v1, v0

    move v3, p2

    :goto_2
    if-ge v3, v1, :cond_7

    aget-object v4, v0, v3

    if-eqz v4, :cond_6

    .line 116
    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/i/g;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 117
    invoke-static {v2}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 116
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_7
    invoke-static {p2}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 199
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 198
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 67
    sget-object p1, Lorg/mistergroup/shouldianswer/model/g;->b:Lorg/mistergroup/shouldianswer/model/e;

    invoke-interface {p1}, Lorg/mistergroup/shouldianswer/model/e;->c()V

    .line 68
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ab;->a:Lorg/mistergroup/shouldianswer/model/ab;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/model/ab;->a(J)V

    .line 69
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/g;->setChanged()V

    .line 70
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/g;->notifyObservers()V

    .line 71
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final b(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/mistergroup/shouldianswer/model/g$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/mistergroup/shouldianswer/model/g$b;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/g$b;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lorg/mistergroup/shouldianswer/model/g$b;->b:I

    sub-int/2addr p2, v2

    iput p2, v0, Lorg/mistergroup/shouldianswer/model/g$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/g$b;

    invoke-direct {v0, p0, p2}, Lorg/mistergroup/shouldianswer/model/g$b;-><init>(Lorg/mistergroup/shouldianswer/model/g;Lkotlin/c/c;)V

    :goto_0
    iget-object p2, v0, Lorg/mistergroup/shouldianswer/model/g$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 83
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/g$b;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/g$b;->f:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/g$b;->e:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/g$b;->d:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/model/g;

    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_2
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/g$b;->e:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/model/g$b;->d:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/model/g;

    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v2

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/g$b;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/model/g$b;->e:Ljava/lang/Object;

    iput v4, v0, Lorg/mistergroup/shouldianswer/model/g$b;->b:I

    invoke-virtual {p0, p2, v2, v0}, Lorg/mistergroup/shouldianswer/model/g;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 83
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    if-nez p2, :cond_6

    .line 85
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h()Ljava/lang/String;

    move-result-object v4

    iput-object v2, v0, Lorg/mistergroup/shouldianswer/model/g$b;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/model/g$b;->e:Ljava/lang/Object;

    iput-object p2, v0, Lorg/mistergroup/shouldianswer/model/g$b;->f:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/g$b;->b:I

    invoke-virtual {v2, v4, v0}, Lorg/mistergroup/shouldianswer/model/g;->a(Ljava/lang/String;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 83
    :cond_5
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    :cond_6
    return-object p2
.end method

.method public final b(Lorg/mistergroup/shouldianswer/model/ac;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/model/ac;",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 124
    invoke-static {p2}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 125
    :cond_0
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->t()Ljava/lang/String;

    move-result-object v0

    .line 126
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/w;->a:Lorg/mistergroup/shouldianswer/utils/w;

    invoke-virtual {v1, v0}, Lorg/mistergroup/shouldianswer/utils/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 127
    :cond_1
    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/i/f;

    const-string v2, ","

    invoke-direct {v1, v2}, Lkotlin/i/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, p2}, Lkotlin/i/f;->a(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 201
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 202
    :cond_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 203
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 127
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, p2

    :goto_0
    invoke-static {v3}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 204
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lkotlin/a/g;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 208
    :cond_4
    invoke-static {}, Lkotlin/a/g;->a()Ljava/util/List;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_8

    new-array v1, p2, [Ljava/lang/String;

    .line 210
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 127
    check-cast v0, [Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ac;->k()Lorg/mistergroup/shouldianswer/model/ad$b;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 129
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ad$b;->a()Ljava/lang/String;

    move-result-object p1

    .line 130
    array-length v1, v0

    move v3, p2

    :goto_2
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 131
    invoke-static {v4, p1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 132
    invoke-static {v2}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 136
    :cond_6
    invoke-static {p2}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 210
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_8
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/d;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 140
    sget-object p1, Lorg/mistergroup/shouldianswer/model/g;->b:Lorg/mistergroup/shouldianswer/model/e;

    invoke-interface {p1}, Lorg/mistergroup/shouldianswer/model/e;->d()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/mistergroup/shouldianswer/model/g$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/mistergroup/shouldianswer/model/g$c;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/g$c;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lorg/mistergroup/shouldianswer/model/g$c;->b:I

    sub-int/2addr p2, v2

    iput p2, v0, Lorg/mistergroup/shouldianswer/model/g$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/g$c;

    invoke-direct {v0, p0, p2}, Lorg/mistergroup/shouldianswer/model/g$c;-><init>(Lorg/mistergroup/shouldianswer/model/g;Lkotlin/c/c;)V

    :goto_0
    iget-object p2, v0, Lorg/mistergroup/shouldianswer/model/g$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 91
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/g$c;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/g$c;->e:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/g$c;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/g;

    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 106
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_2
    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 92
    sget-object p2, Lorg/mistergroup/shouldianswer/model/g;->c:Ljava/util/List;

    if-nez p2, :cond_3

    .line 93
    sget-object p2, Lorg/mistergroup/shouldianswer/model/g;->b:Lorg/mistergroup/shouldianswer/model/e;

    invoke-interface {p2}, Lorg/mistergroup/shouldianswer/model/e;->f()Ljava/util/List;

    move-result-object p2

    sput-object p2, Lorg/mistergroup/shouldianswer/model/g;->c:Ljava/util/List;

    .line 95
    :cond_3
    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/g$c;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/model/g$c;->e:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/g$c;->b:I

    invoke-virtual {p1, v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 91
    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h()Ljava/lang/String;

    move-result-object p1

    .line 97
    sget-object v0, Lorg/mistergroup/shouldianswer/model/g;->c:Ljava/util/List;

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_5
    check-cast v0, Ljava/lang/Iterable;

    .line 187
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mistergroup/shouldianswer/model/d;

    .line 98
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/d;->b()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_7
    if-eqz v4, :cond_b

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/i/g;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 99
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_8

    move v5, v3

    goto :goto_2

    :cond_8
    move v5, v6

    :goto_2
    if-eqz v5, :cond_6

    const-string v5, "*"

    invoke-static {v4, v5, v3}, Lkotlin/i/g;->c(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 100
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    if-eqz v4, :cond_a

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v4, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    .line 101
    invoke-static {p2, v4, v6, v5, v2}, Lkotlin/i/g;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {p1, v4, v6, v5, v2}, Lkotlin/i/g;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 102
    :cond_9
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/d;->e()Z

    move-result p1

    invoke-static {p1}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 100
    :cond_a
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    return-object v2
.end method

.method public final d(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/d;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 144
    sget-object p1, Lorg/mistergroup/shouldianswer/model/g;->b:Lorg/mistergroup/shouldianswer/model/e;

    invoke-interface {p1}, Lorg/mistergroup/shouldianswer/model/e;->e()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/d;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 148
    sget-object p1, Lorg/mistergroup/shouldianswer/model/g;->b:Lorg/mistergroup/shouldianswer/model/e;

    invoke-interface {p1}, Lorg/mistergroup/shouldianswer/model/e;->a()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Lorg/json/JSONArray;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/mistergroup/shouldianswer/model/g$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mistergroup/shouldianswer/model/g$a;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/g$a;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/g$a;->b:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/g$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/g$a;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/model/g$a;-><init>(Lorg/mistergroup/shouldianswer/model/g;Lkotlin/c/c;)V

    :goto_0
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/g$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 151
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/g$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/model/g$a;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/g;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 164
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_2
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 152
    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/g$a;->d:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/g$a;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/g;->e(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 151
    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 153
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NumberReports.exportToJSON count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 154
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mistergroup/shouldianswer/model/d;

    .line 156
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 157
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/d;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "number"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/d;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "numberNormalized"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/d;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "country"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/d;->e()Z

    move-result v3

    const-string v4, "block"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 161
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/d;->f()Z

    move-result v1

    const-string v3, "masked"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 162
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_4
    return-object v0
.end method
