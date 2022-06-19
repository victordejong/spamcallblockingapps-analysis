.class final Lcom/bumptech/glide/load/resource/d/g$a;
.super Lcom/bumptech/glide/e/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/e/a/c<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field b:Landroid/graphics/Bitmap;

.field private final c:Landroid/os/Handler;

.field private final d:J


# direct methods
.method constructor <init>(Landroid/os/Handler;IJ)V
    .locals 0

    .line 325
    invoke-direct {p0}, Lcom/bumptech/glide/e/a/c;-><init>()V

    .line 326
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g$a;->c:Landroid/os/Handler;

    .line 327
    iput p2, p0, Lcom/bumptech/glide/load/resource/d/g$a;->a:I

    .line 328
    iput-wide p3, p0, Lcom/bumptech/glide/load/resource/d/g$a;->d:J

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/e/b/d;)V
    .locals 2

    .line 318
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1338
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g$a;->b:Landroid/graphics/Bitmap;

    .line 1339
    iget-object p1, p0, Lcom/bumptech/glide/load/resource/d/g$a;->c:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1340
    iget-object p2, p0, Lcom/bumptech/glide/load/resource/d/g$a;->c:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/bumptech/glide/load/resource/d/g$a;->d:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    .line 345
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/g$a;->b:Landroid/graphics/Bitmap;

    return-void
.end method
