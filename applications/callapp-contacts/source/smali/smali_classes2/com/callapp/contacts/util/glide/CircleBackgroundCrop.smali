.class public Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;
.super Lcom/bumptech/glide/load/resource/bitmap/f;
.source "SourceFile"


# static fields
.field private static final b:[B


# instance fields
.field private c:Ljava/lang/Integer;

.field private d:Landroid/graphics/ColorFilter;

.field private e:I

.field private f:I

.field private g:F

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    sget-object v0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->a:Ljava/nio/charset/Charset;

    const-string v1, "com.callapp.contacts.CircleBackgroundCrop.1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->b:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Landroid/graphics/ColorFilter;IIFZZ)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/f;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->c:Ljava/lang/Integer;

    .line 20
    iput-object v0, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->d:Landroid/graphics/ColorFilter;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->g:F

    .line 28
    iput-object p1, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->c:Ljava/lang/Integer;

    .line 29
    iput-object p2, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->d:Landroid/graphics/ColorFilter;

    .line 30
    iput p3, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->e:I

    .line 31
    iput p4, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->f:I

    .line 32
    iput p5, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->g:F

    .line 33
    iput-boolean p6, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->h:Z

    .line 34
    iput-boolean p7, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->i:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/engine/a/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11

    .line 41
    iget-boolean v0, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->h:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v5, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->c:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->d:Landroid/graphics/ColorFilter;

    iget v7, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->e:I

    iget v8, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->f:I

    iget v9, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->g:F

    iget-boolean v10, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->i:Z

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v1 .. v10}, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->a(Lcom/bumptech/glide/load/engine/a/e;Landroid/graphics/Bitmap;IILjava/lang/Integer;Landroid/graphics/ColorFilter;IIFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    iget-object v4, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->c:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->d:Landroid/graphics/ColorFilter;

    iget-boolean v6, p0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->i:Z

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v6}, Lcom/callapp/contacts/util/glide/CallAppTransformationUtils;->a(Lcom/bumptech/glide/load/engine/a/e;Landroid/graphics/Bitmap;IILjava/lang/Integer;Landroid/graphics/ColorFilter;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 50
    instance-of p1, p1, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;

    return p1
.end method

.method public hashCode()I
    .locals 1

    const v0, -0x6758562c

    return v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    .line 60
    sget-object v0, Lcom/callapp/contacts/util/glide/CircleBackgroundCrop;->b:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
