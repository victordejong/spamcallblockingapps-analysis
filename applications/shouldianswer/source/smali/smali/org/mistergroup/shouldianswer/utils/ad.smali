.class public final Lorg/mistergroup/shouldianswer/utils/ad;
.super Ljava/lang/Object;
.source "WebService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/utils/ad$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/utils/ad;

# The value of this static final field might be set in the static constructor
.field private static final b:Ljava/lang/String; = "/supportcenter?src=app"

# The value of this static final field might be set in the static constructor
.field private static final c:Ljava/lang/String; = "/appn-terms"

# The value of this static final field might be set in the static constructor
.field private static final d:Ljava/lang/String; = "/appn-privacy"

# The value of this static final field might be set in the static constructor
.field private static final e:Ljava/lang/String; = "/mobile-app/ticket"

# The value of this static final field might be set in the static constructor
.field private static final f:Ljava/lang/String; = "/mobile-app/about"

# The value of this static final field might be set in the static constructor
.field private static final g:Ljava/lang/String; = "/kb/"

# The value of this static final field might be set in the static constructor
.field private static final h:Ljava/lang/String; = "/send-app-ticket"

# The value of this static final field might be set in the static constructor
.field private static final i:Ljava/lang/String; = "/upload-logs"

# The value of this static final field might be set in the static constructor
.field private static final j:Ljava/lang/String; = "/get-reviews"

# The value of this static final field might be set in the static constructor
.field private static final k:Ljava/lang/String; = "/delete-report"

# The value of this static final field might be set in the static constructor
.field private static final l:Ljava/lang/String; = "/upload-data"

# The value of this static final field might be set in the static constructor
.field private static final m:Ljava/lang/String; = "/get-database"

# The value of this static final field might be set in the static constructor
.field private static final n:Ljava/lang/String; = "/connect-user"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/ad;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/utils/ad;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->a:Lorg/mistergroup/shouldianswer/utils/ad;

    const-string v0, "/supportcenter?src=app"

    .line 20
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->b:Ljava/lang/String;

    const-string v0, "/appn-terms"

    .line 21
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->c:Ljava/lang/String;

    const-string v0, "/appn-privacy"

    .line 22
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->d:Ljava/lang/String;

    const-string v0, "/mobile-app/ticket"

    .line 23
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->e:Ljava/lang/String;

    const-string v0, "/mobile-app/about"

    .line 24
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->f:Ljava/lang/String;

    const-string v0, "/kb/"

    .line 25
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->g:Ljava/lang/String;

    const-string v0, "/send-app-ticket"

    .line 26
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->h:Ljava/lang/String;

    const-string v0, "/upload-logs"

    .line 27
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->i:Ljava/lang/String;

    const-string v0, "/get-reviews"

    .line 28
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->j:Ljava/lang/String;

    const-string v0, "/delete-report"

    .line 29
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->k:Ljava/lang/String;

    const-string v0, "/upload-data"

    .line 30
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->l:Ljava/lang/String;

    const-string v0, "/get-database"

    .line 31
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->m:Ljava/lang/String;

    const-string v0, "/connect-user"

    .line 32
    sput-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->n:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/util/HashMap;)Lokhttp3/aa;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/aa;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 62
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 63
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    sget-object v1, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/c;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_appId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "Build.DEVICE"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "_device"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Build.MODEL"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "_model"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Build.MANUFACTURER"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "_manufacturer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_api"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v1, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_appFamily"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/r;->a:Lorg/mistergroup/shouldianswer/utils/r;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/r;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_appVer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v1, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->a:Lorg/mistergroup/shouldianswer/model/communityDatabase/a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_dbVer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Lorg/mistergroup/shouldianswer/model/t;->a:Lorg/mistergroup/shouldianswer/model/t;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/t;->a()Lorg/mistergroup/shouldianswer/model/t$a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/t$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_country"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v0, Lokhttp3/v$a;

    invoke-direct {v0}, Lokhttp3/v$a;-><init>()V

    sget-object v1, Lokhttp3/v;->e:Lokhttp3/u;

    invoke-virtual {v0, v1}, Lokhttp3/v$a;->a(Lokhttp3/u;)Lokhttp3/v$a;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 77
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, v3, v4}, Lokhttp3/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/v$a;

    goto :goto_0

    .line 81
    :cond_2
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/k;->a:Lorg/mistergroup/shouldianswer/utils/k;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "saltandmira2"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/mistergroup/shouldianswer/utils/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "_checksum"

    .line 82
    invoke-virtual {v0, v1, p1}, Lokhttp3/v$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/v$a;

    .line 83
    invoke-virtual {v0}, Lokhttp3/v$a;->a()Lokhttp3/v;

    move-result-object p1

    const-string v0, "bodyBuilder.build()"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lokhttp3/aa;

    return-object p1
.end method

.method private final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://aapi.shouldianswer.net/srvapp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(ZLkotlin/c/c;)Ljava/lang/Object;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/c/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lorg/mistergroup/shouldianswer/utils/ad$b;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/mistergroup/shouldianswer/utils/ad$b;

    iget v4, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->b:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->b:I

    sub-int/2addr v2, v5

    iput v2, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/mistergroup/shouldianswer/utils/ad$b;

    invoke-direct {v3, v1, v2}, Lorg/mistergroup/shouldianswer/utils/ad$b;-><init>(Lorg/mistergroup/shouldianswer/utils/ad;Lkotlin/c/c;)V

    :goto_0
    iget-object v2, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v4

    .line 158
    iget v5, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->b:I

    const-string v6, "country"

    const-string v7, "numberNormalized"

    const-string v8, "number"

    packed-switch v5, :pswitch_data_0

    .line 249
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :pswitch_0
    iget-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->o:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/utils/ad$a;

    iget-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->m:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    iget-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->l:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->k:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    iget-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->j:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    iget-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->i:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    iget v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->s:I

    iget-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->h:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    iget-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->f:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    iget-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-wide v4, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->r:J

    iget-wide v4, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->q:J

    iget-boolean v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->p:Z

    iget-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/utils/ad;

    :try_start_0
    invoke-static {v2}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_9

    :pswitch_1
    iget-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->o:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/utils/ad$a;

    iget-object v5, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->n:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashMap;

    iget-object v6, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->m:Ljava/lang/Object;

    check-cast v6, Lorg/json/JSONArray;

    iget-object v7, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->l:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v8, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->k:Ljava/lang/Object;

    check-cast v8, Lorg/json/JSONObject;

    iget-object v13, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->j:Ljava/lang/Object;

    check-cast v13, Lorg/json/JSONArray;

    iget-object v14, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->i:Ljava/lang/Object;

    check-cast v14, Lorg/json/JSONObject;

    iget v15, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->s:I

    iget-object v9, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->h:Ljava/lang/Object;

    check-cast v9, Lorg/json/JSONArray;

    iget-object v10, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->g:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->f:Ljava/lang/Object;

    check-cast v11, Lorg/json/JSONArray;

    iget-object v12, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->e:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    move-object/from16 p1, v5

    move-object/from16 v16, v6

    iget-wide v5, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->r:J

    move-wide/from16 v17, v5

    iget-wide v5, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->q:J

    move-object/from16 v19, v0

    iget-boolean v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->p:Z

    move/from16 v20, v0

    iget-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/utils/ad;

    :try_start_1
    invoke-static {v2}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v26, p1

    move-object v2, v8

    move-object/from16 v25, v16

    move-object/from16 v27, v19

    move-object/from16 v19, v4

    move-wide v4, v5

    move-object/from16 v16, v7

    move-wide/from16 v7, v17

    move/from16 v6, v20

    move-object/from16 v28, v14

    move-object v14, v12

    move-object/from16 v12, v28

    goto/16 :goto_8

    :pswitch_2
    iget-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->k:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    iget-object v5, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->j:Ljava/lang/Object;

    check-cast v5, Lorg/json/JSONArray;

    iget-object v9, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->i:Ljava/lang/Object;

    check-cast v9, Lorg/json/JSONObject;

    iget v10, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->s:I

    iget-object v11, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->h:Ljava/lang/Object;

    check-cast v11, Lorg/json/JSONArray;

    iget-object v12, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->g:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->f:Ljava/lang/Object;

    check-cast v13, Lorg/json/JSONArray;

    iget-object v14, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->e:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    move-object/from16 p1, v9

    move v15, v10

    iget-wide v9, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->r:J

    move-wide/from16 v16, v9

    iget-wide v9, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->q:J

    move-object/from16 v18, v0

    iget-boolean v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->p:Z

    move/from16 v19, v0

    iget-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/utils/ad;

    :try_start_2
    invoke-static {v2}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v0

    move-object v0, v2

    move-object/from16 v20, v7

    move-object v2, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v8

    move-wide/from16 v7, v16

    move-object/from16 v28, v5

    move-object/from16 v5, p1

    move-object/from16 p1, v6

    move/from16 v6, v19

    move-object/from16 v19, v4

    move-object v4, v11

    move-object v11, v13

    move-object/from16 v13, v28

    goto/16 :goto_5

    :pswitch_3
    iget-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->i:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    iget v5, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->s:I

    iget-object v9, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->h:Ljava/lang/Object;

    check-cast v9, Lorg/json/JSONArray;

    iget-object v10, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->g:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    iget-object v11, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->f:Ljava/lang/Object;

    check-cast v11, Lorg/json/JSONArray;

    iget-object v12, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->e:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-wide v13, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->r:J

    move-object/from16 p1, v9

    move-object v15, v10

    iget-wide v9, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->q:J

    move-object/from16 v16, v0

    iget-boolean v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->p:Z

    move/from16 v17, v0

    iget-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->d:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/utils/ad;

    :try_start_3
    invoke-static {v2}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v0

    move-object/from16 v20, v7

    move-object/from16 v18, v8

    move-object v7, v11

    move-object/from16 v0, v16

    move-object v8, v4

    move v11, v5

    move-object v5, v12

    move-object/from16 v4, p1

    move-object/from16 p1, v6

    move/from16 v6, v17

    goto/16 :goto_4

    :pswitch_4
    iget-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-wide v9, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->r:J

    iget-wide v11, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->q:J

    iget-boolean v5, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->p:Z

    iget-object v13, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->d:Ljava/lang/Object;

    check-cast v13, Lorg/mistergroup/shouldianswer/utils/ad;

    :try_start_4
    invoke-static {v2}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v15, v6

    move v6, v5

    move-object v5, v0

    move-object v0, v13

    move-wide v13, v9

    goto/16 :goto_2

    :pswitch_5
    iget-wide v9, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->r:J

    iget-wide v11, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->q:J

    iget-boolean v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->p:Z

    iget-object v5, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->d:Ljava/lang/Object;

    check-cast v5, Lorg/mistergroup/shouldianswer/utils/ad;

    :try_start_5
    invoke-static {v2}, Lkotlin/k;->a(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v15, v6

    goto :goto_1

    :pswitch_6
    invoke-static {v2}, Lkotlin/k;->a(Ljava/lang/Object;)V

    .line 160
    :try_start_6
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "webService.uploadData force="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v2, v5, v10, v9, v10}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 161
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 162
    sget-object v2, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/c;->K()J

    move-result-wide v11

    if-nez v0, :cond_1

    sub-long v13, v9, v11

    .line 163
    sget-object v2, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/c;->c()I

    move-result v2

    move-object v15, v6

    int-to-long v5, v2

    cmp-long v2, v13, v5

    if-gez v2, :cond_2

    .line 164
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "uploadData.end no time for check"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v2, 0x0

    .line 165
    invoke-static {v2}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v15, v6

    .line 168
    :cond_2
    sget-object v2, Lorg/mistergroup/shouldianswer/model/aa;->a:Lorg/mistergroup/shouldianswer/model/aa;

    iput-object v1, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->d:Ljava/lang/Object;

    iput-boolean v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->p:Z

    iput-wide v9, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->q:J

    iput-wide v11, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->r:J

    const/4 v5, 0x1

    iput v5, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->b:I

    invoke-virtual {v2, v3}, Lorg/mistergroup/shouldianswer/model/aa;->d(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_3

    return-object v4

    :cond_3
    move-object v5, v1

    move-wide/from16 v28, v9

    move-wide v9, v11

    move-wide/from16 v11, v28

    .line 158
    :goto_1
    check-cast v2, Ljava/util/List;

    .line 169
    sget-object v6, Lorg/mistergroup/shouldianswer/model/aa;->a:Lorg/mistergroup/shouldianswer/model/aa;

    iput-object v5, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->d:Ljava/lang/Object;

    iput-boolean v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->p:Z

    iput-wide v11, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->q:J

    iput-wide v9, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->r:J

    iput-object v2, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->e:Ljava/lang/Object;

    const/4 v13, 0x2

    iput v13, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->b:I

    invoke-virtual {v6, v2, v3}, Lorg/mistergroup/shouldianswer/model/aa;->b(Ljava/util/List;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_4

    return-object v4

    :cond_4
    move-wide v13, v9

    move-object/from16 v28, v6

    move v6, v0

    move-object v0, v5

    move-object v5, v2

    move-object/from16 v2, v28

    .line 158
    :goto_2
    check-cast v2, Lorg/json/JSONArray;

    .line 171
    sget-object v9, Lorg/mistergroup/shouldianswer/model/r;->a:Lorg/mistergroup/shouldianswer/model/r;

    invoke-virtual {v9}, Lorg/mistergroup/shouldianswer/model/r;->a()Ljava/util/List;

    move-result-object v10

    .line 172
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 174
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v1, 0x0

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mistergroup/shouldianswer/model/o;

    .line 175
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/o;->a()I

    move-result v17

    move-object/from16 v18, v15

    .line 176
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v19, v4

    .line 177
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/o;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/o;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/o;->d()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v7

    move-object/from16 v7, v18

    invoke-virtual {v15, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "callType"

    .line 180
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/o;->g()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v18

    move-object/from16 p1, v7

    invoke-virtual/range {v18 .. v18}, Lorg/mistergroup/shouldianswer/model/k;->a()I

    move-result v7

    invoke-virtual {v15, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "callDuration"

    .line 181
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/o;->f()I

    move-result v7

    invoke-virtual {v15, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "rating"

    .line 182
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/o;->e()Lorg/mistergroup/shouldianswer/model/ag;

    move-result-object v7

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/model/ag;->a()I

    move-result v7

    invoke-virtual {v15, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "blockReason"

    .line 183
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/o;->h()Lorg/mistergroup/shouldianswer/model/h;

    move-result-object v7

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/model/h;->a()I

    move-result v7

    invoke-virtual {v15, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "time"

    .line 184
    sget-object v7, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    move-object/from16 v18, v8

    new-instance v8, Ljava/util/Date;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/o;->i()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_5
    move-object/from16 v21, v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v8, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Lorg/mistergroup/shouldianswer/utils/g;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {v9, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v15, p1

    move/from16 v1, v17

    move-object/from16 v8, v18

    move-object/from16 v4, v19

    move-object/from16 v7, v20

    move-object/from16 v2, v21

    goto/16 :goto_3

    :cond_6
    move-object/from16 v21, v2

    move-object/from16 v19, v4

    move-object/from16 v20, v7

    move-object/from16 v18, v8

    move-object/from16 p1, v15

    .line 188
    sget-object v2, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/ai;->M()Lorg/json/JSONObject;

    move-result-object v2

    .line 189
    sget-object v4, Lorg/mistergroup/shouldianswer/model/g;->a:Lorg/mistergroup/shouldianswer/model/g;

    iput-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->d:Ljava/lang/Object;

    iput-boolean v6, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->p:Z

    iput-wide v11, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->q:J

    iput-wide v13, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->r:J

    iput-object v5, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->e:Ljava/lang/Object;

    move-object/from16 v7, v21

    iput-object v7, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->f:Ljava/lang/Object;

    iput-object v10, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->g:Ljava/lang/Object;

    iput-object v9, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->h:Ljava/lang/Object;

    iput v1, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->s:I

    iput-object v2, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->i:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->b:I

    invoke-virtual {v4, v3}, Lorg/mistergroup/shouldianswer/model/g;->f(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v8, v19

    if-ne v4, v8, :cond_7

    return-object v8

    :cond_7
    move-object v15, v10

    move/from16 v28, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v4

    move-object v4, v9

    move-wide v9, v11

    move/from16 v11, v28

    .line 158
    :goto_4
    check-cast v2, Lorg/json/JSONArray;

    .line 191
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v19, v8

    const-string v8, "_api"

    .line 192
    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v17, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "_device"

    .line 193
    sget-object v11, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "_model"

    .line 194
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "_product"

    .line 195
    sget-object v11, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "_canReadContacts"

    .line 196
    sget-object v11, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/utils/o;->j()Z

    move-result v11

    invoke-virtual {v12, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v8, "_hasAllPhoneAccess"

    .line 197
    sget-object v11, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/utils/o;->m()Z

    move-result v11

    invoke-virtual {v12, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v8, "_canDrawOverlays"

    .line 198
    sget-object v11, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/utils/o;->l()Z

    move-result v11

    invoke-virtual {v12, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v8, "_defaultPhoneApp"

    .line 199
    sget-object v11, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v11}, Lorg/mistergroup/shouldianswer/model/c;->C()Z

    move-result v11

    invoke-virtual {v12, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v8, "userSettings"

    .line 200
    invoke-virtual {v12, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "blockExceptions"

    .line 201
    invoke-virtual {v12, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    sget-object v8, Lorg/mistergroup/shouldianswer/model/w;->a:Lorg/mistergroup/shouldianswer/model/w;

    iput-object v1, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->d:Ljava/lang/Object;

    iput-boolean v6, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->p:Z

    iput-wide v9, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->q:J

    iput-wide v13, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->r:J

    iput-object v5, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->e:Ljava/lang/Object;

    iput-object v7, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->f:Ljava/lang/Object;

    iput-object v15, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->g:Ljava/lang/Object;

    iput-object v4, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->h:Ljava/lang/Object;

    move/from16 v11, v17

    iput v11, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->s:I

    iput-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->i:Ljava/lang/Object;

    iput-object v2, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->j:Ljava/lang/Object;

    iput-object v12, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->k:Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v0, 0x4

    iput v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->b:I

    invoke-virtual {v8, v3}, Lorg/mistergroup/shouldianswer/model/w;->a(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v8, v19

    if-ne v0, v8, :cond_8

    return-object v8

    :cond_8
    move-object/from16 v19, v8

    move-wide/from16 v28, v13

    move-object v13, v2

    move-object v14, v5

    move-object v2, v15

    move-object/from16 v5, v16

    move v15, v11

    move-object v11, v7

    move-wide/from16 v7, v28

    .line 158
    :goto_5
    check-cast v0, Ljava/util/List;

    move-object/from16 v16, v13

    .line 204
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/mistergroup/shouldianswer/model/NumberCaption;

    .line 206
    invoke-virtual/range {v21 .. v21}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->f()Z

    move-result v22

    if-nez v22, :cond_9

    move-object/from16 v22, v0

    .line 207
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v23, v5

    .line 208
    invoke-virtual/range {v21 .. v21}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->b()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v24, v2

    move-object/from16 v2, v18

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    invoke-virtual/range {v21 .. v21}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->c()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v2

    move-object/from16 v2, v20

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    invoke-virtual/range {v21 .. v21}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->e()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v2

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "caption"

    move-object/from16 p1, v2

    .line 211
    invoke-virtual/range {v21 .. v21}, Lorg/mistergroup/shouldianswer/model/NumberCaption;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7

    :cond_9
    move-object/from16 v22, v0

    move-object/from16 v24, v2

    move-object/from16 v23, v5

    :goto_7
    move-object/from16 v0, v22

    move-object/from16 v5, v23

    move-object/from16 v2, v24

    goto :goto_6

    :cond_a
    move-object/from16 v22, v0

    move-object/from16 v24, v2

    move-object/from16 v23, v5

    if-nez v6, :cond_b

    .line 216
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->L()J

    move-result-wide v17

    sub-long v17, v9, v17

    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->f()I

    move-result v0

    move-wide/from16 v20, v7

    int-to-long v7, v0

    cmp-long v0, v17, v7

    if-gez v0, :cond_c

    .line 217
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "uploadData.end it\'s not time to upload stats"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 218
    invoke-static {v1}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_b
    move-wide/from16 v20, v7

    :cond_c
    if-nez v6, :cond_d

    .line 221
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 222
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "uploadData.end no data for upload"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 223
    invoke-static {v1}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 225
    :cond_d
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0, v9, v10}, Lorg/mistergroup/shouldianswer/model/c;->g(J)V

    .line 226
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 227
    move-object v0, v5

    check-cast v0, Ljava/util/Map;

    const-string v2, "numberReports"

    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "jsonNumberReports.toString()"

    invoke-static {v7, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    move-object v0, v5

    check-cast v0, Ljava/util/Map;

    const-string v2, "checkedCalls"

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "jsonCheckedCalls.toString()"

    invoke-static {v7, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    move-object v0, v5

    check-cast v0, Ljava/util/Map;

    const-string v2, "numberCaptions"

    invoke-virtual {v13}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "jsonNumberCaptions.toString()"

    invoke-static {v7, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    move-object v0, v5

    check-cast v0, Ljava/util/Map;

    const-string v2, "settings"

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "jsonSettings.toString()"

    invoke-static {v7, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    move-object v0, v5

    check-cast v0, Ljava/util/Map;

    const-string v2, "appLifeTime"

    sget-object v7, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/model/c;->p()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    move-object v0, v5

    check-cast v0, Ljava/util/Map;

    const-string v2, "appReferal"

    sget-object v7, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/model/c;->q()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->a:Lorg/mistergroup/shouldianswer/utils/ad;

    sget-object v2, Lorg/mistergroup/shouldianswer/utils/ad;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lorg/mistergroup/shouldianswer/utils/ad;->b(Ljava/lang/String;Ljava/util/HashMap;)Lorg/mistergroup/shouldianswer/utils/ad$a;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/ad$a;->a()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 237
    sget-object v2, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v2, v15}, Lorg/mistergroup/shouldianswer/model/c;->c(I)V

    .line 238
    sget-object v2, Lorg/mistergroup/shouldianswer/model/aa;->a:Lorg/mistergroup/shouldianswer/model/aa;

    iput-object v1, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->d:Ljava/lang/Object;

    iput-boolean v6, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->p:Z

    iput-wide v9, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->q:J

    move-wide/from16 v7, v20

    iput-wide v7, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->r:J

    iput-object v14, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->e:Ljava/lang/Object;

    iput-object v11, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->f:Ljava/lang/Object;

    move-object/from16 v17, v1

    move-object/from16 v1, v24

    iput-object v1, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->g:Ljava/lang/Object;

    iput-object v4, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->h:Ljava/lang/Object;

    iput v15, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->s:I

    move-object/from16 v24, v1

    move-object/from16 v1, v23

    iput-object v1, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->i:Ljava/lang/Object;

    move-object/from16 v23, v1

    move-object/from16 v1, v16

    iput-object v1, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->j:Ljava/lang/Object;

    iput-object v12, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->k:Ljava/lang/Object;

    move-object/from16 v16, v1

    move-object/from16 v1, v22

    iput-object v1, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->l:Ljava/lang/Object;

    iput-object v13, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->m:Ljava/lang/Object;

    iput-object v5, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->n:Ljava/lang/Object;

    iput-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->o:Ljava/lang/Object;

    move-object/from16 p1, v0

    const/4 v0, 0x5

    iput v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->b:I

    invoke-virtual {v2, v14, v3}, Lorg/mistergroup/shouldianswer/model/aa;->a(Ljava/util/List;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, v19

    if-ne v0, v2, :cond_e

    return-object v2

    :cond_e
    move-object/from16 v27, p1

    move-object/from16 v19, v2

    move-object/from16 v26, v5

    move-object v2, v12

    move-object/from16 v25, v13

    move-object/from16 v13, v16

    move-object/from16 v0, v17

    move-object/from16 v12, v23

    move-object/from16 v16, v1

    move-wide/from16 v28, v9

    move-object v9, v4

    move-wide/from16 v4, v28

    move-object/from16 v10, v24

    .line 239
    :goto_8
    sget-object v1, Lorg/mistergroup/shouldianswer/model/w;->a:Lorg/mistergroup/shouldianswer/model/w;

    iput-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->d:Ljava/lang/Object;

    iput-boolean v6, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->p:Z

    iput-wide v4, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->q:J

    iput-wide v7, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->r:J

    iput-object v14, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->e:Ljava/lang/Object;

    iput-object v11, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->f:Ljava/lang/Object;

    iput-object v10, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->g:Ljava/lang/Object;

    iput-object v9, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->h:Ljava/lang/Object;

    iput v15, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->s:I

    iput-object v12, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->i:Ljava/lang/Object;

    iput-object v13, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->j:Ljava/lang/Object;

    iput-object v2, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->k:Ljava/lang/Object;

    move-object/from16 v7, v16

    iput-object v7, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->l:Ljava/lang/Object;

    move-object/from16 v13, v25

    iput-object v13, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->m:Ljava/lang/Object;

    move-object/from16 v0, v26

    iput-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->n:Ljava/lang/Object;

    move-object/from16 v0, v27

    iput-object v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->o:Ljava/lang/Object;

    const/4 v0, 0x6

    iput v0, v3, Lorg/mistergroup/shouldianswer/utils/ad$b;->b:I

    invoke-virtual {v1, v7, v3}, Lorg/mistergroup/shouldianswer/model/w;->a(Ljava/util/List;Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    return-object v1

    .line 240
    :cond_f
    :goto_9
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0, v4, v5}, Lorg/mistergroup/shouldianswer/model/c;->h(J)V

    const/4 v0, 0x1

    .line 245
    invoke-static {v0}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 242
    :cond_10
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "uploadData Failed to upload data success=false"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 243
    invoke-static {v1}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 247
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 249
    invoke-static {v1}, Lkotlin/c/b/a/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/mistergroup/shouldianswer/model/t;->a:Lorg/mistergroup/shouldianswer/model/t;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/t;->a()Lorg/mistergroup/shouldianswer/model/t$a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/t$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/HashMap;)Lokhttp3/ab;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/ab;"
        }
    .end annotation

    const-string v0, "functionName"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebService.callServiceDirect function="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_4

    if-lez v1, :cond_0

    .line 90
    :try_start_0
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WebService.callServiceDirect retry "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception v4

    goto/16 :goto_5

    :catch_2
    move-exception v4

    goto/16 :goto_6

    :cond_0
    :goto_1
    const/16 v4, 0xa

    const/4 v5, 0x1

    if-nez v1, :cond_1

    move v6, v5

    goto :goto_2

    :cond_1
    move v6, v4

    :goto_2
    if-nez v1, :cond_2

    const/4 v6, 0x3

    .line 96
    :cond_2
    new-instance v7, Lokhttp3/w$a;

    invoke-direct {v7}, Lokhttp3/w$a;-><init>()V

    int-to-long v8, v6

    .line 97
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v6}, Lokhttp3/w$a;->a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/w$a;

    move-result-object v6

    int-to-long v7, v4

    .line 98
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v4}, Lokhttp3/w$a;->c(JLjava/util/concurrent/TimeUnit;)Lokhttp3/w$a;

    move-result-object v4

    .line 99
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7, v8, v6}, Lokhttp3/w$a;->b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/w$a;

    move-result-object v4

    .line 100
    invoke-virtual {v4, v0}, Lokhttp3/w$a;->a(Z)Lokhttp3/w$a;

    move-result-object v4

    .line 101
    invoke-virtual {v4}, Lokhttp3/w$a;->a()Lokhttp3/w;

    move-result-object v4

    .line 102
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/utils/ad;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    invoke-direct {p0, p2}, Lorg/mistergroup/shouldianswer/utils/ad;->a(Ljava/util/HashMap;)Lokhttp3/aa;

    move-result-object v7

    .line 104
    new-instance v8, Lokhttp3/z$a;

    invoke-direct {v8}, Lokhttp3/z$a;-><init>()V

    invoke-virtual {v8, v6}, Lokhttp3/z$a;->a(Ljava/lang/String;)Lokhttp3/z$a;

    move-result-object v6

    invoke-virtual {v6, v7}, Lokhttp3/z$a;->a(Lokhttp3/aa;)Lokhttp3/z$a;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/z$a;->a()Lokhttp3/z;

    move-result-object v6

    .line 105
    sget-object v7, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WebService.callServiceDirect url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lokhttp3/z;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 106
    invoke-virtual {v4, v6}, Lokhttp3/w;->a(Lokhttp3/z;)Lokhttp3/e;

    move-result-object v4

    invoke-interface {v4}, Lokhttp3/e;->b()Lokhttp3/ab;

    move-result-object v4

    .line 107
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WebService.callServiceDirect success="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lokhttp3/ab;->c()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    move v5, v0

    :goto_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 116
    :goto_4
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_8

    .line 114
    :goto_5
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    check-cast v4, Ljava/lang/Exception;

    invoke-virtual {v5, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/Exception;)V

    goto :goto_7

    .line 112
    :goto_6
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    check-cast v4, Ljava/lang/Exception;

    invoke-virtual {v5, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Ljava/lang/Exception;)V

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_8
    return-object v3
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/util/HashMap;)Lorg/mistergroup/shouldianswer/utils/ad$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/mistergroup/shouldianswer/utils/ad$a;"
        }
    .end annotation

    const-string v0, "functionName"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebService.callService function="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 126
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/ad$a;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/utils/ad$a;-><init>()V

    .line 128
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/utils/ad;->a(Ljava/lang/String;Ljava/util/HashMap;)Lokhttp3/ab;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 130
    invoke-virtual {p1}, Lokhttp3/ab;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 131
    invoke-virtual {p1}, Lokhttp3/ab;->g()Lokhttp3/ac;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 133
    invoke-virtual {p1}, Lokhttp3/ac;->e()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/utils/ad$a;->a(Lorg/json/JSONObject;)V

    .line 136
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/ad$a;->c()Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    const-string v1, "success"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/utils/ad$a;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 138
    :try_start_2
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v1, p2, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 140
    :goto_0
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/ad$a;->a()Z

    move-result p2

    if-nez p2, :cond_2

    .line 141
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unusccess response: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    .line 145
    :cond_1
    invoke-virtual {p1}, Lokhttp3/ab;->b()I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/utils/ad$a;->a(I)V

    .line 146
    invoke-virtual {p1}, Lokhttp3/ab;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/mistergroup/shouldianswer/utils/ad$a;->a(Ljava/lang/String;)V

    .line 147
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebService.callService failed code="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/ab;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " message="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/ab;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 151
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 154
    :cond_2
    :goto_1
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebService.callService success="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/ad$a;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/ad;->n:Ljava/lang/String;

    return-object v0
.end method
