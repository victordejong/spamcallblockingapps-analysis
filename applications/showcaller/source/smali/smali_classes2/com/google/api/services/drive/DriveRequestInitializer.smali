.class public Lcom/google/api/services/drive/DriveRequestInitializer;
.super Lcom/google/api/client/googleapis/d/e/c;
.source "DriveRequestInitializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/googleapis/d/e/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/d/e/c;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/d/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected initializeDriveRequest(Lcom/google/api/services/drive/DriveRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/services/drive/DriveRequest<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public final initializeJsonRequest(Lcom/google/api/client/googleapis/d/e/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/d/e/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/d/e/c;->initializeJsonRequest(Lcom/google/api/client/googleapis/d/e/b;)V

    .line 2
    check-cast p1, Lcom/google/api/services/drive/DriveRequest;

    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/DriveRequestInitializer;->initializeDriveRequest(Lcom/google/api/services/drive/DriveRequest;)V

    return-void
.end method
