.class public final Lcom/bumptech/glide/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# instance fields
.field private final b:I

.field private final c:Lcom/bumptech/glide/load/f;


# direct methods
.method private constructor <init>(ILcom/bumptech/glide/load/f;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/bumptech/glide/f/a;->b:I

    .line 27
    iput-object p2, p0, Lcom/bumptech/glide/f/a;->c:Lcom/bumptech/glide/load/f;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/load/f;
    .locals 2

    .line 19
    invoke-static {p0}, Lcom/bumptech/glide/f/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/load/f;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    .line 22
    new-instance v1, Lcom/bumptech/glide/f/a;

    invoke-direct {v1, p0, v0}, Lcom/bumptech/glide/f/a;-><init>(ILcom/bumptech/glide/load/f;)V

    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 32
    instance-of v0, p1, Lcom/bumptech/glide/f/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 33
    check-cast p1, Lcom/bumptech/glide/f/a;

    .line 34
    iget v0, p0, Lcom/bumptech/glide/f/a;->b:I

    iget v2, p1, Lcom/bumptech/glide/f/a;->b:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/f/a;->c:Lcom/bumptech/glide/load/f;

    iget-object p1, p1, Lcom/bumptech/glide/f/a;->c:Lcom/bumptech/glide/load/f;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->c:Lcom/bumptech/glide/load/f;

    iget v1, p0, Lcom/bumptech/glide/f/a;->b:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/g/k;->a(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/f/a;->c:Lcom/bumptech/glide/load/f;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/f;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    const/4 v0, 0x4

    .line 47
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/f/a;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
