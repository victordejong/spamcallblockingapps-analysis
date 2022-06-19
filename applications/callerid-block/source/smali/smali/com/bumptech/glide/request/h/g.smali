.class public final Lcom/bumptech/glide/request/h/g;
.super Lcom/bumptech/glide/request/h/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/h/c<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static final f:Landroid/os/Handler;


# instance fields
.field private final e:Lcom/bumptech/glide/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/request/h/g$a;

    invoke-direct {v2}, Lcom/bumptech/glide/request/h/g$a;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/request/h/g;->f:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/h;II)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/request/h/c;-><init>(II)V

    iput-object p1, p0, Lcom/bumptech/glide/request/h/g;->e:Lcom/bumptech/glide/h;

    return-void
.end method

.method public static k(Lcom/bumptech/glide/h;II)Lcom/bumptech/glide/request/h/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/h;",
            "II)",
            "Lcom/bumptech/glide/request/h/g<",
            "TZ;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/request/h/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/request/h/g;-><init>(Lcom/bumptech/glide/h;II)V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lcom/bumptech/glide/request/i/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/request/i/b<",
            "-TZ;>;)V"
        }
    .end annotation

    sget-object p1, Lcom/bumptech/glide/request/h/g;->f:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public g(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method j()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/h/g;->e:Lcom/bumptech/glide/h;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/h;->m(Lcom/bumptech/glide/request/h/i;)V

    return-void
.end method
