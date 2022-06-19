.class final Lio/bidmachine/nativead/view/MediaView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/view/MediaView;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/nativead/view/MediaView;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/view/MediaView;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$2;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 180
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$2;->this$0:Lio/bidmachine/nativead/view/MediaView;

    iget-object p1, p1, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$2;->this$0:Lio/bidmachine/nativead/view/MediaView;

    iget-object p1, p1, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    invoke-interface {p1}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getVideoUri()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Video has been clicked"

    .line 183
    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$2;->this$0:Lio/bidmachine/nativead/view/MediaView;

    sput-object p1, Lio/bidmachine/nativead/view/MediaView;->listener:Lio/bidmachine/nativead/view/VideoPlayerActivity$a;

    .line 185
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$2;->this$0:Lio/bidmachine/nativead/view/MediaView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/bidmachine/nativead/view/MediaView;->access$202(Lio/bidmachine/nativead/view/MediaView;Z)Z

    const/4 p1, 0x0

    .line 187
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$2;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->access$300(Lio/bidmachine/nativead/view/MediaView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$2;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->access$400(Lio/bidmachine/nativead/view/MediaView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$2;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->access$400(Lio/bidmachine/nativead/view/MediaView;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    .line 190
    :cond_1
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$2;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->access$500(Lio/bidmachine/nativead/view/MediaView;)V

    .line 191
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$2;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-virtual {v0}, Lio/bidmachine/nativead/view/MediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lio/bidmachine/nativead/view/MediaView$2;->this$0:Lio/bidmachine/nativead/view/MediaView;

    iget-object v1, v1, Lio/bidmachine/nativead/view/MediaView;->nativeMediaData:Lio/bidmachine/nativead/NativeMediaPrivateData;

    .line 192
    invoke-interface {v1}, Lio/bidmachine/nativead/NativeMediaPrivateData;->getVideoUri()Landroid/net/Uri;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-static {v0, v1, p1}, Lio/bidmachine/nativead/view/VideoPlayerActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 195
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$2;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-virtual {v0}, Lio/bidmachine/nativead/view/MediaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method
