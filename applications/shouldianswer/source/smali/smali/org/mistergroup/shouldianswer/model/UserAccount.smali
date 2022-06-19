.class public final Lorg/mistergroup/shouldianswer/model/UserAccount;
.super Ljava/lang/Object;
.source "UserAccount.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/model/UserAccount$EAccessDenied;,
        Lorg/mistergroup/shouldianswer/model/UserAccount$EUser;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/model/UserAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lorg/mistergroup/shouldianswer/model/UserAccount;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/model/UserAccount;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/model/UserAccount;->a:Lorg/mistergroup/shouldianswer/model/UserAccount;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/c/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/c/c<",
            "-",
            "Lkotlin/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    instance-of v6, v5, Lorg/mistergroup/shouldianswer/model/UserAccount$a;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;

    iget v7, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->b:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    iget v5, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->b:I

    sub-int/2addr v5, v8

    iput v5, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;

    invoke-direct {v6, v0, v5}, Lorg/mistergroup/shouldianswer/model/UserAccount$a;-><init>(Lorg/mistergroup/shouldianswer/model/UserAccount;Lkotlin/c/c;)V

    :goto_0
    iget-object v5, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v7

    .line 26
    iget v8, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->b:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v8, :cond_4

    if-eq v8, v11, :cond_3

    if-eq v8, v10, :cond_2

    if-ne v8, v9, :cond_1

    iget-object v1, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->k:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    iget-object v1, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->j:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/utils/ad$a;

    iget-object v1, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->i:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    iget-object v1, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v1, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->d:Ljava/lang/Object;

    check-cast v1, Lorg/mistergroup/shouldianswer/model/UserAccount;

    invoke-static {v5}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 70
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_2
    iget-object v1, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->m:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONArray;

    iget-object v1, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->l:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    iget-object v1, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->k:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    iget-object v2, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->j:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/utils/ad$a;

    iget-object v3, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->i:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    iget-object v4, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->h:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v8, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->g:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v12, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->f:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->e:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->d:Ljava/lang/Object;

    check-cast v14, Lorg/mistergroup/shouldianswer/model/UserAccount;

    invoke-static {v5}, Lkotlin/k;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object v1, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->l:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONArray;

    iget-object v1, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->k:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    iget-object v2, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->j:Ljava/lang/Object;

    check-cast v2, Lorg/mistergroup/shouldianswer/utils/ad$a;

    iget-object v3, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->i:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashMap;

    iget-object v4, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->h:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v8, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->g:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v12, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->f:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->e:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->d:Ljava/lang/Object;

    check-cast v14, Lorg/mistergroup/shouldianswer/model/UserAccount;

    invoke-static {v5}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object v5, v3

    move-object v3, v8

    move-object v8, v2

    move-object v2, v12

    move-object v12, v1

    goto :goto_1

    :cond_4
    invoke-static {v5}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 27
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 28
    move-object v8, v5

    check-cast v8, Ljava/util/Map;

    const-string v12, "groupId"

    invoke-interface {v8, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "groupPassword"

    .line 29
    invoke-interface {v8, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "userId"

    .line 30
    invoke-interface {v8, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "userPassword"

    .line 31
    invoke-interface {v8, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v8, Lorg/mistergroup/shouldianswer/utils/ad;->a:Lorg/mistergroup/shouldianswer/utils/ad;

    sget-object v12, Lorg/mistergroup/shouldianswer/utils/ad;->a:Lorg/mistergroup/shouldianswer/utils/ad;

    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/utils/ad;->f()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12, v5}, Lorg/mistergroup/shouldianswer/utils/ad;->b(Ljava/lang/String;Ljava/util/HashMap;)Lorg/mistergroup/shouldianswer/utils/ad$a;

    move-result-object v8

    .line 33
    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/utils/ad$a;->a()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 34
    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/utils/ad$a;->c()Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_9

    const-string v13, "appId"

    .line 35
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 36
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 37
    sget-object v15, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-static {v14, v13}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Lorg/mistergroup/shouldianswer/model/c;->a(Ljava/lang/String;)V

    :cond_5
    const-string v13, "reports"

    .line 39
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 40
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 41
    sget-object v15, Lorg/mistergroup/shouldianswer/model/aa;->a:Lorg/mistergroup/shouldianswer/model/aa;

    invoke-static {v14, v13}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->d:Ljava/lang/Object;

    iput-object v1, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->e:Ljava/lang/Object;

    iput-object v2, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->f:Ljava/lang/Object;

    iput-object v3, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->g:Ljava/lang/Object;

    iput-object v4, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->h:Ljava/lang/Object;

    iput-object v5, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->i:Ljava/lang/Object;

    iput-object v8, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->j:Ljava/lang/Object;

    iput-object v12, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->k:Ljava/lang/Object;

    iput-object v14, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->l:Ljava/lang/Object;

    iput v11, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->b:I

    invoke-virtual {v15, v14, v6}, Lorg/mistergroup/shouldianswer/model/aa;->a(Lorg/json/JSONArray;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v7, :cond_6

    return-object v7

    :goto_1
    move-object v1, v12

    move-object v12, v2

    move-object v2, v8

    move-object v8, v3

    move-object v3, v5

    goto :goto_2

    :cond_6
    move-object v14, v0

    move-object v13, v1

    goto :goto_1

    :goto_2
    const-string v5, "settings"

    .line 43
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 44
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string v15, "userSettings"

    .line 45
    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 46
    invoke-virtual {v5, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    if-eqz v15, :cond_7

    .line 47
    sget-object v11, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v11, v15}, Lorg/mistergroup/shouldianswer/model/ai;->a(Lorg/json/JSONObject;)V

    :cond_7
    const-string v11, "blockExceptions"

    .line 50
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 51
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 52
    sget-object v15, Lorg/mistergroup/shouldianswer/model/g;->a:Lorg/mistergroup/shouldianswer/model/g;

    iput-object v14, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->d:Ljava/lang/Object;

    iput-object v13, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->e:Ljava/lang/Object;

    iput-object v12, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->f:Ljava/lang/Object;

    iput-object v8, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->g:Ljava/lang/Object;

    iput-object v4, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->h:Ljava/lang/Object;

    iput-object v3, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->i:Ljava/lang/Object;

    iput-object v2, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->j:Ljava/lang/Object;

    iput-object v1, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->k:Ljava/lang/Object;

    iput-object v5, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->l:Ljava/lang/Object;

    iput-object v11, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->m:Ljava/lang/Object;

    iput v10, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->b:I

    invoke-virtual {v15, v11, v6}, Lorg/mistergroup/shouldianswer/model/g;->a(Lorg/json/JSONArray;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v7, :cond_8

    return-object v7

    :cond_8
    :goto_3
    const-string v5, "new"

    .line 57
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 58
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v11, 0x0

    const-string v15, "UserAccount.connectAccount - newuser -> uploadData"

    invoke-static {v5, v15, v11, v10, v11}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 59
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/ad;->a:Lorg/mistergroup/shouldianswer/utils/ad;

    iput-object v14, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->d:Ljava/lang/Object;

    iput-object v13, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->e:Ljava/lang/Object;

    iput-object v12, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->f:Ljava/lang/Object;

    iput-object v8, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->g:Ljava/lang/Object;

    iput-object v4, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->h:Ljava/lang/Object;

    iput-object v3, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->i:Ljava/lang/Object;

    iput-object v2, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->j:Ljava/lang/Object;

    iput-object v1, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->k:Ljava/lang/Object;

    iput v9, v6, Lorg/mistergroup/shouldianswer/model/UserAccount$a;->b:I

    const/4 v1, 0x1

    invoke-virtual {v5, v1, v6}, Lorg/mistergroup/shouldianswer/utils/ad;->a(ZLkotlin/c/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_9

    return-object v7

    .line 70
    :cond_9
    :goto_4
    sget-object v1, Lkotlin/o;->a:Lkotlin/o;

    return-object v1

    .line 63
    :cond_a
    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/utils/ad$a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v2, "Invalid Password"

    .line 64
    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 65
    new-instance v1, Lorg/mistergroup/shouldianswer/model/UserAccount$EAccessDenied;

    const-string v2, "Access denied"

    invoke-direct {v1, v2}, Lorg/mistergroup/shouldianswer/model/UserAccount$EAccessDenied;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 68
    :cond_b
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Unknown Error"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final a()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "us"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/ab;->a:Lorg/mistergroup/shouldianswer/utils/ab;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/ab;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "er"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "us"

    .line 16
    invoke-static {p1, v3, v2, v1, v0}, Lkotlin/i/g;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    const-string v3, "er"

    .line 17
    invoke-static {p1, v3, v2, v1, v0}, Lkotlin/i/g;->c(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 18
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x19

    if-ge p1, v0, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
