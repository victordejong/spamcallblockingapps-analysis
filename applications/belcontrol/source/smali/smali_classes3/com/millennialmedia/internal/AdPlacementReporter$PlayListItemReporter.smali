.class public Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/AdPlacementReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayListItemReporter"
.end annotation


# instance fields
.field public buyer:Ljava/lang/String;

.field private elapsedTimer:Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

.field public itemId:Ljava/lang/String;

.field public pru:Ljava/lang/String;

.field public status:I

.field private superAuction:Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

.field public final synthetic this$0:Lcom/millennialmedia/internal/AdPlacementReporter;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/AdPlacementReporter;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->this$0:Lcom/millennialmedia/internal/AdPlacementReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

    invoke-direct {p1}, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->elapsedTimer:Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

    invoke-virtual {p1}, Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;->start()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->superAuction:Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;)Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;
    .locals 0

    iget-object p0, p0, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->elapsedTimer:Lcom/millennialmedia/internal/AdPlacementReporter$ElapsedTimer;

    return-object p0
.end method


# virtual methods
.method public getSuperAuction()Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->superAuction:Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    if-nez v0, :cond_0

    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->superAuction:Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacementReporter$PlayListItemReporter;->superAuction:Lcom/millennialmedia/internal/AdPlacementReporter$SuperAuction;

    return-object v0
.end method
