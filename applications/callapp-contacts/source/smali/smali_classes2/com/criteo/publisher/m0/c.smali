.class public Lcom/criteo/publisher/m0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/criteo/publisher/m0/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/criteo/publisher/m0/k;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/criteo/publisher/m0/c;->a:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/criteo/publisher/m0/c;->b:Lcom/criteo/publisher/m0/k;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/criteo/publisher/m0/c;->b:Lcom/criteo/publisher/m0/k;

    invoke-virtual {v0}, Lcom/criteo/publisher/m0/k;->b()Lcom/criteo/publisher/model/AdSize;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/criteo/publisher/model/AdSize;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/criteo/publisher/model/AdSize;->getHeight()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public final a(I)I
    .locals 2

    int-to-float p1, p1

    .line 70
    iget-object v0, p0, Lcom/criteo/publisher/m0/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method
