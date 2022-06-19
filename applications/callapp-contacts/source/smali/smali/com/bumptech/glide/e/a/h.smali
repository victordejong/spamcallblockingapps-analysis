.class public final Lcom/bumptech/glide/e/a/h;
.super Lcom/bumptech/glide/e/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/e/a/c<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static final b:Landroid/os/Handler;


# instance fields
.field final a:Lcom/bumptech/glide/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Landroid/os/Handler;

    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/e/a/h$1;

    invoke-direct {v2}, Lcom/bumptech/glide/e/a/h$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/e/a/h;->b:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/k;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/e/a/c;-><init>(II)V

    .line 51
    iput-object p1, p0, Lcom/bumptech/glide/e/a/h;->a:Lcom/bumptech/glide/k;

    return-void
.end method

.method public static a(Lcom/bumptech/glide/k;II)Lcom/bumptech/glide/e/a/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/k;",
            "II)",
            "Lcom/bumptech/glide/e/a/h<",
            "TZ;>;"
        }
    .end annotation

    .line 46
    new-instance p1, Lcom/bumptech/glide/e/a/h;

    const/high16 p2, -0x80000000

    invoke-direct {p1, p0, p2, p2}, Lcom/bumptech/glide/e/a/h;-><init>(Lcom/bumptech/glide/k;II)V

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/bumptech/glide/e/b/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/e/b/d<",
            "-TZ;>;)V"
        }
    .end annotation

    .line 56
    sget-object p1, Lcom/bumptech/glide/e/a/h;->b:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
