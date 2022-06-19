.class public Lg/a/a/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Bitmap$CompressFormat;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x264

    iput v0, p0, Lg/a/a/a;->a:I

    const/16 v0, 0x330

    iput v0, p0, Lg/a/a/a;->b:I

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lg/a/a/a;->c:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x50

    iput v0, p0, Lg/a/a/a;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "images"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/a/a/a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2

    iget v0, p0, Lg/a/a/a;->a:I

    iget v1, p0, Lg/a/a/a;->b:I

    invoke-static {p1, v0, v1}, Lg/a/a/b;->c(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/io/File;)Ljava/io/File;
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lg/a/a/a;->c(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6

    iget v1, p0, Lg/a/a/a;->a:I

    iget v2, p0, Lg/a/a/a;->b:I

    iget-object v3, p0, Lg/a/a/a;->c:Landroid/graphics/Bitmap$CompressFormat;

    iget v4, p0, Lg/a/a/a;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lg/a/a/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lg/a/a/b;->b(Ljava/io/File;IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public d(I)Lg/a/a/a;
    .locals 0

    iput p1, p0, Lg/a/a/a;->b:I

    return-object p0
.end method

.method public e(I)Lg/a/a/a;
    .locals 0

    iput p1, p0, Lg/a/a/a;->a:I

    return-object p0
.end method
