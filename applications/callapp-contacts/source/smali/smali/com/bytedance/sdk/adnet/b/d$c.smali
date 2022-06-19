.class public Lcom/bytedance/sdk/adnet/b/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/adnet/b/d;

.field private b:Landroid/graphics/Bitmap;

.field private final c:Lcom/bytedance/sdk/adnet/b/d$e;

.field private final d:Ljava/lang/String;

.field private e:[B

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/b/d;[BLandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/adnet/b/d$e;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$c;->a:Lcom/bytedance/sdk/adnet/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/b/d$c;->e:[B

    .line 475
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/b/d$c;->b:Landroid/graphics/Bitmap;

    .line 476
    iput-object p4, p0, Lcom/bytedance/sdk/adnet/b/d$c;->f:Ljava/lang/String;

    .line 477
    iput-object p5, p0, Lcom/bytedance/sdk/adnet/b/d$c;->d:Ljava/lang/String;

    .line 478
    iput-object p6, p0, Lcom/bytedance/sdk/adnet/b/d$c;->c:Lcom/bytedance/sdk/adnet/b/d$e;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/b/d$c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$c;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/b/d$c;)Lcom/bytedance/sdk/adnet/b/d$e;
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/bytedance/sdk/adnet/b/d$c;->c:Lcom/bytedance/sdk/adnet/b/d$e;

    return-object p0
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/b/d$c;[B)[B
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/b/d$c;->e:[B

    return-object p1
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/b/d$c;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method
