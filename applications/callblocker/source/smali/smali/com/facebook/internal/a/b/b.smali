.class public final Lcom/facebook/internal/a/b/b;
.super Ljava/lang/Object;
.source "ErrorReportHandler.java"


# direct methods
.method public static a()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/facebook/j;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/facebook/internal/a/b/b;->b()V

    .line 54
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    :try_start_0
    new-instance v0, Lcom/facebook/internal/a/b/a;

    invoke-direct {v0, p0}, Lcom/facebook/internal/a/b/a;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Lcom/facebook/internal/a/b/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-static {}, Lcom/facebook/internal/a/b/b;->c()[Ljava/io/File;

    move-result-object v2

    .line 63
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 64
    array-length v4, v2

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v2, v1

    .line 65
    new-instance v6, Lcom/facebook/internal/a/b/a;

    invoke-direct {v6, v5}, Lcom/facebook/internal/a/b/a;-><init>(Ljava/io/File;)V

    .line 66
    invoke-virtual {v6}, Lcom/facebook/internal/a/b/a;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_1
    new-instance v1, Lcom/facebook/internal/a/b/b$1;

    invoke-direct {v1}, Lcom/facebook/internal/a/b/b$1;-><init>()V

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 78
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_2

    .line 79
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_2
    const-string/jumbo v0, "error_reports"

    new-instance v2, Lcom/facebook/internal/a/b/b$2;

    invoke-direct {v2, v3}, Lcom/facebook/internal/a/b/b$2;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/a/c;->a(Ljava/lang/String;Lorg/json/JSONArray;Lcom/facebook/k$b;)V

    .line 97
    return-void
.end method

.method public static c()[Ljava/io/File;
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/facebook/internal/a/c;->b()Ljava/io/File;

    move-result-object v0

    .line 101
    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    .line 105
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/facebook/internal/a/b/b$3;

    invoke-direct {v1}, Lcom/facebook/internal/a/b/b$3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method
