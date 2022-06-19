.class Lcom/bytedance/sdk/adnet/b/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/adnet/core/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Lcom/bytedance/sdk/adnet/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/Bitmap;

.field private d:Lcom/bytedance/sdk/adnet/err/VAdError;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/b/d$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/b/d$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;",
            "Lcom/bytedance/sdk/adnet/b/d$c;",
            ")V"
        }
    .end annotation

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$a;->e:Ljava/util/List;

    .line 566
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    .line 567
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/b/d$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$a;->c:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/b/d$a;)Ljava/util/List;
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/bytedance/sdk/adnet/b/d$a;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/adnet/b/d$a;)Lcom/bytedance/sdk/adnet/core/m;
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/bytedance/sdk/adnet/b/d$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/adnet/b/d$a;)Landroid/graphics/Bitmap;
    .locals 0

    .line 536
    iget-object p0, p0, Lcom/bytedance/sdk/adnet/b/d$a;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/adnet/err/VAdError;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$a;->d:Lcom/bytedance/sdk/adnet/err/VAdError;

    return-object v0
.end method

.method public a(Lcom/bytedance/sdk/adnet/b/d$c;)V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 589
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/err/VAdError;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$a;->d:Lcom/bytedance/sdk/adnet/err/VAdError;

    return-void
.end method

.method public b()Lcom/bytedance/sdk/adnet/core/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    return-object v0
.end method
