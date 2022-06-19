.class public Lcom/google/api/client/googleapis/d/e/c;
.super Lcom/google/api/client/googleapis/d/c;
.source "CommonGoogleJsonClientRequestInitializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/googleapis/d/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/d/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final initialize(Lcom/google/api/client/googleapis/d/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/d/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/c;->initialize(Lcom/google/api/client/googleapis/d/b;)V

    .line 2
    check-cast p1, Lcom/google/api/client/googleapis/d/e/b;

    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/d/e/c;->initializeJsonRequest(Lcom/google/api/client/googleapis/d/e/b;)V

    return-void
.end method

.method protected initializeJsonRequest(Lcom/google/api/client/googleapis/d/e/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/d/e/b<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
