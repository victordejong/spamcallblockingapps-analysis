.class final Lio/bidmachine/nativead/view/MediaView$7$5;
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

    .line 737
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$7$5;->this$1:Lio/bidmachine/nativead/view/MediaView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 739
    iget-object v0, p0, Lio/bidmachine/nativead/view/MediaView$7$5;->this$1:Lio/bidmachine/nativead/view/MediaView$7;

    iget-object v0, v0, Lio/bidmachine/nativead/view/MediaView$7;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {v0}, Lio/bidmachine/nativead/view/MediaView;->access$1300(Lio/bidmachine/nativead/view/MediaView;)V

    return-void
.end method
