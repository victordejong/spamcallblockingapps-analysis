.class final Landroidx/media2/widget/VideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/widget/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/widget/VideoView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/VideoView;)V
    .locals 0

    .line 211
    iput-object p1, p0, Landroidx/media2/widget/VideoView$1;->a:Landroidx/media2/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 226
    sget-boolean v0, Landroidx/media2/widget/VideoView;->a:Z

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceDestroyed(). "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;II)V
    .locals 2

    .line 214
    sget-boolean v0, Landroidx/media2/widget/VideoView;->a:Z

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceCreated(), width/height: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_0
    iget-object p2, p0, Landroidx/media2/widget/VideoView$1;->a:Landroidx/media2/widget/VideoView;

    iget-object p2, p2, Landroidx/media2/widget/VideoView;->d:Landroidx/media2/widget/t;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Landroidx/media2/widget/VideoView$1;->a:Landroidx/media2/widget/VideoView;

    .line 1084
    iget-boolean p1, p1, Landroidx/media2/widget/i;->ah:Z

    if-eqz p1, :cond_1

    .line 220
    iget-object p1, p0, Landroidx/media2/widget/VideoView$1;->a:Landroidx/media2/widget/VideoView;

    iget-object p1, p1, Landroidx/media2/widget/VideoView;->d:Landroidx/media2/widget/t;

    iget-object p2, p0, Landroidx/media2/widget/VideoView$1;->a:Landroidx/media2/widget/VideoView;

    iget-object p2, p2, Landroidx/media2/widget/VideoView;->g:Landroidx/media2/widget/k;

    invoke-interface {p1, p2}, Landroidx/media2/widget/t;->a(Landroidx/media2/widget/k;)Z

    :cond_1
    return-void
.end method

.method public final a(Landroidx/media2/widget/t;)V
    .locals 2

    .line 241
    iget-object v0, p0, Landroidx/media2/widget/VideoView$1;->a:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->d:Landroidx/media2/widget/t;

    if-eq p1, v0, :cond_0

    .line 242
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSurfaceTakeOverDone(). view is not targetView. ignore.: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 245
    :cond_0
    sget-boolean v0, Landroidx/media2/widget/VideoView;->a:Z

    if-eqz v0, :cond_1

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceTakeOverDone(). Now current view is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/VideoView$1;->a:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->c:Landroidx/media2/widget/t;

    if-eq p1, v0, :cond_2

    .line 249
    iget-object v0, p0, Landroidx/media2/widget/VideoView$1;->a:Landroidx/media2/widget/VideoView;

    iget-object v0, v0, Landroidx/media2/widget/VideoView;->c:Landroidx/media2/widget/t;

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Landroidx/media2/widget/VideoView$1;->a:Landroidx/media2/widget/VideoView;

    iput-object p1, v0, Landroidx/media2/widget/VideoView;->c:Landroidx/media2/widget/t;

    :cond_2
    return-void
.end method

.method public final b(Landroid/view/View;II)V
    .locals 2

    .line 233
    sget-boolean v0, Landroidx/media2/widget/VideoView;->a:Z

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceChanged(). width/height: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method
