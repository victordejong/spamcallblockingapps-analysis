.class public abstract Lcom/google/api/client/googleapis/d/e/a;
.super Lcom/google/api/client/googleapis/d/a;
.source "AbstractGoogleJsonClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/d/e/a$a;
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/api/client/googleapis/d/e/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/d/a;-><init>(Lcom/google/api/client/googleapis/d/a$a;)V

    return-void
.end method


# virtual methods
.method public final getJsonFactory()Lcom/google/api/client/json/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/e/a;->getObjectParser()Lcom/google/api/client/json/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/json/e;->b()Lcom/google/api/client/json/c;

    move-result-object v0

    return-object v0
.end method

.method public getObjectParser()Lcom/google/api/client/json/e;
    .locals 1

    .line 2
    invoke-super {p0}, Lcom/google/api/client/googleapis/d/a;->getObjectParser()Lcom/google/api/client/util/u;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/e;

    return-object v0
.end method

.method public bridge synthetic getObjectParser()Lcom/google/api/client/util/u;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/d/e/a;->getObjectParser()Lcom/google/api/client/json/e;

    move-result-object v0

    return-object v0
.end method
