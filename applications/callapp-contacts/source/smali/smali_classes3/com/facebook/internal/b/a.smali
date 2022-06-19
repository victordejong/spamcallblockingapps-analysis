.class public final Lcom/facebook/internal/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0007J\u0008\u0010\n\u001a\u00020\u0004H\u0007J\u0008\u0010\u000b\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/facebook/internal/instrument/ExceptionAnalyzer;",
        "",
        "()V",
        "enabled",
        "",
        "enable",
        "",
        "execute",
        "e",
        "",
        "isDebug",
        "sendExceptionAnalysisReports",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/internal/b/a;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/facebook/internal/b/a;

    invoke-direct {v0}, Lcom/facebook/internal/b/a;-><init>()V

    sput-object v0, Lcom/facebook/internal/b/a;->a:Lcom/facebook/internal/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 12

    const/4 v0, 0x1

    .line 44
    sput-boolean v0, Lcom/facebook/internal/b/a;->b:Z

    .line 45
    invoke-static {}, Lcom/facebook/g;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1070
    invoke-static {}, Lcom/facebook/internal/ae;->h()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1073
    invoke-static {}, Lcom/facebook/internal/b/d;->a()[Ljava/io/File;

    move-result-object v1

    .line 1074
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 1075
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 1076
    invoke-static {v6}, Lcom/facebook/internal/b/b$a;->a(Ljava/io/File;)Lcom/facebook/internal/b/b;

    move-result-object v6

    const-string v7, "instrumentData"

    .line 1077
    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/facebook/internal/b/b;->a()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1078
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v8, "crash_shield"

    .line 1080
    invoke-virtual {v6}, Lcom/facebook/internal/b/b;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v8, 0x0

    .line 1084
    sget-object v9, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    const-string v9, "%s/instruments"

    new-array v10, v0, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v10, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "java.lang.String.format(format, *args)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1085
    new-instance v10, Lcom/facebook/internal/b/a$a;

    invoke-direct {v10, v6}, Lcom/facebook/internal/b/a$a;-><init>(Lcom/facebook/internal/b/b;)V

    check-cast v10, Lcom/facebook/GraphRequest$b;

    .line 1082
    invoke-static {v8, v9, v7, v10}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v6

    const-string v7, "request"

    .line 1094
    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1100
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1103
    new-instance v0, Lcom/facebook/i;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v0, v2}, Lcom/facebook/i;-><init>(Ljava/util/Collection;)V

    .line 1104
    invoke-virtual {v0}, Lcom/facebook/i;->a()Lcom/facebook/h;

    :cond_2
    return-void
.end method

.method public static final a(Ljava/lang/Throwable;)V
    .locals 5

    .line 52
    sget-boolean v0, Lcom/facebook/internal/b/a;->b:Z

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const-string v1, "e.stackTrace"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    const-string v4, "it"

    .line 57
    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "it.className"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/facebook/internal/l;->a(Ljava/lang/String;)Lcom/facebook/internal/l$b;

    move-result-object v3

    .line 58
    sget-object v4, Lcom/facebook/internal/l$b;->Unknown:Lcom/facebook/internal/l$b;

    if-eq v3, v4, :cond_1

    .line 59
    invoke-static {v3}, Lcom/facebook/internal/l;->b(Lcom/facebook/internal/l$b;)V

    .line 60
    invoke-virtual {v3}, Lcom/facebook/internal/l$b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {}, Lcom/facebook/g;->p()Z

    move-result p0

    if-eqz p0, :cond_3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_3

    .line 64
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/facebook/internal/b/b$a;->a(Lorg/json/JSONArray;)Lcom/facebook/internal/b/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/internal/b/b;->b()V

    :cond_3
    :goto_1
    return-void
.end method
