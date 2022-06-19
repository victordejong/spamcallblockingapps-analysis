.class final Lio/bidmachine/nativead/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/nativead/tasks/DownloadVideoTask$OnLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/a;->createVideoTask(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/nativead/a;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/a;Landroid/content/Context;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lio/bidmachine/nativead/a$3;->this$0:Lio/bidmachine/nativead/a;

    iput-object p2, p0, Lio/bidmachine/nativead/a$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoLoaded(Lio/bidmachine/nativead/tasks/DownloadVideoTask;Landroid/net/Uri;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lio/bidmachine/nativead/a$3;->this$0:Lio/bidmachine/nativead/a;

    invoke-static {v0}, Lio/bidmachine/nativead/a;->access$000(Lio/bidmachine/nativead/a;)Lio/bidmachine/nativead/NativeMediaPrivateData;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setVideoUri(Landroid/net/Uri;)V

    .line 137
    iget-object v0, p0, Lio/bidmachine/nativead/a$3;->this$0:Lio/bidmachine/nativead/a;

    invoke-static {v0}, Lio/bidmachine/nativead/a;->access$200(Lio/bidmachine/nativead/a;)Lio/bidmachine/nativead/NativeData;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/nativead/NativeData;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 139
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    .line 140
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lio/bidmachine/nativead/a$3;->this$0:Lio/bidmachine/nativead/a;

    invoke-static {v0}, Lio/bidmachine/nativead/a;->access$000(Lio/bidmachine/nativead/a;)Lio/bidmachine/nativead/NativeMediaPrivateData;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/nativead/a$3;->val$context:Landroid/content/Context;

    const-string v2, "native_cache_image"

    .line 142
    invoke-static {v1, p2, v2}, Lio/bidmachine/core/Utils;->retrieveAndSaveFrame(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 141
    invoke-interface {v0, p2}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setImageUri(Landroid/net/Uri;)V

    .line 147
    :cond_0
    iget-object p2, p0, Lio/bidmachine/nativead/a$3;->this$0:Lio/bidmachine/nativead/a;

    invoke-static {p2, p1}, Lio/bidmachine/nativead/a;->access$100(Lio/bidmachine/nativead/a;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onVideoLoadingError(Lio/bidmachine/nativead/tasks/DownloadVideoTask;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lio/bidmachine/nativead/a$3;->this$0:Lio/bidmachine/nativead/a;

    invoke-static {v0, p1}, Lio/bidmachine/nativead/a;->access$100(Lio/bidmachine/nativead/a;Ljava/lang/Runnable;)V

    return-void
.end method
