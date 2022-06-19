.class public Lsv0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Landroid/view/ViewOutlineProvider;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsv0$a;

    invoke-direct {v0}, Lsv0$a;-><init>()V

    sput-object v0, Lsv0;->a:Landroid/view/ViewOutlineProvider;

    new-instance v0, Lsv0$b;

    invoke-direct {v0}, Lsv0$b;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/TextView;II)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    int-to-float p1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1

    int-to-float p2, p2

    mul-float p1, p1, v1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method

.method public static b(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 1

    sget-object v0, Lsv0;->a:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const v0, 0x7f070130

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method
