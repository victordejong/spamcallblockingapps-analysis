.class final Lio/bidmachine/nativead/tasks/DownloadImageTask$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/tasks/DownloadImageTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/tasks/DownloadImageTask;Landroid/os/Looper;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-static {v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$300(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-static {v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$300(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, p1}, Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;->onImageSuccess(Lio/bidmachine/nativead/tasks/DownloadImageTask;Landroid/graphics/Bitmap;)V

    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-static {v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$300(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-interface {v0, v1, p1}, Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;->onPathSuccess(Lio/bidmachine/nativead/tasks/DownloadImageTask;Landroid/net/Uri;)V

    return-void

    .line 94
    :cond_2
    iget-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-static {p1}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$300(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;

    move-result-object p1

    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$1;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-interface {p1, v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;->onFail(Lio/bidmachine/nativead/tasks/DownloadImageTask;)V

    :cond_3
    :goto_0
    return-void
.end method
