.class public Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;
.super Ljava/lang/Object;
.source "XYGraphWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/XYGraphWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LineLabelStyle"
.end annotation


# instance fields
.field private format:Ljava/text/Format;

.field private paint:Landroid/graphics/Paint;

.field private rotation:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->rotation:F

    .line 177
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->format:Ljava/text/Format;

    .line 180
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->paint:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 183
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->paint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/androidplot/xy/XYGraphWidget;->access$100()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method static synthetic access$000(Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;)Ljava/text/Format;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->format:Ljava/text/Format;

    return-object p0
.end method


# virtual methods
.method public getFormat()Ljava/text/Format;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->format:Ljava/text/Format;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .line 195
    iget v0, p0, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->rotation:F

    return v0
.end method

.method public setFormat(Ljava/text/Format;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->format:Ljava/text/Format;

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;->rotation:F

    return-void
.end method
