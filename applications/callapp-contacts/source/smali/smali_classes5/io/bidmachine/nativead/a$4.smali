.class final Lio/bidmachine/nativead/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/nativead/tasks/DownloadVastVideoTask$OnLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/a;->createVastVideoTask(Landroid/content/Context;Ljava/lang/String;)V
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

    .line 159
    iput-object p1, p0, Lio/bidmachine/nativead/a$4;->this$0:Lio/bidmachine/nativead/a;

    iput-object p2, p0, Lio/bidmachine/nativead/a$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoLoaded(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;Landroid/net/Uri;Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lio/bidmachine/nativead/a$4;->this$0:Lio/bidmachine/nativead/a;

    invoke-static {v0}, Lio/bidmachine/nativead/a;->access$000(Lio/bidmachine/nativead/a;)Lio/bidmachine/nativead/NativeMediaPrivateData;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setVideoUri(Landroid/net/Uri;)V

    .line 165
    iget-object v0, p0, Lio/bidmachine/nativead/a$4;->this$0:Lio/bidmachine/nativead/a;

    invoke-static {v0}, Lio/bidmachine/nativead/a;->access$000(Lio/bidmachine/nativead/a;)Lio/bidmachine/nativead/NativeMediaPrivateData;

    move-result-object v0

    invoke-interface {v0, p3}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setVastRequest(Lcom/explorestack/iab/vast/VastRequest;)V

    .line 166
    iget-object p3, p0, Lio/bidmachine/nativead/a$4;->this$0:Lio/bidmachine/nativead/a;

    invoke-static {p3}, Lio/bidmachine/nativead/a;->access$200(Lio/bidmachine/nativead/a;)Lio/bidmachine/nativead/NativeData;

    move-result-object p3

    invoke-interface {p3}, Lio/bidmachine/nativead/NativeData;->getImageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    .line 168
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    new-instance p3, Ljava/io/File;

    .line 169
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 170
    iget-object p3, p0, Lio/bidmachine/nativead/a$4;->this$0:Lio/bidmachine/nativead/a;

    invoke-static {p3}, Lio/bidmachine/nativead/a;->access$000(Lio/bidmachine/nativead/a;)Lio/bidmachine/nativead/NativeMediaPrivateData;

    move-result-object p3

    iget-object v0, p0, Lio/bidmachine/nativead/a$4;->val$context:Landroid/content/Context;

    const-string v1, "native_cache_image"

    .line 171
    invoke-static {v0, p2, v1}, Lio/bidmachine/core/Utils;->retrieveAndSaveFrame(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 170
    invoke-interface {p3, p2}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setImageUri(Landroid/net/Uri;)V

    .line 176
    :cond_0
    iget-object p2, p0, Lio/bidmachine/nativead/a$4;->this$0:Lio/bidmachine/nativead/a;

    invoke-static {p2, p1}, Lio/bidmachine/nativead/a;->access$100(Lio/bidmachine/nativead/a;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onVideoLoadingError(Lio/bidmachine/nativead/tasks/DownloadVastVideoTask;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lio/bidmachine/nativead/a$4;->this$0:Lio/bidmachine/nativead/a;

    invoke-static {v0, p1}, Lio/bidmachine/nativead/a;->access$100(Lio/bidmachine/nativead/a;Ljava/lang/Runnable;)V

    return-void
.end method
