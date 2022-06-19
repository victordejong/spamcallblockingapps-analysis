.class public Lcom/callerid/block/g/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static d:Lcom/callerid/block/g/a;


# instance fields
.field private final a:I

.field private final b:I

.field private c:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcom/callerid/block/g/a;->a:I

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/callerid/block/g/a;->b:I

    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/callerid/block/g/a;->c:Landroid/util/LruCache;

    return-void
.end method

.method public static b()Lcom/callerid/block/g/a;
    .locals 1

    sget-object v0, Lcom/callerid/block/g/a;->d:Lcom/callerid/block/g/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/callerid/block/g/a;

    invoke-direct {v0}, Lcom/callerid/block/g/a;-><init>()V

    sput-object v0, Lcom/callerid/block/g/a;->d:Lcom/callerid/block/g/a;

    :cond_0
    sget-object v0, Lcom/callerid/block/g/a;->d:Lcom/callerid/block/g/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/g/a;->c:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public c(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/g/a;->c:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
