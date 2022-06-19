.class Lpl/droidsonroids/gif/c$b;
.super Lpl/droidsonroids/gif/l;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/droidsonroids/gif/c;->seekTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:I

.field final synthetic f:Lpl/droidsonroids/gif/c;


# direct methods
.method constructor <init>(Lpl/droidsonroids/gif/c;Lpl/droidsonroids/gif/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpl/droidsonroids/gif/c$b;->f:Lpl/droidsonroids/gif/c;

    iput p3, p0, Lpl/droidsonroids/gif/c$b;->e:I

    invoke-direct {p0, p2}, Lpl/droidsonroids/gif/l;-><init>(Lpl/droidsonroids/gif/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/c$b;->f:Lpl/droidsonroids/gif/c;

    iget-object v1, v0, Lpl/droidsonroids/gif/c;->j:Lpl/droidsonroids/gif/GifInfoHandle;

    iget v2, p0, Lpl/droidsonroids/gif/c$b;->e:I

    iget-object v0, v0, Lpl/droidsonroids/gif/c;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lpl/droidsonroids/gif/GifInfoHandle;->z(ILandroid/graphics/Bitmap;)V

    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/l;->d:Lpl/droidsonroids/gif/c;

    iget-object v0, v0, Lpl/droidsonroids/gif/c;->p:Lpl/droidsonroids/gif/g;

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method
