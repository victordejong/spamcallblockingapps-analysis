.class public final Lcom/millennialmedia/internal/AdPlacement$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/AdPlacement;->onBidRequestSucceeded(Lcom/millennialmedia/BidRequestListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$bidPrice:Ljava/lang/String;

.field public final synthetic val$bidRequestListener:Lcom/millennialmedia/BidRequestListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/BidRequestListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement$3;->val$bidRequestListener:Lcom/millennialmedia/BidRequestListener;

    iput-object p2, p0, Lcom/millennialmedia/internal/AdPlacement$3;->val$bidPrice:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement$3;->val$bidRequestListener:Lcom/millennialmedia/BidRequestListener;

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement$3;->val$bidPrice:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/millennialmedia/BidRequestListener;->onRequestSucceeded(Ljava/lang/String;)V

    return-void
.end method
