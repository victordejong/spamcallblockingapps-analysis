.class final Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;-><init>(Landroid/content/Context;Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Landroid/os/Looper;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 46
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-static {v0}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->access$000(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 51
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-static {v0}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->access$000(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/explorestack/iab/vast/VastRequest;

    invoke-interface {v0, v1, v2, p1}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;->onVideoLoaded(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Landroid/net/Uri;Lcom/explorestack/iab/vast/VastRequest;)V

    return-void

    .line 57
    :cond_1
    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-static {p1}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;->access$000(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;

    invoke-interface {p1, v0}, Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;->onVideoLoadingError(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)V

    :cond_2
    :goto_0
    return-void
.end method
