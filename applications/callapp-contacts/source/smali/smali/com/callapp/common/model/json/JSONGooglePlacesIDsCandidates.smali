.class public Lcom/callapp/common/model/json/JSONGooglePlacesIDsCandidates;
.super Lcom/callapp/common/model/json/CallAppJSONObject;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x7c0e8d898ab5b9b5L


# instance fields
.field private candidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONGooglePlaceId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/callapp/common/model/json/CallAppJSONObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getCandidates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONGooglePlaceId;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONGooglePlacesIDsCandidates;->candidates:Ljava/util/List;

    return-object v0
.end method

.method public setCandidates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONGooglePlaceId;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONGooglePlacesIDsCandidates;->candidates:Ljava/util/List;

    return-void
.end method
