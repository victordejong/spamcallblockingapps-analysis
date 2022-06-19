.class Lcom/telguarder/helpers/ui/RealtimeBlurView$1;
.super Ljava/lang/Object;
.source "RealtimeBlurView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/helpers/ui/RealtimeBlurView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/ui/RealtimeBlurView;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [I

    .line 203
    iget-object v2, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v2}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$000(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 204
    iget-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v3}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$100(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 205
    iget-object v5, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-virtual {v5}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-virtual {v5}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->prepare()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 206
    iget-object v5, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v5}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$000(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v5, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 208
    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 209
    aget v5, v0, v1

    neg-int v5, v5

    .line 210
    aget v6, v0, v4

    neg-int v6, v6

    .line 211
    iget-object v7, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-virtual {v7, v0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->getLocationOnScreen([I)V

    .line 212
    aget v7, v0, v1

    add-int/2addr v5, v7

    .line 213
    aget v0, v0, v4

    add-int/2addr v6, v0

    .line 215
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$300(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v7, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v7}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$200(Lcom/telguarder/helpers/ui/RealtimeBlurView;)I

    move-result v7

    const v8, 0xffffff

    and-int/2addr v7, v8

    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 216
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$400(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 217
    iget-object v7, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v7, v4}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$502(Lcom/telguarder/helpers/ui/RealtimeBlurView;Z)Z

    .line 218
    invoke-static {}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$608()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    :try_start_1
    iget-object v7, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v7}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$400(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v7

    iget-object v8, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v8}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$300(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float v8, v8, v9

    iget-object v10, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-virtual {v10}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v8, v10

    iget-object v10, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v10}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$300(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v9

    iget-object v9, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-virtual {v9}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v10, v9

    invoke-virtual {v7, v8, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 221
    iget-object v7, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v7}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$400(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v7

    neg-int v5, v5

    int-to-float v5, v5

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 222
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 223
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v6}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$400(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 225
    :cond_1
    iget-object v5, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v5}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$400(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Lcom/telguarder/helpers/ui/RealtimeBlurView$StopException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :try_start_2
    iget-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v3, v1}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$502(Lcom/telguarder/helpers/ui/RealtimeBlurView;Z)Z

    .line 229
    invoke-static {}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$610()I

    .line 230
    iget-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    :goto_1
    invoke-static {v3}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$400(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 228
    iget-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v3, v1}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$502(Lcom/telguarder/helpers/ui/RealtimeBlurView;Z)Z

    .line 229
    invoke-static {}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$610()I

    .line 230
    iget-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v3}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$400(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 231
    throw v2

    .line 228
    :catch_0
    iget-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v3, v1}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$502(Lcom/telguarder/helpers/ui/RealtimeBlurView;Z)Z

    .line 229
    invoke-static {}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$610()I

    .line 230
    iget-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    goto :goto_1

    .line 232
    :goto_2
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$300(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v5, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v5}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$000(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    if-nez v2, :cond_2

    .line 233
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->access$700(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;->this$0:Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-virtual {v0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->invalidate()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    return v4

    :catch_1
    return v1
.end method
