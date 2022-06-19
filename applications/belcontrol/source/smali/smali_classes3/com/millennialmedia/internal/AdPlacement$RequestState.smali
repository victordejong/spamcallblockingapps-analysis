.class public Lcom/millennialmedia/internal/AdPlacement$RequestState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/AdPlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestState"
.end annotation


# instance fields
.field private adPlacementReporter:Lcom/millennialmedia/internal/AdPlacementReporter;

.field private itemHash:I

.field private requestHash:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->requestHash:I

    return-void
.end method


# virtual methods
.method public compare(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z
    .locals 3

    iget v0, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->requestHash:I

    iget v1, p1, Lcom/millennialmedia/internal/AdPlacement$RequestState;->requestHash:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->itemHash:I

    iget p1, p1, Lcom/millennialmedia/internal/AdPlacement$RequestState;->itemHash:I

    if-eq v0, p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public compareRequest(Lcom/millennialmedia/internal/AdPlacement$RequestState;)Z
    .locals 1

    iget v0, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->requestHash:I

    iget p1, p1, Lcom/millennialmedia/internal/AdPlacement$RequestState;->requestHash:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public copy()Lcom/millennialmedia/internal/AdPlacement$RequestState;
    .locals 2

    new-instance v0, Lcom/millennialmedia/internal/AdPlacement$RequestState;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacement$RequestState;-><init>()V

    iget v1, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->requestHash:I

    iput v1, v0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->requestHash:I

    iget v1, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->itemHash:I

    iput v1, v0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->itemHash:I

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->adPlacementReporter:Lcom/millennialmedia/internal/AdPlacementReporter;

    iput-object v1, v0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->adPlacementReporter:Lcom/millennialmedia/internal/AdPlacementReporter;

    return-object v0
.end method

.method public getAdPlacementReporter()Lcom/millennialmedia/internal/AdPlacementReporter;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->adPlacementReporter:Lcom/millennialmedia/internal/AdPlacementReporter;

    return-object v0
.end method

.method public getItemHash()I
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->itemHash:I

    return v0
.end method

.method public setAdPlacementReporter(Lcom/millennialmedia/internal/AdPlacementReporter;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->adPlacementReporter:Lcom/millennialmedia/internal/AdPlacementReporter;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestState{requestHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->requestHash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", itemHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/millennialmedia/internal/AdPlacement$RequestState;->itemHash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
