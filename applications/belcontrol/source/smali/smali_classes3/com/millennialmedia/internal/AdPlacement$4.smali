.class public final Lcom/millennialmedia/internal/AdPlacement$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/AdPlacement;->onBidRequestFailed(Lcom/millennialmedia/BidRequestListener;Lcom/millennialmedia/BidRequestErrorStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$bidRequestListener:Lcom/millennialmedia/BidRequestListener;

.field public final synthetic val$errorStatus:Lcom/millennialmedia/BidRequestErrorStatus;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/BidRequestListener;Lcom/millennialmedia/BidRequestErrorStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement$4;->val$bidRequestListener:Lcom/millennialmedia/BidRequestListener;

    iput-object p2, p0, Lcom/millennialmedia/internal/AdPlacement$4;->val$errorStatus:Lcom/millennialmedia/BidRequestErrorStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement$4;->val$bidRequestListener:Lcom/millennialmedia/BidRequestListener;

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement$4;->val$errorStatus:Lcom/millennialmedia/BidRequestErrorStatus;

    invoke-interface {v0, v1}, Lcom/millennialmedia/BidRequestListener;->onRequestFailed(Lcom/millennialmedia/BidRequestErrorStatus;)V

    return-void
.end method
