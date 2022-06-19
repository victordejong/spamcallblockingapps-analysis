.class public abstract Lcom/bumptech/glide/e/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/a/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/e/a/j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lcom/bumptech/glide/e/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 54
    invoke-direct {p0, v0, v0}, Lcom/bumptech/glide/e/a/c;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1, p2}, Lcom/bumptech/glide/g/k;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iput p1, p0, Lcom/bumptech/glide/e/a/c;->a:I

    .line 77
    iput p2, p0, Lcom/bumptech/glide/e/a/c;->b:I

    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and height: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/bumptech/glide/e/a/i;)V
    .locals 2

    .line 107
    iget v0, p0, Lcom/bumptech/glide/e/a/c;->a:I

    iget v1, p0, Lcom/bumptech/glide/e/a/c;->b:I

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/e/a/i;->a(II)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Lcom/bumptech/glide/e/a/i;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final getRequest()Lcom/bumptech/glide/e/d;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/bumptech/glide/e/a/c;->c:Lcom/bumptech/glide/e/d;

    return-object v0
.end method

.method public final setRequest(Lcom/bumptech/glide/e/d;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/bumptech/glide/e/a/c;->c:Lcom/bumptech/glide/e/d;

    return-void
.end method
