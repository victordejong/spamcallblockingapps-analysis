.class final Lcom/explorestack/iab/vast/VastRequest$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/vast/VastRequest;->sendError(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/vast/VastErrorListener;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Lcom/explorestack/iab/vast/VastRequest;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/VastErrorListener;Landroid/content/Context;I)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest$4;->d:Lcom/explorestack/iab/vast/VastRequest;

    iput-object p2, p0, Lcom/explorestack/iab/vast/VastRequest$4;->a:Lcom/explorestack/iab/vast/VastErrorListener;

    iput-object p3, p0, Lcom/explorestack/iab/vast/VastRequest$4;->b:Landroid/content/Context;

    iput p4, p0, Lcom/explorestack/iab/vast/VastRequest$4;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 503
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$4;->a:Lcom/explorestack/iab/vast/VastErrorListener;

    iget-object v1, p0, Lcom/explorestack/iab/vast/VastRequest$4;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/explorestack/iab/vast/VastRequest$4;->d:Lcom/explorestack/iab/vast/VastRequest;

    iget v3, p0, Lcom/explorestack/iab/vast/VastRequest$4;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/explorestack/iab/vast/VastErrorListener;->onVastError(Landroid/content/Context;Lcom/explorestack/iab/vast/VastRequest;I)V

    return-void
.end method
