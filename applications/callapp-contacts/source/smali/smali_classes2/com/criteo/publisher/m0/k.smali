.class public Lcom/criteo/publisher/m0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    .line 34
    iput-object p1, p0, Lcom/criteo/publisher/m0/k;->a:Landroid/content/Context;

    return-void
.end method

.method public static c()Z
    .locals 2

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final a()Landroid/util/DisplayMetrics;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/criteo/publisher/m0/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/criteo/publisher/model/AdSize;
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/criteo/publisher/m0/k;->a()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 56
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 57
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 58
    new-instance v2, Lcom/criteo/publisher/model/AdSize;

    invoke-direct {v2, v1, v0}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    return-object v2
.end method
