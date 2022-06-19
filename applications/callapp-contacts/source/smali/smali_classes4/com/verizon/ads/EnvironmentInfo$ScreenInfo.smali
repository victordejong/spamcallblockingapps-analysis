.class public Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/EnvironmentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenInfo"
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# instance fields
.field private final b:I

.field private final c:F

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    const-class v0, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 134
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;->b:I

    .line 135
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;->c:F

    .line 137
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    const-string v0, "window"

    .line 139
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_0

    .line 142
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 143
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 146
    iget p1, v0, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;->e:I

    .line 147
    iget p1, v0, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;->d:I

    return-void

    .line 150
    :cond_0
    sget-object p1, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Unable to determine display size."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 154
    :cond_1
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;->e:I

    .line 155
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;->d:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/verizon/ads/EnvironmentInfo$1;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getDensity()F
    .locals 1

    .line 200
    iget v0, p0, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;->c:F

    return v0
.end method

.method public getDensityDpi()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;->b:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;->d:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/verizon/ads/EnvironmentInfo$ScreenInfo;->e:I

    return v0
.end method
