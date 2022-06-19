.class public Lcom/bumptech/glide/load/c/a/p;
.super Lcom/bumptech/glide/load/c/a/e;
.source "FitCenter.java"


# static fields
.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-string/jumbo v0, "com.bumptech.glide.load.resource.bitmap.FitCenter"

    sget-object v1, Lcom/bumptech/glide/load/c/a/p;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/c/a/p;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/bumptech/glide/load/c/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/engine/a/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 20
    invoke-static {p1, p2, p3, p4}, Lcom/bumptech/glide/load/c/a/v;->b(Lcom/bumptech/glide/load/engine/a/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/bumptech/glide/load/c/a/p;->b:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 36
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 25
    instance-of v0, p1, Lcom/bumptech/glide/load/c/a/p;

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "com.bumptech.glide.load.resource.bitmap.FitCenter"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
