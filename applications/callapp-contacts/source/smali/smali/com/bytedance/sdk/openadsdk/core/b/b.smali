.class public Lcom/bytedance/sdk/openadsdk/core/b/b;
.super Lcom/bytedance/sdk/openadsdk/core/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/b/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field protected c:Landroid/content/Context;

.field protected final d:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field protected final e:Ljava/lang/String;

.field protected final f:I

.field protected g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lcom/bytedance/sdk/openadsdk/core/e/d;

.field protected j:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

.field protected k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

.field protected l:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

.field protected m:Z

.field protected n:Lcom/a/a/a/a/a/c;

.field protected o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

.field protected q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;I)V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/b/c;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->m:Z

    .line 85
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->c:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 87
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->e:Ljava/lang/String;

    .line 88
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->f:I

    return-void
.end method


# virtual methods
.method protected a(IIIIJJLandroid/view/View;Landroid/view/View;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/d;
    .locals 1

    .line 156
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;-><init>()V

    .line 157
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object p1

    .line 158
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object p1

    .line 159
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->b(I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object p1

    .line 160
    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->a(I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object p1

    .line 161
    invoke-virtual {p1, p5, p6}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->b(J)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object p1

    .line 162
    invoke-virtual {p1, p7, p8}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->a(J)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object p1

    .line 163
    invoke-static {p9}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->b([I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object p1

    .line 164
    invoke-static {p10}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->a([I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object p1

    .line 165
    invoke-static {p9}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/view/View;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->c([I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object p1

    .line 166
    invoke-static {p10}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/view/View;)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->d([I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object p1

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->x:I

    .line 167
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object p1

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->y:I

    .line 168
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->f(I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object p1

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->z:I

    .line 169
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->g(I)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object p1

    .line 170
    invoke-virtual {p1, p11}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/d$a;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/d$a;->a()Lcom/bytedance/sdk/openadsdk/core/e/d;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 96
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 20

    move-object/from16 v12, p0

    const/4 v13, 0x1

    .line 109
    invoke-virtual {v12, v13}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 114
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->c:Landroid/content/Context;

    .line 117
    :cond_1
    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->c:Landroid/content/Context;

    if-nez v0, :cond_2

    return-void

    .line 121
    :cond_2
    iget-wide v5, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->v:J

    iget-wide v7, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->w:J

    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->g:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    move-object v9, v1

    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v9, v0

    :goto_0
    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_4

    move-object v10, v1

    goto :goto_1

    .line 123
    :cond_4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v10, v0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/b/b;->d()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    .line 121
    invoke-virtual/range {v0 .. v11}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(IIIIJJLandroid/view/View;Landroid/view/View;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/d;

    move-result-object v0

    iput-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->i:Lcom/bytedance/sdk/openadsdk/core/e/d;

    .line 125
    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->j:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

    if-eqz v0, :cond_5

    const/4 v1, -0x1

    move-object/from16 v2, p1

    .line 126
    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/b/b$a;->a(Landroid/view/View;I)V

    .line 128
    :cond_5
    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->w()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 129
    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->e:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->f:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v6, v0

    .line 131
    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Z)V

    .line 132
    iget-object v1, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->c:Landroid/content/Context;

    iget-object v2, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget v3, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->f:I

    iget-object v4, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    iget-object v5, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    iget-object v7, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->n:Lcom/a/a/a/a/a/c;

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/y;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;ILcom/bytedance/sdk/openadsdk/TTNativeAd;Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;Ljava/lang/String;Lcom/a/a/a/a/a/c;Z)Z

    move-result v18

    if-nez v18, :cond_7

    .line 136
    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->R()Lcom/bytedance/sdk/openadsdk/core/e/e;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 137
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->R()Lcom/bytedance/sdk/openadsdk/core/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/e;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    return-void

    :cond_7
    if-nez v18, :cond_8

    .line 142
    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/d/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 143
    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->c:Landroid/content/Context;

    iget-object v1, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v2, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/a/a/a/a/a/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)Lcom/a/a/a/a/a/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/a/a/a/a/a/c;->e()V

    .line 146
    :cond_8
    iget-object v13, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->c:Landroid/content/Context;

    iget-object v15, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->d:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v0, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->i:Lcom/bytedance/sdk/openadsdk/core/e/d;

    iget-object v1, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->e:Ljava/lang/String;

    iget-object v2, v12, Lcom/bytedance/sdk/openadsdk/core/b/b;->o:Ljava/util/Map;

    const-string v14, "click"

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v19, v2

    invoke-static/range {v13 .. v19}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/core/e/d;Ljava/lang/String;ZLjava/util/Map;)V

    return-void
.end method

.method public a(Lcom/a/a/a/a/a/c;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->n:Lcom/a/a/a/a/a/c;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTNativeAd;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->k:Lcom/bytedance/sdk/openadsdk/TTNativeAd;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->p:Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/b/b$a;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->j:Lcom/bytedance/sdk/openadsdk/core/b/b$a;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->l:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->o:Ljava/util/Map;

    return-void
.end method

.method protected a(I)Z
    .locals 6

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v2, v0, [I

    new-array v0, v0, [I

    .line 184
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->h:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 185
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;)[I

    move-result-object v2

    .line 186
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/view/View;)[I

    move-result-object v0

    .line 188
    :cond_0
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;-><init>()V

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->r:I

    .line 189
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->d(I)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->s:I

    .line 190
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->c(I)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->t:I

    .line 191
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->b(I)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->u:I

    .line 192
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->a(I)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v3

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->v:J

    .line 193
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->b(J)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v3

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->w:J

    .line 194
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->a(J)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v3

    aget v4, v2, v1

    .line 195
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->e(I)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v3

    const/4 v4, 0x1

    aget v2, v2, v4

    .line 196
    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->f(I)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v2

    aget v1, v0, v1

    .line 197
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->g(I)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v1

    aget v0, v0, v4

    .line 198
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->h(I)Lcom/bytedance/sdk/openadsdk/core/e/g$a;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/g$a;->a()Lcom/bytedance/sdk/openadsdk/core/e/g;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->q:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;

    invoke-interface {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a;->a(ILcom/bytedance/sdk/openadsdk/core/e/g;)V

    return v4

    :cond_1
    return v1
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 100
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->h:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b;->m:Z

    return-void
.end method
