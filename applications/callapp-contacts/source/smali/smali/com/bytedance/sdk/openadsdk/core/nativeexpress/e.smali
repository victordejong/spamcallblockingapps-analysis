.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;
.super Lcom/bytedance/sdk/openadsdk/core/b/b;
.source "SourceFile"


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/e/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/b/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(IIIIJJLandroid/view/View;Landroid/view/View;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/d;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 30
    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->x:I

    const/4 v2, 0x0

    .line 31
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->y:I

    .line 32
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->z:I

    .line 36
    invoke-static/range {p9 .. p9}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;)[I

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    .line 37
    array-length v5, v3

    if-ne v5, v4, :cond_0

    .line 38
    aget v5, v3, v2

    .line 39
    aget v6, v3, v1

    .line 41
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    move/from16 v8, p1

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;F)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v5

    .line 42
    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    move/from16 v9, p2

    int-to-float v9, v9

    invoke-static {v8, v9}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;F)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v8, v6

    .line 43
    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    move/from16 v10, p3

    int-to-float v10, v10

    invoke-static {v9, v10}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;F)F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v9, v5

    .line 44
    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    move/from16 v11, p4

    int-to-float v11, v11

    invoke-static {v10, v11}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;F)F

    move-result v10

    float-to-int v10, v10

    add-int/2addr v10, v6

    goto :goto_0

    :cond_0
    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    new-array v11, v4, [I

    new-array v4, v4, [I

    .line 49
    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/e/g;

    if-eqz v12, :cond_1

    .line 50
    iget-wide v12, v12, Lcom/bytedance/sdk/openadsdk/core/e/g;->e:J

    .line 51
    iget-object v14, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/e/g;

    iget-wide v14, v14, Lcom/bytedance/sdk/openadsdk/core/e/g;->f:J

    .line 52
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/e/g;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/core/e/g;->g:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, v5

    const/4 v2, 0x0

    aput v1, v11, v2

    .line 53
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/e/g;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/core/e/g;->h:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v1, v6

    const/4 v2, 0x1

    aput v1, v11, v2

    .line 54
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/e/g;

    iget v2, v2, Lcom/bytedance/sdk/openadsdk/core/e/g;->i:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 55
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->c:Landroid/content/Context;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/e/g;

    iget v5, v5, Lcom/bytedance/sdk/openadsdk/core/e/g;->j:I

    int-to-float v5, v5

    invoke-static {v2, v5}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v1, 0x1

    aput v2, v4, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    .line 59
    :goto_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;-><init>()V

    .line 60
    invoke-virtual {v1, v7}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v9}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->b(I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object v1

    .line 63
    invoke-virtual {v1, v10}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->a(I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v12, v13}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->b(J)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v14, v15}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->a(J)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object v1

    .line 66
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->b([I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->a([I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object v1

    .line 68
    invoke-static/range {p9 .. p9}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/view/View;)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->c([I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object v1

    .line 69
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->d([I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->x:I

    .line 70
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->y:I

    .line 71
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->f(I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->z:I

    .line 72
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->g(I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object v1

    move-object/from16 v2, p11

    .line 73
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->a()Lcom/bytedance/sdk/openadsdk/core/e/d;

    move-result-object v1

    return-object v1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/g;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a:Lcom/bytedance/sdk/openadsdk/core/e/g;

    return-void
.end method
