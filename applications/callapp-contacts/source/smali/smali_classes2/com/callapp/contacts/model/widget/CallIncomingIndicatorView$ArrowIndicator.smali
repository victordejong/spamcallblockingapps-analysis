.class final Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArrowIndicator"
.end annotation


# instance fields
.field private final arrow:Landroid/graphics/Bitmap;

.field private final arrowColor:Landroid/graphics/Paint;

.field private originalY:F

.field private x:F

.field private y:F


# direct methods
.method constructor <init>(ILandroid/graphics/Bitmap;)V
    .locals 2

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p2, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->arrow:Landroid/graphics/Bitmap;

    .line 395
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->arrowColor:Landroid/graphics/Paint;

    .line 396
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 397
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method static synthetic access$002(Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;F)F
    .locals 0

    .line 380
    iput p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->x:F

    return p1
.end method


# virtual methods
.method final draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 406
    iget-object v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->arrow:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->x:F

    iget v2, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->y:F

    iget-object v3, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->arrowColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method final reset()V
    .locals 2

    .line 401
    iget v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->originalY:F

    iput v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->y:F

    .line 402
    iget-object v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->arrowColor:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method final setY(F)V
    .locals 0

    .line 389
    iput p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->y:F

    .line 390
    iput p1, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->originalY:F

    return-void
.end method

.method final update(FF)V
    .locals 1

    .line 410
    iget v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->y:F

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 412
    iget-object p2, p0, Lcom/callapp/contacts/model/widget/CallIncomingIndicatorView$ArrowIndicator;->arrowColor:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
