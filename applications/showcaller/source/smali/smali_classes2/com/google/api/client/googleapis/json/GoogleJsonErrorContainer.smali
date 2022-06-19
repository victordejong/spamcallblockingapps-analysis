.class public Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;
.super Lcom/google/api/client/json/b;
.source "GoogleJsonErrorContainer.java"


# instance fields
.field private error:Lcom/google/api/client/googleapis/json/GoogleJsonError;
    .annotation runtime Lcom/google/api/client/util/o;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/json/b;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;
    .locals 1

    .line 4
    invoke-super {p0}, Lcom/google/api/client/json/b;->clone()Lcom/google/api/client/json/b;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/json/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;->clone()Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;->clone()Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;->clone()Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    move-result-object v0

    return-object v0
.end method

.method public final getError()Lcom/google/api/client/googleapis/json/GoogleJsonError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;->error:Lcom/google/api/client/googleapis/json/GoogleJsonError;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/b;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;

    move-result-object p1

    return-object p1
.end method

.method public final setError(Lcom/google/api/client/googleapis/json/GoogleJsonError;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/googleapis/json/GoogleJsonErrorContainer;->error:Lcom/google/api/client/googleapis/json/GoogleJsonError;

    return-void
.end method
