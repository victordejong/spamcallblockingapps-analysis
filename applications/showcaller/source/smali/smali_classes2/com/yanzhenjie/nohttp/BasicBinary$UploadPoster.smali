.class Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;
.super Ljava/lang/Object;
.source "BasicBinary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/nohttp/BasicBinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadPoster"
.end annotation


# static fields
.field static final ON_CANCEL:I = 0x1

.field static final ON_ERROR:I = 0x4

.field static final ON_FINISH:I = 0x3

.field static final ON_PROGRESS:I = 0x2

.field static final ON_START:I


# instance fields
.field private command:I

.field private exception:Ljava/lang/Exception;

.field private final mOnUploadListener:Lcom/yanzhenjie/nohttp/OnUploadListener;

.field private progress:I

.field final synthetic this$0:Lcom/yanzhenjie/nohttp/BasicBinary;

.field private final what:I


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/nohttp/BasicBinary;ILcom/yanzhenjie/nohttp/OnUploadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->this$0:Lcom/yanzhenjie/nohttp/BasicBinary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->what:I

    .line 3
    iput-object p3, p0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->mOnUploadListener:Lcom/yanzhenjie/nohttp/OnUploadListener;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->command:I

    return-void
.end method

.method public error(Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    iput v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->command:I

    .line 2
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->command:I

    return-void
.end method

.method public progress(I)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->command:I

    .line 2
    iput p1, p0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->progress:I

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->mOnUploadListener:Lcom/yanzhenjie/nohttp/OnUploadListener;

    if-eqz v0, :cond_4

    .line 2
    iget v1, p0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->command:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->what:I

    invoke-interface {v0, v1}, Lcom/yanzhenjie/nohttp/OnUploadListener;->onStart(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 3
    iget v1, p0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->what:I

    invoke-interface {v0, v1}, Lcom/yanzhenjie/nohttp/OnUploadListener;->onFinish(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 4
    iget v1, p0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->what:I

    iget v2, p0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->progress:I

    invoke-interface {v0, v1, v2}, Lcom/yanzhenjie/nohttp/OnUploadListener;->onProgress(II)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 5
    iget v1, p0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->what:I

    invoke-interface {v0, v1}, Lcom/yanzhenjie/nohttp/OnUploadListener;->onCancel(I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 6
    iget v1, p0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->what:I

    iget-object v2, p0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->exception:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/yanzhenjie/nohttp/OnUploadListener;->onError(ILjava/lang/Exception;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->command:I

    return-void
.end method
