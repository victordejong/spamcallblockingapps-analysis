.class public Ljp/wasabeef/blurry/Blurry$BitmapComposer;
.super Ljava/lang/Object;
.source "Blurry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/wasabeef/blurry/Blurry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapComposer"
.end annotation


# instance fields
.field private final async:Z

.field private final bitmap:Landroid/graphics/Bitmap;

.field private final context:Landroid/content/Context;

.field private final factor:Ljp/wasabeef/blurry/BlurFactor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljp/wasabeef/blurry/BlurFactor;Z)V
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
            "bitmap",
            "factor",
            "async"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Ljp/wasabeef/blurry/Blurry$BitmapComposer;->context:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Ljp/wasabeef/blurry/Blurry$BitmapComposer;->bitmap:Landroid/graphics/Bitmap;

    .line 137
    iput-object p3, p0, Ljp/wasabeef/blurry/Blurry$BitmapComposer;->factor:Ljp/wasabeef/blurry/BlurFactor;

    .line 138
    iput-boolean p4, p0, Ljp/wasabeef/blurry/Blurry$BitmapComposer;->async:Z

    return-void
.end method

.method static synthetic access$400(Ljp/wasabeef/blurry/Blurry$BitmapComposer;)Landroid/content/Context;
    .locals 0

    .line 127
    iget-object p0, p0, Ljp/wasabeef/blurry/Blurry$BitmapComposer;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public into(Landroid/widget/ImageView;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "target"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Ljp/wasabeef/blurry/Blurry$BitmapComposer;->factor:Ljp/wasabeef/blurry/BlurFactor;

    iget-object v1, p0, Ljp/wasabeef/blurry/Blurry$BitmapComposer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Ljp/wasabeef/blurry/BlurFactor;->width:I

    .line 143
    iget-object v0, p0, Ljp/wasabeef/blurry/Blurry$BitmapComposer;->factor:Ljp/wasabeef/blurry/BlurFactor;

    iget-object v1, p0, Ljp/wasabeef/blurry/Blurry$BitmapComposer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Ljp/wasabeef/blurry/BlurFactor;->height:I

    .line 145
    iget-boolean v0, p0, Ljp/wasabeef/blurry/Blurry$BitmapComposer;->async:Z

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ljp/wasabeef/blurry/BlurTask;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ljp/wasabeef/blurry/Blurry$BitmapComposer;->bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Ljp/wasabeef/blurry/Blurry$BitmapComposer;->factor:Ljp/wasabeef/blurry/BlurFactor;

    new-instance v4, Ljp/wasabeef/blurry/Blurry$BitmapComposer$1;

    invoke-direct {v4, p0, p1}, Ljp/wasabeef/blurry/Blurry$BitmapComposer$1;-><init>(Ljp/wasabeef/blurry/Blurry$BitmapComposer;Landroid/widget/ImageView;)V

    invoke-direct {v0, v1, v2, v3, v4}, Ljp/wasabeef/blurry/BlurTask;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljp/wasabeef/blurry/BlurFactor;Ljp/wasabeef/blurry/BlurTask$Callback;)V

    .line 153
    invoke-virtual {v0}, Ljp/wasabeef/blurry/BlurTask;->execute()V

    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Ljp/wasabeef/blurry/Blurry$BitmapComposer;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 156
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Ljp/wasabeef/blurry/Blurry$BitmapComposer;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Ljp/wasabeef/blurry/Blurry$BitmapComposer;->factor:Ljp/wasabeef/blurry/BlurFactor;

    invoke-static {v2, v3, v4}, Ljp/wasabeef/blurry/Blur;->of(Landroid/content/Context;Landroid/graphics/Bitmap;Ljp/wasabeef/blurry/BlurFactor;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 157
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
