.class public final Lcom/google/api/client/testing/a/c;
.super Lcom/google/api/client/http/z;
.source "SourceFile"


# instance fields
.field a:Lcom/google/api/client/testing/a/d;

.field private b:Ljava/lang/String;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/google/api/client/http/z;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/testing/a/c;->c:Ljava/util/Map;

    .line 59
    new-instance v0, Lcom/google/api/client/testing/a/d;

    invoke-direct {v0}, Lcom/google/api/client/testing/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/testing/a/c;->a:Lcom/google/api/client/testing/a/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/google/api/client/http/z;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/testing/a/c;->c:Ljava/util/Map;

    .line 59
    new-instance v0, Lcom/google/api/client/testing/a/d;

    invoke-direct {v0}, Lcom/google/api/client/testing/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/testing/a/c;->a:Lcom/google/api/client/testing/a/d;

    .line 68
    iput-object p1, p0, Lcom/google/api/client/testing/a/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 74
    iget-object v0, p0, Lcom/google/api/client/testing/a/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/google/api/client/testing/a/c;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final execute()Lcom/google/api/client/http/aa;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/google/api/client/testing/a/c;->a:Lcom/google/api/client/testing/a/d;

    return-object v0
.end method
