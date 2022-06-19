.class final Lio/bidmachine/nativead/tasks/DownloadVideoTask$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/tasks/DownloadVideoTask;-><init>(Landroid/content/Context;Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/nativead/tasks/DownloadVideoTask;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/tasks/DownloadVideoTask;Landroid/os/Looper;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVideoTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadVideoTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVideoTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadVideoTask;

    invoke-static {v0}, Lio/bidmachine/nativead/tasks/DownloadVideoTask;->access$000(Lio/bidmachine/nativead/tasks/DownloadVideoTask;)Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    .line 40
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVideoTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadVideoTask;

    invoke-static {v0}, Lio/bidmachine/nativead/tasks/DownloadVideoTask;->access$000(Lio/bidmachine/nativead/tasks/DownloadVideoTask;)Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/nativead/tasks/DownloadVideoTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadVideoTask;

    invoke-interface {v0, v1, p1}, Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;->onVideoLoaded(Lio/bidmachine/nativead/tasks/DownloadVideoTask;Landroid/net/Uri;)V

    return-void

    .line 45
    :cond_1
    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadVideoTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadVideoTask;

    invoke-static {p1}, Lio/bidmachine/nativead/tasks/DownloadVideoTask;->access$000(Lio/bidmachine/nativead/tasks/DownloadVideoTask;)Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadVideoTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadVideoTask;

    invoke-interface {p1, v0}, Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;->onVideoLoadingError(Lio/bidmachine/nativead/tasks/DownloadVideoTask;)V

    :cond_2
    :goto_0
    return-void
.end method
