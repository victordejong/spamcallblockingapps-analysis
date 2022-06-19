.class abstract Lio/bidmachine/FullScreenAdObject$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/FullScreenAdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/FullScreenAdObject;


# direct methods
.method private constructor <init>(Lio/bidmachine/FullScreenAdObject;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lio/bidmachine/FullScreenAdObject$a;->this$0:Lio/bidmachine/FullScreenAdObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/FullScreenAdObject;Lio/bidmachine/FullScreenAdObject$1;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lio/bidmachine/FullScreenAdObject$a;-><init>(Lio/bidmachine/FullScreenAdObject;)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 0

    .line 80
    invoke-static {p0}, Lio/bidmachine/core/Utils;->cancelBackgroundThreadTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method abstract onTracked()V
.end method

.method public run()V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lio/bidmachine/FullScreenAdObject$a;->onTracked()V

    return-void
.end method

.method start(J)V
    .locals 0

    .line 76
    invoke-static {p0, p1, p2}, Lio/bidmachine/core/Utils;->onBackgroundThread(Ljava/lang/Runnable;J)V

    return-void
.end method
