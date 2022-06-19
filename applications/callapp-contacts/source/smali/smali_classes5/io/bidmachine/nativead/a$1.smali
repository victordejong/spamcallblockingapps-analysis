.class final Lio/bidmachine/nativead/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/nativead/tasks/DownloadImageTask$OnCacheImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/a;->createIconTask(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/nativead/a;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/a;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lio/bidmachine/nativead/a$1;->this$0:Lio/bidmachine/nativead/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lio/bidmachine/nativead/tasks/DownloadImageTask;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lio/bidmachine/nativead/a$1;->this$0:Lio/bidmachine/nativead/a;

    invoke-static {v0, p1}, Lio/bidmachine/nativead/a;->access$100(Lio/bidmachine/nativead/a;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onImageSuccess(Lio/bidmachine/nativead/tasks/DownloadImageTask;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lio/bidmachine/nativead/a$1;->this$0:Lio/bidmachine/nativead/a;

    invoke-static {v0}, Lio/bidmachine/nativead/a;->access$000(Lio/bidmachine/nativead/a;)Lio/bidmachine/nativead/NativeMediaPrivateData;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setIconBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    iget-object p2, p0, Lio/bidmachine/nativead/a$1;->this$0:Lio/bidmachine/nativead/a;

    invoke-static {p2, p1}, Lio/bidmachine/nativead/a;->access$100(Lio/bidmachine/nativead/a;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPathSuccess(Lio/bidmachine/nativead/tasks/DownloadImageTask;Landroid/net/Uri;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lio/bidmachine/nativead/a$1;->this$0:Lio/bidmachine/nativead/a;

    invoke-static {v0}, Lio/bidmachine/nativead/a;->access$000(Lio/bidmachine/nativead/a;)Lio/bidmachine/nativead/NativeMediaPrivateData;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/bidmachine/nativead/NativeMediaPrivateData;->setIconUri(Landroid/net/Uri;)V

    .line 85
    iget-object p2, p0, Lio/bidmachine/nativead/a$1;->this$0:Lio/bidmachine/nativead/a;

    invoke-static {p2, p1}, Lio/bidmachine/nativead/a;->access$100(Lio/bidmachine/nativead/a;Ljava/lang/Runnable;)V

    return-void
.end method
