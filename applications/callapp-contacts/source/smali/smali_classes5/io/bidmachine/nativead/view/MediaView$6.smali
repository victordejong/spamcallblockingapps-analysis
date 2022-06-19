.class final Lio/bidmachine/nativead/view/MediaView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/view/MediaView;->createMuteButton()V
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

    .line 617
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$6;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 620
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$6;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->access$300(Lio/bidmachine/nativead/view/MediaView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 621
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$6;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->access$1000(Lio/bidmachine/nativead/view/MediaView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 622
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$6;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->access$400(Lio/bidmachine/nativead/view/MediaView;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 623
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$6;->this$0:Lio/bidmachine/nativead/view/MediaView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/bidmachine/nativead/view/MediaView;->access$1002(Lio/bidmachine/nativead/view/MediaView;Z)Z

    goto :goto_0

    .line 625
    :cond_0
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$6;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->access$400(Lio/bidmachine/nativead/view/MediaView;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 626
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$6;->this$0:Lio/bidmachine/nativead/view/MediaView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/bidmachine/nativead/view/MediaView;->access$1002(Lio/bidmachine/nativead/view/MediaView;Z)Z

    .line 628
    :goto_0
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$6;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->access$1100(Lio/bidmachine/nativead/view/MediaView;)V

    :cond_1
    return-void
.end method
