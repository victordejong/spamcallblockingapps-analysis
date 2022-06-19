.class public Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/AdPlacementReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DemandSource"
.end annotation


# instance fields
.field private elapsedTimer:Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

.field public status:I

.field public tag:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;->elapsedTimer:Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

    invoke-virtual {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->start()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;)Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacementReporter$DemandSource;->elapsedTimer:Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

    return-object p0
.end method
