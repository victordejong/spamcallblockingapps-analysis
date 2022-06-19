.class final Lcom/google/android/gms/internal/ads/dtb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field private static final b:Lcom/google/android/gms/internal/ads/dtb;


# instance fields
.field public volatile a:J

.field private final c:Lcom/google/android/gms/internal/ads/cnz;

.field private final d:Landroid/os/HandlerThread;

.field private e:Landroid/view/Choreographer;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/dtb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dtb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dtb;->b:Lcom/google/android/gms/internal/ads/dtb;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ChoreographerOwner:Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtb;->d:Landroid/os/HandlerThread;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtb;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/cnz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtb;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/cnz;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dtb;->c:Lcom/google/android/gms/internal/ads/cnz;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtb;->c:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->sendEmptyMessage(I)Z

    .line 7
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/dtb;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/dtb;->b:Lcom/google/android/gms/internal/ads/dtb;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtb;->c:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->sendEmptyMessage(I)Z

    .line 9
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtb;->c:Lcom/google/android/gms/internal/ads/cnz;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cnz;->sendEmptyMessage(I)Z

    .line 11
    return-void
.end method

.method public final doFrame(J)V
    .locals 5

    .prologue
    .line 12
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dtb;->a:J

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dtb;->e:Landroid/view/Choreographer;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 14
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 15
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 30
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 17
    :pswitch_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dtb;->e:Landroid/view/Choreographer;

    goto :goto_0

    .line 20
    :pswitch_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/dtb;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/dtb;->f:I

    .line 21
    iget v1, p0, Lcom/google/android/gms/internal/ads/dtb;->f:I

    if-ne v1, v0, :cond_0

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtb;->e:Landroid/view/Choreographer;

    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 25
    :pswitch_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/dtb;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/dtb;->f:I

    .line 26
    iget v1, p0, Lcom/google/android/gms/internal/ads/dtb;->f:I

    if-nez v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dtb;->e:Landroid/view/Choreographer;

    invoke-virtual {v1, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 28
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dtb;->a:J

    goto :goto_0

    .line 15
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
