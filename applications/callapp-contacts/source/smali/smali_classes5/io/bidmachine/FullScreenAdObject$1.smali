.class final Lio/bidmachine/FullScreenAdObject$1;
.super Lio/bidmachine/FullScreenAdObject$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/FullScreenAdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/FullScreenAdObject<",
        "TAdRequestType;>.a;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/FullScreenAdObject;


# direct methods
.method constructor <init>(Lio/bidmachine/FullScreenAdObject;)V
    .locals 1

    .line 16
    iput-object p1, p0, Lio/bidmachine/FullScreenAdObject$1;->this$0:Lio/bidmachine/FullScreenAdObject;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/bidmachine/FullScreenAdObject$a;-><init>(Lio/bidmachine/FullScreenAdObject;Lio/bidmachine/FullScreenAdObject$1;)V

    return-void
.end method


# virtual methods
.method final onTracked()V
    .locals 1

    .line 19
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject$1;->this$0:Lio/bidmachine/FullScreenAdObject;

    invoke-virtual {v0}, Lio/bidmachine/FullScreenAdObject;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processImpression()V

    return-void
.end method
