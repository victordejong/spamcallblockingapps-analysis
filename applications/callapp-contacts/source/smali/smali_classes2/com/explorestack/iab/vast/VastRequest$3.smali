.class final Lcom/explorestack/iab/vast/VastRequest$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/vast/VastRequest;->sendReady(Lcom/explorestack/iab/vast/VastRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/vast/VastRequestListener;

.field final synthetic b:Lcom/explorestack/iab/vast/VastRequest;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/VastRequestListener;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest$3;->b:Lcom/explorestack/iab/vast/VastRequest;

    iput-object p2, p0, Lcom/explorestack/iab/vast/VastRequest$3;->a:Lcom/explorestack/iab/vast/VastRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$3;->a:Lcom/explorestack/iab/vast/VastRequestListener;

    iget-object v1, p0, Lcom/explorestack/iab/vast/VastRequest$3;->b:Lcom/explorestack/iab/vast/VastRequest;

    invoke-interface {v0, v1}, Lcom/explorestack/iab/vast/VastRequestListener;->onVastLoaded(Lcom/explorestack/iab/vast/VastRequest;)V

    return-void
.end method
