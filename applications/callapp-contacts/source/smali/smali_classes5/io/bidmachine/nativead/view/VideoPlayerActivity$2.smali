.class final Lio/bidmachine/nativead/view/VideoPlayerActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/view/VideoPlayerActivity;->finishActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/nativead/view/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/view/VideoPlayerActivity;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity$2;->this$0:Lio/bidmachine/nativead/view/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 92
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/nativead/view/VideoPlayerActivity$2;->this$0:Lio/bidmachine/nativead/view/VideoPlayerActivity;

    invoke-virtual {v0}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 94
    invoke-static {v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/Throwable;)V

    return-void
.end method
