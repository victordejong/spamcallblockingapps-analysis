.class final Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$MessageHandler;",
        "Landroid/os/Handler;",
        "view",
        "Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;",
        "(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;)V",
        "mView",
        "Ljava/lang/ref/WeakReference;",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
        "video_trimmer_library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 381
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 384
    iget-object p1, p0, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;

    if-eqz p1, :cond_0

    .line 385
    invoke-static {p1}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->a(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;)Landroid/widget/VideoView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 387
    :cond_1
    invoke-static {p1}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->b(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;)V

    .line 388
    invoke-static {p1}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->a(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;)Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const-wide/16 v0, 0xa

    .line 389
    invoke-virtual {p0, p1, v0, v1}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$b;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method
