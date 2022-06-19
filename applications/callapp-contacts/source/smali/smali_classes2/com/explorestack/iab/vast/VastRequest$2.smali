.class final Lcom/explorestack/iab/vast/VastRequest$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/vast/VastRequest;->loadVideoWithData(Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/explorestack/iab/vast/VastRequestListener;

.field final synthetic d:Lcom/explorestack/iab/vast/VastRequest;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/vast/VastRequest;Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest$2;->d:Lcom/explorestack/iab/vast/VastRequest;

    iput-object p2, p0, Lcom/explorestack/iab/vast/VastRequest$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/explorestack/iab/vast/VastRequest$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/explorestack/iab/vast/VastRequest$2;->c:Lcom/explorestack/iab/vast/VastRequestListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest$2;->d:Lcom/explorestack/iab/vast/VastRequest;

    iget-object v1, p0, Lcom/explorestack/iab/vast/VastRequest$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/explorestack/iab/vast/VastRequest$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/explorestack/iab/vast/VastRequest$2;->c:Lcom/explorestack/iab/vast/VastRequestListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/explorestack/iab/vast/VastRequest;->loadVideoWithDataSync(Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V

    return-void
.end method
