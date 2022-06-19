.class public Ljp/wasabeef/blurry/Blurry$ImageComposer;
.super Ljava/lang/Object;
.source "Blurry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/wasabeef/blurry/Blurry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageComposer"
.end annotation


# instance fields
.field private final async:Z

.field private final capture:Landroid/view/View;

.field private final context:Landroid/content/Context;

.field private final factor:Ljp/wasabeef/blurry/BlurFactor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljp/wasabeef/blurry/BlurFactor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "capture",
            "factor",
            "async"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->context:Landroid/content/Context;

    .line 171
    iput-object p2, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->capture:Landroid/view/View;

    .line 172
    iput-object p3, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->factor:Ljp/wasabeef/blurry/BlurFactor;

    .line 173
    iput-boolean p4, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->async:Z

    return-void
.end method

.method static synthetic access$500(Ljp/wasabeef/blurry/Blurry$ImageComposer;)Landroid/content/Context;
    .locals 0

    .line 162
    iget-object p0, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/graphics/Bitmap;
    .locals 2

    .line 196
    iget-boolean v0, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->async:Z

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->factor:Ljp/wasabeef/blurry/BlurFactor;

    iget-object v1, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->capture:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Ljp/wasabeef/blurry/BlurFactor;->width:I

    .line 198
    iget-object v0, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->factor:Ljp/wasabeef/blurry/BlurFactor;

    iget-object v1, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->capture:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Ljp/wasabeef/blurry/BlurFactor;->height:I

    .line 199
    iget-object v0, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->capture:Landroid/view/View;

    iget-object v1, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->factor:Ljp/wasabeef/blurry/BlurFactor;

    invoke-static {v0, v1}, Ljp/wasabeef/blurry/Blur;->of(Landroid/view/View;Ljp/wasabeef/blurry/BlurFactor;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Use getAsync() instead of async()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAsync(Ljp/wasabeef/blurry/BlurTask$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->factor:Ljp/wasabeef/blurry/BlurFactor;

    iget-object v1, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->capture:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Ljp/wasabeef/blurry/BlurFactor;->width:I

    .line 204
    iget-object v0, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->factor:Ljp/wasabeef/blurry/BlurFactor;

    iget-object v1, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->capture:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Ljp/wasabeef/blurry/BlurFactor;->height:I

    .line 205
    new-instance v0, Ljp/wasabeef/blurry/BlurTask;

    iget-object v1, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->capture:Landroid/view/View;

    iget-object v2, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->factor:Ljp/wasabeef/blurry/BlurFactor;

    invoke-direct {v0, v1, v2, p1}, Ljp/wasabeef/blurry/BlurTask;-><init>(Landroid/view/View;Ljp/wasabeef/blurry/BlurFactor;Ljp/wasabeef/blurry/BlurTask$Callback;)V

    invoke-virtual {v0}, Ljp/wasabeef/blurry/BlurTask;->execute()V

    return-void
.end method

.method public into(Landroid/widget/ImageView;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "target"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->factor:Ljp/wasabeef/blurry/BlurFactor;

    iget-object v1, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->capture:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Ljp/wasabeef/blurry/BlurFactor;->width:I

    .line 178
    iget-object v0, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->factor:Ljp/wasabeef/blurry/BlurFactor;

    iget-object v1, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->capture:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Ljp/wasabeef/blurry/BlurFactor;->height:I

    .line 180
    iget-boolean v0, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->async:Z

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Ljp/wasabeef/blurry/BlurTask;

    iget-object v1, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->capture:Landroid/view/View;

    iget-object v2, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->factor:Ljp/wasabeef/blurry/BlurFactor;

    new-instance v3, Ljp/wasabeef/blurry/Blurry$ImageComposer$1;

    invoke-direct {v3, p0, p1}, Ljp/wasabeef/blurry/Blurry$ImageComposer$1;-><init>(Ljp/wasabeef/blurry/Blurry$ImageComposer;Landroid/widget/ImageView;)V

    invoke-direct {v0, v1, v2, v3}, Ljp/wasabeef/blurry/BlurTask;-><init>(Landroid/view/View;Ljp/wasabeef/blurry/BlurFactor;Ljp/wasabeef/blurry/BlurTask$Callback;)V

    .line 188
    invoke-virtual {v0}, Ljp/wasabeef/blurry/BlurTask;->execute()V

    goto :goto_0

    .line 190
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->capture:Landroid/view/View;

    iget-object v3, p0, Ljp/wasabeef/blurry/Blurry$ImageComposer;->factor:Ljp/wasabeef/blurry/BlurFactor;

    invoke-static {v2, v3}, Ljp/wasabeef/blurry/Blur;->of(Landroid/view/View;Ljp/wasabeef/blurry/BlurFactor;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 191
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
