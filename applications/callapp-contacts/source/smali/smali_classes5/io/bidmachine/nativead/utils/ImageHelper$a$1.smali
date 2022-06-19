.class final Lio/bidmachine/nativead/utils/ImageHelper$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/utils/ImageHelper$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/nativead/utils/ImageHelper$a;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/utils/ImageHelper$a;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lio/bidmachine/nativead/utils/ImageHelper$a$1;->this$0:Lio/bidmachine/nativead/utils/ImageHelper$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 85
    iget-object v0, p0, Lio/bidmachine/nativead/utils/ImageHelper$a$1;->this$0:Lio/bidmachine/nativead/utils/ImageHelper$a;

    invoke-static {v0}, Lio/bidmachine/nativead/utils/ImageHelper$a;->access$000(Lio/bidmachine/nativead/utils/ImageHelper$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lio/bidmachine/nativead/utils/ImageHelper$a$1;->this$0:Lio/bidmachine/nativead/utils/ImageHelper$a;

    invoke-static {v1}, Lio/bidmachine/nativead/utils/ImageHelper$a;->access$100(Lio/bidmachine/nativead/utils/ImageHelper$a;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lio/bidmachine/nativead/utils/ImageHelper$a$1;->this$0:Lio/bidmachine/nativead/utils/ImageHelper$a;

    invoke-static {v1}, Lio/bidmachine/nativead/utils/ImageHelper$a;->access$200(Lio/bidmachine/nativead/utils/ImageHelper$a;)Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/nativead/utils/ImageHelper$a$1;->this$0:Lio/bidmachine/nativead/utils/ImageHelper$a;

    invoke-static {v2}, Lio/bidmachine/nativead/utils/ImageHelper$a;->access$100(Lio/bidmachine/nativead/utils/ImageHelper$a;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;->onImagePrepared(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lio/bidmachine/nativead/utils/ImageHelper$a$1;->this$0:Lio/bidmachine/nativead/utils/ImageHelper$a;

    invoke-static {v0}, Lio/bidmachine/nativead/utils/ImageHelper$a;->access$200(Lio/bidmachine/nativead/utils/ImageHelper$a;)Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;

    move-result-object v0

    const-string v1, "Target ImageView or Bitmap is invalid"

    invoke-interface {v0, v1}, Lio/bidmachine/nativead/utils/ImageHelper$OnImageHelperListener;->onError(Ljava/lang/String;)V

    return-void
.end method
