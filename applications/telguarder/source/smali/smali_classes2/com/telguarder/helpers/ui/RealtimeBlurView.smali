.class public Lcom/telguarder/helpers/ui/RealtimeBlurView;
.super Landroid/view/View;
.source "RealtimeBlurView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/helpers/ui/RealtimeBlurView$StopException;
    }
.end annotation


# static fields
.field static DEBUG:Ljava/lang/Boolean;

.field private static RENDERING_COUNT:I

.field private static STOP_EXCEPTION:Lcom/telguarder/helpers/ui/RealtimeBlurView$StopException;


# instance fields
.field private mBitmapToBlur:Landroid/graphics/Bitmap;

.field private mBlurInput:Landroid/renderscript/Allocation;

.field private mBlurOutput:Landroid/renderscript/Allocation;

.field private mBlurRadius:F

.field private mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private mBlurredBitmap:Landroid/graphics/Bitmap;

.field private mBlurringCanvas:Landroid/graphics/Canvas;

.field private mDecorView:Landroid/view/View;

.field private mDifferentRoot:Z

.field private mDirty:Z

.field private mDownsampleFactor:F

.field private mIsRendering:Z

.field private mOverlayColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private final mRectDst:Landroid/graphics/Rect;

.field private final mRectSrc:Landroid/graphics/Rect;

.field private mRenderScript:Landroid/renderscript/RenderScript;

.field private final preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 320
    new-instance v0, Lcom/telguarder/helpers/ui/RealtimeBlurView$StopException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/telguarder/helpers/ui/RealtimeBlurView$StopException;-><init>(Lcom/telguarder/helpers/ui/RealtimeBlurView$1;)V

    sput-object v0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->STOP_EXCEPTION:Lcom/telguarder/helpers/ui/RealtimeBlurView$StopException;

    .line 325
    :try_start_0
    const-class v0, Lcom/telguarder/helpers/ui/RealtimeBlurView;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "android.renderscript.RenderScript"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    sput-object v1, Lcom/telguarder/helpers/ui/RealtimeBlurView;->DEBUG:Ljava/lang/Boolean;

    return-void

    .line 327
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RenderScript support not enabled. Add \"android { defaultConfig { renderscriptSupportModeEnabled true }}\" in your build.gradle"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    .line 198
    new-instance v0, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;

    invoke-direct {v0, p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView$1;-><init>(Lcom/telguarder/helpers/ui/RealtimeBlurView;)V

    iput-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 47
    sget-object v0, Lcom/telguarder/R$styleable;->RealtimeBlurView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurRadius:F

    const/high16 p1, 0x40800000    # 4.0f

    .line 49
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mDownsampleFactor:F

    const/4 p1, 0x2

    const v0, -0x55000001

    .line 50
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mOverlayColor:I

    .line 51
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Landroid/view/View;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mDecorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/telguarder/helpers/ui/RealtimeBlurView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mOverlayColor:I

    return p0
.end method

.method static synthetic access$300(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Landroid/graphics/Canvas;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method static synthetic access$502(Lcom/telguarder/helpers/ui/RealtimeBlurView;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mIsRendering:Z

    return p1
.end method

.method static synthetic access$608()I
    .locals 2

    .line 23
    sget v0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->RENDERING_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/telguarder/helpers/ui/RealtimeBlurView;->RENDERING_COUNT:I

    return v0
.end method

.method static synthetic access$610()I
    .locals 2

    .line 23
    sget v0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->RENDERING_COUNT:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/telguarder/helpers/ui/RealtimeBlurView;->RENDERING_COUNT:I

    return v0
.end method

.method static synthetic access$700(Lcom/telguarder/helpers/ui/RealtimeBlurView;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mDifferentRoot:Z

    return p0
.end method

.method static isDebug(Landroid/content/Context;)Z
    .locals 3

    .line 337
    sget-object v0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->DEBUG:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->DEBUG:Ljava/lang/Boolean;

    .line 340
    :cond_1
    sget-object p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->DEBUG:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private releaseBitmap()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurInput:Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 89
    iput-object v1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurInput:Landroid/renderscript/Allocation;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurOutput:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 93
    iput-object v1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurOutput:Landroid/renderscript/Allocation;

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 97
    iput-object v1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    iput-object v1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method private releaseScript()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mRenderScript:Landroid/renderscript/RenderScript;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :catch_0
    iput-object v1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    if-eqz v0, :cond_1

    .line 112
    :try_start_1
    invoke-virtual {v0}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    :catch_1
    iput-object v1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    :cond_1
    return-void
.end method


# virtual methods
.method protected blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurInput:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    .line 192
    iget-object p1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurInput:Landroid/renderscript/Allocation;

    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 193
    iget-object p1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurOutput:Landroid/renderscript/Allocation;

    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 194
    iget-object p1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurOutput:Landroid/renderscript/Allocation;

    invoke-virtual {p1, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 286
    iget-boolean v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mIsRendering:Z

    if-nez v0, :cond_1

    .line 289
    sget v0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->RENDERING_COUNT:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    .line 288
    :cond_1
    sget-object p1, Lcom/telguarder/helpers/ui/RealtimeBlurView;->STOP_EXCEPTION:Lcom/telguarder/helpers/ui/RealtimeBlurView$StopException;

    throw p1
.end method

.method protected drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 3

    if-eqz p2, :cond_0

    .line 306
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 307
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 308
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 309
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 310
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mRectSrc:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 312
    :cond_0
    iget-object p2, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    iget-object p2, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mRectDst:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected getActivityDecorView()Landroid/view/View;
    .locals 3

    .line 246
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 247
    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_0

    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_0

    .line 248
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 251
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 260
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 261
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->getActivityDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mDecorView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 264
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mDifferentRoot:Z

    if-eqz v1, :cond_2

    .line 266
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    .line 269
    :cond_1
    iput-boolean v1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mDifferentRoot:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->release()V

    .line 280
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 299
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 300
    iget-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mOverlayColor:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method protected prepare()Z
    .locals 7

    .line 125
    iget v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurRadius:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->release()V

    return v1

    .line 129
    :cond_0
    iget v2, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mDownsampleFactor:F

    div-float/2addr v0, v2

    const/high16 v3, 0x41c80000    # 25.0f

    cmpl-float v4, v0, v3

    if-lez v4, :cond_1

    mul-float v2, v2, v0

    div-float/2addr v2, v3

    const/high16 v0, 0x41c80000    # 25.0f

    .line 135
    :cond_1
    iget-boolean v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mDirty:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mRenderScript:Landroid/renderscript/RenderScript;

    if-nez v3, :cond_6

    .line 136
    :cond_2
    iget-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mRenderScript:Landroid/renderscript/RenderScript;

    if-nez v3, :cond_5

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    iput-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 139
    invoke-static {v3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    iput-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->isDebug(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error loading RS jni library: java.lang.UnsatisfiedLinkError:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error loading RS jni library, Upgrade buildToolsVersion=\"24.0.2\" or higher may solve this issue"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_3
    throw v0

    .line 148
    :cond_4
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->releaseScript()V

    return v1

    .line 153
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v3, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 154
    iput-boolean v1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mDirty:Z

    .line 156
    :cond_6
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->getWidth()I

    move-result v0

    .line 157
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->getHeight()I

    move-result v3

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v4, 0x1

    .line 158
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v2, v3

    .line 159
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 160
    iget-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v0, :cond_7

    iget-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v2, :cond_9

    .line 161
    :cond_7
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->releaseBitmap()V

    .line 164
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_8

    .line 181
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->releaseBitmap()V

    return v1

    .line 168
    :cond_8
    :try_start_2
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurringCanvas:Landroid/graphics/Canvas;

    .line 169
    iget-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mRenderScript:Landroid/renderscript/RenderScript;

    iget-object v5, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBitmapToBlur:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v3, v5, v6, v4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurInput:Landroid/renderscript/Allocation;

    .line 170
    iget-object v5, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    iput-object v3, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurOutput:Landroid/renderscript/Allocation;

    .line 171
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurredBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_9

    .line 181
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->releaseBitmap()V

    return v1

    :cond_9
    return v4

    :catchall_0
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->releaseBitmap()V

    return v1

    :catch_1
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->releaseBitmap()V

    return v1
.end method

.method protected release()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->releaseBitmap()V

    .line 120
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->releaseScript()V

    return-void
.end method

.method public setBlurRadius(F)V
    .locals 1

    .line 57
    iget v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 58
    iput p1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mBlurRadius:F

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mDirty:Z

    .line 60
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDownsampleFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    .line 69
    iget v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mDownsampleFactor:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 70
    iput p1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mDownsampleFactor:F

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mDirty:Z

    .line 72
    invoke-direct {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->releaseBitmap()V

    .line 73
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->invalidate()V

    :cond_0
    return-void

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Downsample factor must be greater than 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOverlayColor(I)V
    .locals 1

    .line 79
    iget v0, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mOverlayColor:I

    if-eq v0, p1, :cond_0

    .line 80
    iput p1, p0, Lcom/telguarder/helpers/ui/RealtimeBlurView;->mOverlayColor:I

    .line 81
    invoke-virtual {p0}, Lcom/telguarder/helpers/ui/RealtimeBlurView;->invalidate()V

    :cond_0
    return-void
.end method
