.class final Lio/bidmachine/nativead/view/MediaView$7$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/view/MediaView$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/bidmachine/nativead/view/MediaView$7;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/view/MediaView$7;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$7$2;->this$1:Lio/bidmachine/nativead/view/MediaView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 684
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$7$2;->this$1:Lio/bidmachine/nativead/view/MediaView$7;

    iget-object v0, v0, Lio/bidmachine/nativead/view/MediaView$7;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->access$500(Lio/bidmachine/nativead/view/MediaView;)V

    .line 685
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$7$2;->this$1:Lio/bidmachine/nativead/view/MediaView$7;

    iget-object v0, v0, Lio/bidmachine/nativead/view/MediaView$7;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->access$200(Lio/bidmachine/nativead/view/MediaView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$7$2;->this$1:Lio/bidmachine/nativead/view/MediaView$7;

    iget-object v0, v0, Lio/bidmachine/nativead/view/MediaView$7;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-virtual {v0}, Lio/bidmachine/nativead/view/MediaView;->stopVideoVisibilityCheckerTimer()V

    :cond_0
    return-void
.end method
