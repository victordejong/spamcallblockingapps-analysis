.class public final Lcom/facebook/internal/b/c/b;
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0007J\u0013\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0007\u00a2\u0006\u0002\u0010\nJ\u0012\u0010\u000b\u001a\u00020\u00062\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0007J\u0008\u0010\u000e\u001a\u00020\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/facebook/internal/instrument/errorreport/ErrorReportHandler;",
        "",
        "()V",
        "MAX_ERROR_REPORT_NUM",
        "",
        "enable",
        "",
        "listErrorReportFiles",
        "",
        "Ljava/io/File;",
        "()[Ljava/io/File;",
        "save",
        "msg",
        "",
        "sendErrorReports",
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
.field public static final a:Lcom/facebook/internal/b/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/facebook/internal/b/c/b;

    invoke-direct {v0}, Lcom/facebook/internal/b/c/b;-><init>()V

    sput-object v0, Lcom/facebook/internal/b/c/b;->a:Lcom/facebook/internal/b/c/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 7

    .line 46
    invoke-static {}, Lcom/facebook/g;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2058
    invoke-static {}, Lcom/facebook/internal/ae;->h()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2089
    invoke-static {}, Lcom/facebook/internal/b/d;->c()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/io/File;

    goto :goto_0

    .line 2090
    :cond_0
    sget-object v2, Lcom/facebook/internal/b/c/b$a;->a:Lcom/facebook/internal/b/c/b$a;

    check-cast v2, Ljava/io/FilenameFilter;

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    const-string v2, "reportDir.listFiles { di\u2026OR_REPORT_PREFIX)))\n    }"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2062
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2063
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 2064
    new-instance v6, Lcom/facebook/internal/b/c/a;

    invoke-direct {v6, v5}, Lcom/facebook/internal/b/c/a;-><init>(Ljava/io/File;)V

    .line 2065
    invoke-virtual {v6}, Lcom/facebook/internal/b/c/a;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2066
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2069
    :cond_2
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    sget-object v3, Lcom/facebook/internal/b/c/b$b;->a:Lcom/facebook/internal/b/c/b$b;

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v0, v3}, Lkotlin/a/n;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2070
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2072
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_3

    .line 2073
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2076
    :cond_3
    new-instance v1, Lcom/facebook/internal/b/c/b$c;

    invoke-direct {v1, v2}, Lcom/facebook/internal/b/c/b$c;-><init>(Ljava/util/ArrayList;)V

    check-cast v1, Lcom/facebook/GraphRequest$b;

    const-string v2, "error_reports"

    invoke-static {v2, v0, v1}, Lcom/facebook/internal/b/d;->a(Ljava/lang/String;Lorg/json/JSONArray;Lcom/facebook/GraphRequest$b;)V

    :cond_4
    return-void
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 1

    .line 37
    :try_start_0
    new-instance v0, Lcom/facebook/internal/b/c/a;

    invoke-direct {v0, p0}, Lcom/facebook/internal/b/c/a;-><init>(Ljava/lang/String;)V

    .line 1064
    invoke-virtual {v0}, Lcom/facebook/internal/b/c/a;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1065
    iget-object p0, v0, Lcom/facebook/internal/b/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/facebook/internal/b/c/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
