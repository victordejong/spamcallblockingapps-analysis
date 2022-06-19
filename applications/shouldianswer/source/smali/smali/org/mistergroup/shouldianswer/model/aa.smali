.class public final Lorg/mistergroup/shouldianswer/model/aa;
.super Ljava/util/Observable;
.source "NumberReports.kt"


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/model/aa;

.field private static final b:Lorg/mistergroup/shouldianswer/model/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lorg/mistergroup/shouldianswer/model/aa;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/aa;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/aa;->a:Lorg/mistergroup/shouldianswer/model/aa;

    .line 16
    sget-object v0, Lorg/mistergroup/shouldianswer/model/AppDatabase;->d:Lorg/mistergroup/shouldianswer/model/AppDatabase$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/AppDatabase$a;->a()Lorg/mistergroup/shouldianswer/model/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/AppDatabase;->l()Lorg/mistergroup/shouldianswer/model/y;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/model/aa;->b:Lorg/mistergroup/shouldianswer/model/y;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    .line 268
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/aa;->setChanged()V

    .line 269
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/aa;->notifyObservers()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;ZZLkotlin/c/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lkotlin/c/c<",
            "-",
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p5, 0x0

    .line 84
    move-object v0, p5

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberReport;

    const/4 v1, 0x2

    if-eqz p3, :cond_0

    .line 86
    :try_start_0
    sget-object p3, Lorg/mistergroup/shouldianswer/model/aa;->b:Lorg/mistergroup/shouldianswer/model/y;

    invoke-interface {p3, p1, p2}, Lorg/mistergroup/shouldianswer/model/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/mistergroup/shouldianswer/model/aa;->b:Lorg/mistergroup/shouldianswer/model/y;

    invoke-interface {p3, p1, p2}, Lorg/mistergroup/shouldianswer/model/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 87
    :goto_0
    move-object p3, p2

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    const/4 v2, 0x1

    xor-int/2addr p3, v2

    if-eqz p3, :cond_2

    .line 88
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-gt p3, v2, :cond_1

    const/4 p3, 0x0

    .line 89
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/model/NumberReport;

    goto :goto_1

    .line 88
    :cond_1
    new-instance p2, Ljava/lang/Exception;

    const-string p3, "NumberReports.getByNumber findByNumberNormalized returns more than 1 item!"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 92
    sget-object p3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p3, p2, p5, v1, p5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    move-object p2, v0

    :goto_1
    if-eqz p4, :cond_3

    if-eqz p2, :cond_3

    .line 97
    sget-object p3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NumberReports.getInternal "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " returns localReviewId="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " rating="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->e()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ag;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p5, v1, p5}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    return-object p2
.end method

.method public final a(Ljava/util/List;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            ">;",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mistergroup/shouldianswer/model/NumberReport;

    .line 174
    sget-object v0, Lorg/mistergroup/shouldianswer/model/aa;->b:Lorg/mistergroup/shouldianswer/model/y;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a()I

    move-result p2

    const/4 v1, 0x1

    invoke-interface {v0, p2, v1}, Lorg/mistergroup/shouldianswer/model/y;->a(IZ)V

    goto :goto_0

    .line 176
    :cond_0
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 19
    sget-object p1, Lorg/mistergroup/shouldianswer/model/aa;->b:Lorg/mistergroup/shouldianswer/model/y;

    invoke-interface {p1}, Lorg/mistergroup/shouldianswer/model/y;->a()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lorg/json/JSONArray;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 12
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

    instance-of v0, p2, Lorg/mistergroup/shouldianswer/model/aa$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/mistergroup/shouldianswer/model/aa$a;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->b:I

    sub-int/2addr p2, v2

    iput p2, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/aa$a;

    invoke-direct {v0, p0, p2}, Lorg/mistergroup/shouldianswer/model/aa$a;-><init>(Lorg/mistergroup/shouldianswer/model/aa;Lkotlin/c/c;)V

    :goto_0
    iget-object p2, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 199
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->g:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberReport;

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->f:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    iget p1, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->i:I

    iget v2, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->h:I

    iget-object v6, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->e:Ljava/lang/Object;

    check-cast v6, Lorg/json/JSONArray;

    iget-object v7, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->d:Ljava/lang/Object;

    check-cast v7, Lorg/mistergroup/shouldianswer/model/aa;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 218
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_2
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->e:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    iget-object v2, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->d:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/model/aa;

    :try_start_1
    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 201
    :try_start_2
    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->e:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->b:I

    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/model/aa;->c(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 202
    :goto_1
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberReports.importFromJSON count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6, v4, v5, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 p2, 0x0

    .line 203
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    move-object v7, v2

    move v2, p2

    move v11, v6

    move-object v6, p1

    move p1, v11

    :goto_2
    if-ge v2, p1, :cond_6

    .line 204
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    .line 205
    new-instance v8, Lorg/mistergroup/shouldianswer/model/NumberReport;

    invoke-direct {v8}, Lorg/mistergroup/shouldianswer/model/NumberReport;-><init>()V

    const-string v9, "uuid"

    .line 206
    invoke-virtual {p2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "jsonObject.getString(\"uuid\")"

    invoke-static {v9, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Ljava/lang/String;)V

    const-string v9, "number"

    .line 207
    invoke-virtual {p2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/mistergroup/shouldianswer/model/NumberReport;->b(Ljava/lang/String;)V

    const-string v9, "numberNormalized"

    .line 208
    invoke-virtual {p2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/mistergroup/shouldianswer/model/NumberReport;->c(Ljava/lang/String;)V

    const-string v9, "country"

    .line 209
    invoke-virtual {p2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/mistergroup/shouldianswer/model/NumberReport;->f(Ljava/lang/String;)V

    .line 210
    sget-object v9, Lorg/mistergroup/shouldianswer/model/ag;->e:Lorg/mistergroup/shouldianswer/model/ag$a;

    const-string v10, "rating"

    invoke-virtual {p2, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/ag$a;->a(I)Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 211
    sget-object v9, Lorg/mistergroup/shouldianswer/model/m;->w:Lorg/mistergroup/shouldianswer/model/m$a;

    const-string v10, "category"

    invoke-virtual {p2, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/mistergroup/shouldianswer/model/m$a;->a(I)Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Lorg/mistergroup/shouldianswer/model/m;)V

    const-string v9, "comment"

    .line 212
    invoke-virtual {p2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/mistergroup/shouldianswer/model/NumberReport;->e(Ljava/lang/String;)V

    .line 213
    iput-object v7, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->d:Ljava/lang/Object;

    iput-object v6, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->e:Ljava/lang/Object;

    iput v2, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->h:I

    iput p1, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->i:I

    iput-object p2, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->f:Ljava/lang/Object;

    iput-object v8, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->g:Ljava/lang/Object;

    iput v5, v0, Lorg/mistergroup/shouldianswer/model/aa$a;->b:I

    invoke-virtual {v7, v8, v0}, Lorg/mistergroup/shouldianswer/model/aa;->b(Lorg/mistergroup/shouldianswer/model/NumberReport;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_3
    add-int/2addr v2, v3

    goto :goto_2

    :catch_0
    move-exception p1

    .line 216
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v4, v5, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 218
    :cond_6
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/NumberInfo;Ljava/lang/Boolean;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/model/NumberInfo;",
            "Ljava/lang/Boolean;",
            "Lkotlin/c/c<",
            "-",
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/mistergroup/shouldianswer/model/aa$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/mistergroup/shouldianswer/model/aa$b;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->b:I

    sub-int/2addr p3, v2

    iput p3, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/aa$b;

    invoke-direct {v0, p0, p3}, Lorg/mistergroup/shouldianswer/model/aa$b;-><init>(Lorg/mistergroup/shouldianswer/model/aa;Lkotlin/c/c;)V

    :goto_0
    iget-object p3, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v7

    .line 103
    iget v1, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->b:I

    const/4 v8, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v8, :cond_1

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->g:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberReport;

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->f:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->e:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->d:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/model/aa;

    invoke-static {p3}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 127
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_2
    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->f:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/Boolean;

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->e:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v1, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->d:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/model/aa;

    invoke-static {p3}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez p2, :cond_4

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->e:Ljava/lang/Object;

    iput-object p2, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->f:Ljava/lang/Object;

    iput v2, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->b:I

    move-object v1, p0

    move-object v2, p3

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/mistergroup/shouldianswer/model/aa;->a(Ljava/lang/String;Ljava/lang/String;ZZLkotlin/c/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v7, :cond_5

    return-object v7

    :cond_5
    move-object v1, p0

    .line 103
    :goto_1
    check-cast p3, Lorg/mistergroup/shouldianswer/model/NumberReport;

    if-nez p3, :cond_7

    .line 106
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-object v1, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->e:Ljava/lang/Object;

    iput-object p2, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->f:Ljava/lang/Object;

    iput-object p3, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->g:Ljava/lang/Object;

    iput v8, v0, Lorg/mistergroup/shouldianswer/model/aa$b;->b:I

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/mistergroup/shouldianswer/model/aa;->a(Ljava/lang/String;Ljava/lang/String;ZZLkotlin/c/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v7, :cond_6

    return-object v7

    .line 103
    :cond_6
    :goto_2
    check-cast p3, Lorg/mistergroup/shouldianswer/model/NumberReport;

    :cond_7
    return-object p3
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
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p3, 0x0

    .line 60
    move-object v0, p3

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberReport;

    const/4 v1, 0x2

    .line 62
    :try_start_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->h()Ljava/lang/String;

    move-result-object v2

    .line 63
    sget-object v3, Lorg/mistergroup/shouldianswer/model/aa;->b:Lorg/mistergroup/shouldianswer/model/y;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/mistergroup/shouldianswer/model/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 64
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    sget-object v2, Lorg/mistergroup/shouldianswer/model/aa;->b:Lorg/mistergroup/shouldianswer/model/y;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/mistergroup/shouldianswer/model/y;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 67
    :cond_0
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 68
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v4, :cond_1

    const/4 v3, 0x0

    .line 69
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mistergroup/shouldianswer/model/NumberReport;

    move-object v0, v2

    goto :goto_0

    .line 68
    :cond_1
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "NumberReports.getByNumberInfo findByNumberNormalized returns more than 1 item!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    .line 72
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v2, p3, v1, p3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 77
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberReports.getInternal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " returns localReviewId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " rating="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->e()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ag;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p3, v1, p3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method final synthetic a(Lorg/mistergroup/shouldianswer/model/NumberReport;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 132
    :try_start_0
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberReports.storeInternal number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberReport;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " country="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberReport;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberReport;->e()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/ag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, p2, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 133
    sget-object v1, Lorg/mistergroup/shouldianswer/model/aa;->b:Lorg/mistergroup/shouldianswer/model/y;

    invoke-interface {v1, p1}, Lorg/mistergroup/shouldianswer/model/y;->a(Lorg/mistergroup/shouldianswer/model/NumberReport;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v1, p1, v0, p2, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 138
    :goto_0
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final b(Ljava/util/List;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            ">;",
            "Lkotlin/c/c<",
            "-",
            "Lorg/json/JSONArray;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 179
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NumberReports.exportToJSON count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p2, v0, v1, v2, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 180
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 181
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/model/NumberReport;

    .line 182
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 183
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uuid"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "number"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "numberNormalized"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->i()Ljava/lang/String;

    move-result-object v2

    const-string v3, "country"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->e()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/ag;->a()I

    move-result v2

    const-string v3, "rating"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->f()Lorg/mistergroup/shouldianswer/model/m;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/m;->a()I

    move-result v2

    const-string v3, "category"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "comment"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->g()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 192
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->g()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    const-string v3, "realDbId"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    :cond_3
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberReport;->m()Z

    move-result v0

    const-string v2, "deleted"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 194
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_4
    return-object p2
.end method

.method public final b(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 23
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "dd.MM.yyyy HH:mm:ss"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v0, "UTF"

    .line 24
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 25
    sget-object v0, Lorg/mistergroup/shouldianswer/model/aa;->b:Lorg/mistergroup/shouldianswer/model/y;

    invoke-interface {v0}, Lorg/mistergroup/shouldianswer/model/y;->a()Ljava/util/List;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mistergroup/shouldianswer/model/NumberReport;

    .line 28
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    .line 31
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->j()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->e()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "strBuilder.toString()"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Lorg/mistergroup/shouldianswer/model/NumberReport;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/mistergroup/shouldianswer/model/aa$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/mistergroup/shouldianswer/model/aa$c;

    iget v1, v0, Lorg/mistergroup/shouldianswer/model/aa$c;->b:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lorg/mistergroup/shouldianswer/model/aa$c;->b:I

    sub-int/2addr p2, v2

    iput p2, v0, Lorg/mistergroup/shouldianswer/model/aa$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/model/aa$c;

    invoke-direct {v0, p0, p2}, Lorg/mistergroup/shouldianswer/model/aa$c;-><init>(Lorg/mistergroup/shouldianswer/model/aa;Lkotlin/c/c;)V

    :goto_0
    iget-object p2, v0, Lorg/mistergroup/shouldianswer/model/aa$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 140
    iget v2, v0, Lorg/mistergroup/shouldianswer/model/aa$c;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/aa$c;->e:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/model/NumberReport;

    iget-object p1, v0, Lorg/mistergroup/shouldianswer/model/aa$c;->d:Ljava/lang/Object;

    check-cast p1, Lorg/mistergroup/shouldianswer/model/aa;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 151
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_2
    invoke-static {p2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 142
    :try_start_1
    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a(Z)V

    .line 143
    iput-object p0, v0, Lorg/mistergroup/shouldianswer/model/aa$c;->d:Ljava/lang/Object;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/model/aa$c;->e:Ljava/lang/Object;

    iput v3, v0, Lorg/mistergroup/shouldianswer/model/aa$c;->b:I

    invoke-virtual {p0, p1, v0}, Lorg/mistergroup/shouldianswer/model/aa;->a(Lorg/mistergroup/shouldianswer/model/NumberReport;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 144
    :goto_1
    sget-object p2, Lorg/mistergroup/shouldianswer/model/ab;->a:Lorg/mistergroup/shouldianswer/model/ab;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/mistergroup/shouldianswer/model/ab;->a(J)V

    .line 145
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/aa;->setChanged()V

    .line 146
    invoke-direct {p1}, Lorg/mistergroup/shouldianswer/model/aa;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 148
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 151
    :goto_2
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final c(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 0
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

    .line 43
    sget-object p1, Lorg/mistergroup/shouldianswer/model/aa;->b:Lorg/mistergroup/shouldianswer/model/y;

    invoke-interface {p1}, Lorg/mistergroup/shouldianswer/model/y;->c()V

    .line 44
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final c(Lorg/mistergroup/shouldianswer/model/NumberReport;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 161
    sget-object p2, Lorg/mistergroup/shouldianswer/model/aa;->b:Lorg/mistergroup/shouldianswer/model/y;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberReport;->a()I

    move-result p1

    invoke-interface {p2, p1}, Lorg/mistergroup/shouldianswer/model/y;->a(I)V

    .line 162
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ab;->a:Lorg/mistergroup/shouldianswer/model/ab;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/mistergroup/shouldianswer/model/ab;->a(J)V

    .line 163
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/model/aa;->setChanged()V

    .line 164
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/aa;->a()V

    .line 165
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method

.method public final d(Lkotlin/c/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "-",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/model/NumberReport;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 169
    sget-object p1, Lorg/mistergroup/shouldianswer/model/aa;->b:Lorg/mistergroup/shouldianswer/model/y;

    invoke-interface {p1}, Lorg/mistergroup/shouldianswer/model/y;->b()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
