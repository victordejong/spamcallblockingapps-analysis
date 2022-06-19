.class Lcom/zhy/http/okhttp/request/PostFormRequest$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhy/http/okhttp/request/PostFormRequest$1;->onRequestProgress(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zhy/http/okhttp/request/PostFormRequest$1;

.field final synthetic val$bytesWritten:J

.field final synthetic val$contentLength:J


# direct methods
.method constructor <init>(Lcom/zhy/http/okhttp/request/PostFormRequest$1;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/zhy/http/okhttp/request/PostFormRequest$1$1;->this$1:Lcom/zhy/http/okhttp/request/PostFormRequest$1;

    iput-wide p2, p0, Lcom/zhy/http/okhttp/request/PostFormRequest$1$1;->val$bytesWritten:J

    iput-wide p4, p0, Lcom/zhy/http/okhttp/request/PostFormRequest$1$1;->val$contentLength:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/zhy/http/okhttp/request/PostFormRequest$1$1;->this$1:Lcom/zhy/http/okhttp/request/PostFormRequest$1;

    iget-object v1, v0, Lcom/zhy/http/okhttp/request/PostFormRequest$1;->val$callback:Lcom/zhy/http/okhttp/callback/Callback;

    iget-wide v2, p0, Lcom/zhy/http/okhttp/request/PostFormRequest$1$1;->val$bytesWritten:J

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    iget-wide v3, p0, Lcom/zhy/http/okhttp/request/PostFormRequest$1$1;->val$contentLength:J

    long-to-float v5, v3

    div-float/2addr v2, v5

    iget-object v0, v0, Lcom/zhy/http/okhttp/request/PostFormRequest$1;->this$0:Lcom/zhy/http/okhttp/request/PostFormRequest;

    iget v0, v0, Lcom/zhy/http/okhttp/request/OkHttpRequest;->id:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/zhy/http/okhttp/callback/Callback;->inProgress(FJI)V

    return-void
.end method
