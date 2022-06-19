.class public Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/tasks/DownloadImageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;


# direct methods
.method public constructor <init>(Lio/bidmachine/nativead/tasks/DownloadImageTask;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1, p2}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$002(Lio/bidmachine/nativead/tasks/DownloadImageTask;Landroid/content/Context;)Landroid/content/Context;

    .line 51
    invoke-static {p1, p3}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$102(Lio/bidmachine/nativead/tasks/DownloadImageTask;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lio/bidmachine/nativead/tasks/DownloadImageTask;
    .locals 4

    const-string v0, "native_cache_image"

    .line 66
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    invoke-static {v1}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$000(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    .line 69
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-static {v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$300(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-static {v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$300(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;

    move-result-object v0

    iget-object v2, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-interface {v0, v2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;->onFail(Lio/bidmachine/nativead/tasks/DownloadImageTask;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v2, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-static {v2}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$000(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/core/Utils;->canUseExternalFilesDir(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    iget-object v2, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-static {v2}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$000(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lio/bidmachine/core/Utils;->getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v2, v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$402(Lio/bidmachine/nativead/tasks/DownloadImageTask;Ljava/io/File;)Ljava/io/File;

    :cond_1
    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 68
    iget-object v2, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-static {v2}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$000(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    .line 69
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-static {v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$300(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-static {v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$300(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;

    move-result-object v0

    iget-object v2, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-interface {v0, v2}, Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;->onFail(Lio/bidmachine/nativead/tasks/DownloadImageTask;)V

    goto :goto_1

    .line 72
    :cond_2
    iget-object v2, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-static {v2}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$000(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/bidmachine/core/Utils;->canUseExternalFilesDir(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    iget-object v2, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-static {v2}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$000(Lio/bidmachine/nativead/tasks/DownloadImageTask;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lio/bidmachine/core/Utils;->getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v2, v0}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$402(Lio/bidmachine/nativead/tasks/DownloadImageTask;Ljava/io/File;)Ljava/io/File;

    .line 75
    :cond_3
    :goto_1
    throw v1
.end method

.method public setCheckAspectRatio(Z)Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;
    .locals 1

    .line 55
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-static {v0, p1}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$202(Lio/bidmachine/nativead/tasks/DownloadImageTask;Z)Z

    return-object p0
.end method

.method public setOnCacheImageListener(Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;)Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/bidmachine/nativead/tasks/DownloadImageTask$Builder;->this$0:Lio/bidmachine/nativead/tasks/DownloadImageTask;

    invoke-static {v0, p1}, Lio/bidmachine/nativead/tasks/DownloadImageTask;->access$302(Lio/bidmachine/nativead/tasks/DownloadImageTask;Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;)Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;

    return-object p0
.end method
