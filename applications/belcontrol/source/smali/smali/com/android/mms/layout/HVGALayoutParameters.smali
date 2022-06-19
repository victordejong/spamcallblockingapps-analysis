.class public Lcom/android/mms/layout/HVGALayoutParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/mms/layout/LayoutParameters;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "HVGALayoutParameters"

.field private static mImageHeightLandscape:I

.field private static mImageHeightPortrait:I

.field private static mMaxHeight:I

.field private static mMaxWidth:I

.field private static mTextHeightLandscape:I

.field private static mTextHeightPortrait:I


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v0, 0xa

    if-eq p2, v0, :cond_1

    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad layout type detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p2, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    mul-float v0, v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p1, v1

    float-to-int p1, p1

    sput p1, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxHeight:I

    int-to-float p2, p1

    const v0, 0x3f666666    # 0.9f

    mul-float p2, p2, v0

    float-to-int p2, p2

    sput p2, Lcom/android/mms/layout/HVGALayoutParameters;->mImageHeightLandscape:I

    int-to-float p1, p1

    const p2, 0x3dcccccd    # 0.1f

    mul-float p1, p1, p2

    float-to-int p1, p1

    sput p1, Lcom/android/mms/layout/HVGALayoutParameters;->mTextHeightLandscape:I

    sget p1, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxWidth:I

    int-to-float v1, p1

    mul-float v1, v1, v0

    float-to-int v0, v1

    sput v0, Lcom/android/mms/layout/HVGALayoutParameters;->mImageHeightPortrait:I

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-int p1, p1

    sput p1, Lcom/android/mms/layout/HVGALayoutParameters;->mTextHeightPortrait:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxHeight:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxWidth:I

    :goto_0
    return v0
.end method

.method public getImageHeight()I
    .locals 2

    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mImageHeightLandscape:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mImageHeightPortrait:I

    :goto_0
    return v0
.end method

.method public getTextHeight()I
    .locals 2

    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mTextHeightLandscape:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mTextHeightPortrait:I

    :goto_0
    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    return v0
.end method

.method public getTypeDescription()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const-string v0, "HVGA-L"

    goto :goto_0

    :cond_0
    const-string v0, "HVGA-P"

    :goto_0
    return-object v0
.end method

.method public getWidth()I
    .locals 2

    iget v0, p0, Lcom/android/mms/layout/HVGALayoutParameters;->mType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxWidth:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/mms/layout/HVGALayoutParameters;->mMaxHeight:I

    :goto_0
    return v0
.end method
