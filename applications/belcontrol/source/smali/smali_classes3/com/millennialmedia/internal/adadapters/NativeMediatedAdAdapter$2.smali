.class public Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/millennialmedia/internal/utils/HttpUtils$HttpRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->downloadImage(Ljava/util/concurrent/CountDownLatch;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;

.field public final synthetic val$imageComponentInfo:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;

.field public final synthetic val$imageLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$2;->this$0:Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;

    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$2;->val$imageComponentInfo:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;

    iput-object p3, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$2;->val$imageLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/millennialmedia/internal/utils/HttpUtils$Response;)V
    .locals 2

    iget v0, p1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$2;->val$imageComponentInfo:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;

    iget-object v1, p1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->width:I

    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$2;->val$imageComponentInfo:Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;

    iget-object p1, p1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, v0, Lcom/millennialmedia/internal/adadapters/NativeAdapter$ImageComponentInfo;->height:I

    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$2;->this$0:Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;

    invoke-static {p1}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->access$508(Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "An HTTP error occurred downloading custom native ad event image."

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$2;->val$imageLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
