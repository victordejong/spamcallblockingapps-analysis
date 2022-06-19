.class Lcom/google/api/client/googleapis/batch/BatchRequest$BatchInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/batch/BatchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatchInterceptor"
.end annotation


# instance fields
.field private originalInterceptor:Lcom/google/api/client/http/m;

.field final synthetic this$0:Lcom/google/api/client/googleapis/batch/BatchRequest;


# direct methods
.method constructor <init>(Lcom/google/api/client/googleapis/batch/BatchRequest;Lcom/google/api/client/http/m;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/google/api/client/googleapis/batch/BatchRequest$BatchInterceptor;->this$0:Lcom/google/api/client/googleapis/batch/BatchRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p2, p0, Lcom/google/api/client/googleapis/batch/BatchRequest$BatchInterceptor;->originalInterceptor:Lcom/google/api/client/http/m;

    return-void
.end method


# virtual methods
.method public intercept(Lcom/google/api/client/http/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/google/api/client/googleapis/batch/BatchRequest$BatchInterceptor;->originalInterceptor:Lcom/google/api/client/http/m;

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0, p1}, Lcom/google/api/client/http/m;->intercept(Lcom/google/api/client/http/q;)V

    .line 297
    :cond_0
    iget-object p1, p0, Lcom/google/api/client/googleapis/batch/BatchRequest$BatchInterceptor;->this$0:Lcom/google/api/client/googleapis/batch/BatchRequest;

    iget-object p1, p1, Lcom/google/api/client/googleapis/batch/BatchRequest;->requestInfos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;

    .line 298
    iget-object v1, v0, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->request:Lcom/google/api/client/http/q;

    invoke-virtual {v1}, Lcom/google/api/client/http/q;->h()Lcom/google/api/client/http/m;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 300
    iget-object v0, v0, Lcom/google/api/client/googleapis/batch/BatchRequest$RequestInfo;->request:Lcom/google/api/client/http/q;

    invoke-interface {v1, v0}, Lcom/google/api/client/http/m;->intercept(Lcom/google/api/client/http/q;)V

    goto :goto_0

    :cond_2
    return-void
.end method
