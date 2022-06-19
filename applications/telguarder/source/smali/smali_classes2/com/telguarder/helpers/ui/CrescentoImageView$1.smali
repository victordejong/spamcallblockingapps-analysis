.class Lcom/telguarder/helpers/ui/CrescentoImageView$1;
.super Ljava/lang/Object;
.source "CrescentoImageView.java"

# interfaces
.implements Landroidx/palette/graphics/Palette$PaletteAsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/ui/CrescentoImageView;->pickColorFromBitmap(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/ui/CrescentoImageView;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView$1;->this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenerated(Landroidx/palette/graphics/Palette;)V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView$1;->this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;

    iget v0, v0, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintMode:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 206
    iget-object v2, p0, Lcom/telguarder/helpers/ui/CrescentoImageView$1;->this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v2, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintPaint:Landroid/graphics/Paint;

    .line 207
    invoke-virtual {p1, v0}, Landroidx/palette/graphics/Palette;->getDarkMutedColor(I)I

    move-result v1

    const-string v2, "#"

    if-eqz v1, :cond_0

    .line 208
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Landroidx/palette/graphics/Palette;->getMutedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(I)V

    .line 209
    iget-object v1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView$1;->this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;

    iget-object v1, v1, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintPaint:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroidx/palette/graphics/Palette;->getDarkVibrantColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/palette/graphics/Palette;->getDarkVibrantColor(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Landroidx/palette/graphics/Palette;->getMutedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(I)V

    .line 212
    iget-object v1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView$1;->this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;

    iget-object v1, v1, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintPaint:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroidx/palette/graphics/Palette;->getDarkMutedColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView$1;->this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;

    iget-object p1, p1, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 216
    :goto_0
    iget-object p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView$1;->this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;

    iget-object p1, p1, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView$1;->this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;

    iget v0, v0, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintAmount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 218
    :cond_2
    iget-object p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView$1;->this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p1, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintPaint:Landroid/graphics/Paint;

    .line 219
    iget-object p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView$1;->this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;

    iget-object p1, p1, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView$1;->this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;

    iget v0, v0, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    iget-object p1, p0, Lcom/telguarder/helpers/ui/CrescentoImageView$1;->this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;

    iget-object p1, p1, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/telguarder/helpers/ui/CrescentoImageView$1;->this$0:Lcom/telguarder/helpers/ui/CrescentoImageView;

    iget v0, v0, Lcom/telguarder/helpers/ui/CrescentoImageView;->tintAmount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_1
    return-void
.end method
