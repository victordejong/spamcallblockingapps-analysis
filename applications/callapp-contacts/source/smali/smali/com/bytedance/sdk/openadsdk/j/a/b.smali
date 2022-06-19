.class public Lcom/bytedance/sdk/openadsdk/j/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/j/a/b$a;,
        Lcom/bytedance/sdk/openadsdk/j/a/b$c;,
        Lcom/bytedance/sdk/openadsdk/j/a/b$d;,
        Lcom/bytedance/sdk/openadsdk/j/a/b$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/adnet/core/l;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/j/a/b$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/l;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/b;->b:Landroid/os/Handler;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/b;->c:Ljava/util/Map;

    .line 40
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/a/b;->a:Lcom/bytedance/sdk/adnet/core/l;

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/j/a/b$a;
    .locals 1

    .line 226
    new-instance v0, Lcom/bytedance/sdk/openadsdk/j/a/b$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/j/a/b$a;-><init>()V

    return-object v0
.end method

.method private a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/j/a/c;
    .locals 8

    .line 116
    new-instance v7, Lcom/bytedance/sdk/openadsdk/j/a/c;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/j/a/b$4;

    invoke-direct {v2, p0, p5, p1}, Lcom/bytedance/sdk/openadsdk/j/a/b$4;-><init>(Lcom/bytedance/sdk/openadsdk/j/a/b;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object v0, v7

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/j/a/c;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/j/a/c$a;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;)V

    return-object v7
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/j/a/b;)Ljava/util/Map;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/j/a/b;->c:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/j/a/b;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/j/a/b$b;IILandroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/j/a/b;->b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/j/a/b$b;IILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/j/a/b;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/j/a/b$d;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/j/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/j/a/b$d;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/j/a/b$d;)V
    .locals 5

    if-nez p3, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/j/a/b$d;->a()Z

    move-result v0

    .line 157
    iget-object v1, p3, Lcom/bytedance/sdk/openadsdk/j/a/b$d;->c:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 158
    iget-object v1, p3, Lcom/bytedance/sdk/openadsdk/j/a/b$d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/j/a/b$b;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    .line 161
    new-instance v3, Lcom/bytedance/sdk/openadsdk/j/a/b$c;

    iget-object v4, p3, Lcom/bytedance/sdk/openadsdk/j/a/b$d;->e:[B

    invoke-direct {v3, v4, v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/j/a/b$c;-><init>([BLcom/bytedance/sdk/openadsdk/j/a/b$b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/j/a/b$b;->a(Lcom/bytedance/sdk/openadsdk/j/a/b$c;)V

    goto :goto_0

    .line 163
    :cond_2
    new-instance v3, Lcom/bytedance/sdk/openadsdk/j/a/b$c;

    iget-object v4, p3, Lcom/bytedance/sdk/openadsdk/j/a/b$d;->d:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-direct {v3, v4, v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/j/a/b$c;-><init>(Lcom/bytedance/sdk/adnet/err/VAdError;Lcom/bytedance/sdk/openadsdk/j/a/b$b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/j/a/b$b;->b(Lcom/bytedance/sdk/openadsdk/j/a/b$c;)V

    goto :goto_0

    .line 168
    :cond_3
    iget-object p1, p3, Lcom/bytedance/sdk/openadsdk/j/a/b$d;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_4
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/j/a/b$b;IILandroid/widget/ImageView$ScaleType;)V
    .locals 8

    .line 78
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/a/a;->a()Lcom/bytedance/sdk/openadsdk/j/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/j/a/a;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/a/a;->a()Lcom/bytedance/sdk/openadsdk/j/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/j/a/a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/j/a/a$a;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 82
    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/j/a/a$a;->a:[B

    if-eqz v1, :cond_0

    .line 83
    new-instance v7, Lcom/bytedance/sdk/openadsdk/j/a/b$c;

    iget-object p3, v6, Lcom/bytedance/sdk/openadsdk/j/a/a$a;->a:[B

    invoke-direct {v7, p3, p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/j/a/b$c;-><init>([BLcom/bytedance/sdk/openadsdk/j/a/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/j/a/b;->b:Landroid/os/Handler;

    new-instance p4, Lcom/bytedance/sdk/openadsdk/j/a/b$3;

    move-object v2, p4

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/j/a/b$3;-><init>(Lcom/bytedance/sdk/openadsdk/j/a/b;Lcom/bytedance/sdk/openadsdk/j/a/b$b;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/j/a/a$a;Lcom/bytedance/sdk/openadsdk/j/a/b$c;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/j/a/b;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/j/a/b$d;

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/j/a/b$d;->a(Lcom/bytedance/sdk/openadsdk/j/a/b$b;)V

    return-void

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    .line 107
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/j/a/b;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/j/a/c;

    move-result-object p1

    .line 108
    new-instance p3, Lcom/bytedance/sdk/openadsdk/j/a/b$d;

    invoke-direct {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/j/a/b$d;-><init>(Lcom/bytedance/sdk/openadsdk/j/a/c;Lcom/bytedance/sdk/openadsdk/j/a/b$b;)V

    .line 109
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/a/b;->a:Lcom/bytedance/sdk/adnet/core/l;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/adnet/core/l;->a(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 110
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/a/b;->c:Ljava/util/Map;

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/j/a/b$b;II)V
    .locals 6

    .line 49
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/j/a/b;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/j/a/b$b;IILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/j/a/b$b;IILandroid/widget/ImageView$ScaleType;)V
    .locals 10

    if-eqz p2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/j/a/b$1;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/j/a/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/j/a/b;Lcom/bytedance/sdk/openadsdk/j/a/b$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/j/a/b$2;

    const-string v4, "GifLoader_get"

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/j/a/b$2;-><init>(Lcom/bytedance/sdk/openadsdk/j/a/b;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/j/a/b$b;IILandroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/l/e;->a(Lcom/bytedance/sdk/openadsdk/l/g;I)V

    return-void
.end method
