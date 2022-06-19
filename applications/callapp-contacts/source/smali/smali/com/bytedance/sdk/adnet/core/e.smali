.class public Lcom/bytedance/sdk/adnet/core/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/adnet/face/d;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 65
    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/adnet/core/e;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/bytedance/sdk/adnet/core/e;->a:I

    .line 87
    iput p2, p0, Lcom/bytedance/sdk/adnet/core/e;->c:I

    .line 88
    iput p3, p0, Lcom/bytedance/sdk/adnet/core/e;->d:F

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/e;->a:I

    return v0
.end method

.method public a(I)Lcom/bytedance/sdk/adnet/core/e;
    .locals 0

    .line 69
    iput p1, p0, Lcom/bytedance/sdk/adnet/core/e;->a:I

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/adnet/err/VAdError;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 121
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/adnet/core/e;->b:I

    .line 122
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/e;->a:I

    int-to-float v1, v0

    iget v2, p0, Lcom/bytedance/sdk/adnet/core/e;->d:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/adnet/core/e;->a:I

    .line 123
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    throw p1
.end method

.method public b()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/e;->b:I

    return v0
.end method

.method public b(I)Lcom/bytedance/sdk/adnet/core/e;
    .locals 0

    .line 74
    iput p1, p0, Lcom/bytedance/sdk/adnet/core/e;->c:I

    return-object p0
.end method

.method protected c()Z
    .locals 2

    .line 132
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/e;->b:I

    iget v1, p0, Lcom/bytedance/sdk/adnet/core/e;->c:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
