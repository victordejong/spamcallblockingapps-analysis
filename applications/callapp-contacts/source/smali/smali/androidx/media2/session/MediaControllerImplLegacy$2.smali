.class Landroidx/media2/session/MediaControllerImplLegacy$2;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/i;

.field final synthetic val$result:Landroidx/c/a/b;


# direct methods
.method constructor <init>(Landroidx/media2/session/i;Landroid/os/Handler;Landroidx/c/a/b;)V
    .locals 0

    .line 500
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplLegacy$2;->this$0:Landroidx/media2/session/i;

    iput-object p3, p0, Landroidx/media2/session/MediaControllerImplLegacy$2;->val$result:Landroidx/c/a/b;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .line 503
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$2;->val$result:Landroidx/c/a/b;

    new-instance v1, Landroidx/media2/session/SessionResult;

    invoke-direct {v1, p1, p2}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidx/c/a/b;->a(Ljava/lang/Object;)Z

    return-void
.end method
