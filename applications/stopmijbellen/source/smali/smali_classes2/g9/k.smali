.class public Lg9/k;
.super Lg9/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg9/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public c(Lg9/v;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lg9/v;->c:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Lg9/v;I)Lg9/x$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lg9/g;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 2
    iget-object v0, p1, Lg9/v;->c:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    .line 3
    invoke-static {p2}, Laa/o;->f(Ljava/io/InputStream;)Laa/y;

    move-result-object p2

    .line 4
    new-instance v0, Lg9/x$a;

    const/4 v1, 0x0

    sget-object v2, Lg9/s$d;->c:Lg9/s$d;

    iget-object p1, p1, Lg9/v;->c:Landroid/net/Uri;

    .line 5
    new-instance v3, Lx0/a;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lx0/a;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    .line 6
    invoke-virtual {v3, p1}, Lx0/a;->d(Ljava/lang/String;)Lx0/a$b;

    move-result-object p1

    const/4 v4, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    iget-object v3, v3, Lx0/a;->e:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v3}, Lx0/a$b;->f(Ljava/nio/ByteOrder;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :goto_0
    invoke-direct {v0, v1, p2, v2, v4}, Lg9/x$a;-><init>(Landroid/graphics/Bitmap;Laa/y;Lg9/s$d;I)V

    return-object v0
.end method
