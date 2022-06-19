.class public Lcom/millennialmedia/internal/AdPlacement$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/AdPlacement;->onIncentiveEarned(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/AdPlacement;

.field public final synthetic val$incentiveEvent:Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;

.field public final synthetic val$localIncentivizedEventListener:Lcom/millennialmedia/XIncentivizedEventListener;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/AdPlacement;Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;Lcom/millennialmedia/XIncentivizedEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/AdPlacement$1;->this$0:Lcom/millennialmedia/internal/AdPlacement;

    iput-object p2, p0, Lcom/millennialmedia/internal/AdPlacement$1;->val$incentiveEvent:Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;

    iput-object p3, p0, Lcom/millennialmedia/internal/AdPlacement$1;->val$localIncentivizedEventListener:Lcom/millennialmedia/XIncentivizedEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement$1;->val$incentiveEvent:Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;

    iget-object v0, v0, Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;->eventId:Ljava/lang/String;

    const-string v1, "IncentiveVideoComplete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement$1;->val$localIncentivizedEventListener:Lcom/millennialmedia/XIncentivizedEventListener;

    invoke-interface {v0}, Lcom/millennialmedia/XIncentivizedEventListener;->onVideoComplete()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/AdPlacement$1;->val$localIncentivizedEventListener:Lcom/millennialmedia/XIncentivizedEventListener;

    iget-object v1, p0, Lcom/millennialmedia/internal/AdPlacement$1;->val$incentiveEvent:Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;

    invoke-interface {v0, v1}, Lcom/millennialmedia/XIncentivizedEventListener;->onCustomEvent(Lcom/millennialmedia/XIncentivizedEventListener$XIncentiveEvent;)Z

    :goto_0
    return-void
.end method
