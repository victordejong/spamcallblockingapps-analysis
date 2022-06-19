.class public final Lym0$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lym0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/UUID;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Landroid/graphics/Bitmap;

.field public e:Landroid/net/Uri;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lym0$b;->a:Ljava/util/UUID;

    iput-object p2, p0, Lym0$b;->d:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lym0$b;->e:Landroid/net/Uri;

    const/4 v0, 0x1

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v1, "content"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lym0$b;->f:Z

    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    const-string p3, "media"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p3}, Lfn0;->S(Landroid/net/Uri;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lri0;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported scheme for media Uri : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lri0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eqz p2, :cond_7

    :goto_0
    iput-boolean v0, p0, Lym0$b;->g:Z

    :goto_1
    iget-boolean p2, p0, Lym0$b;->g:Z

    if-nez p2, :cond_5

    const/4 p2, 0x0

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    iput-object p2, p0, Lym0$b;->c:Ljava/lang/String;

    iget-boolean p3, p0, Lym0$b;->g:Z

    if-nez p3, :cond_6

    iget-object p1, p0, Lym0$b;->e:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    invoke-static {}, Lui0;->f()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/facebook/FacebookContentProvider;->a(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lym0$b;->b:Ljava/lang/String;

    return-void

    :cond_7
    new-instance p1, Lri0;

    const-string p2, "Cannot share media without a bitmap or Uri set"

    invoke-direct {p1, p2}, Lri0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;Lym0$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lym0$b;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic a(Lym0$b;)Z
    .locals 0

    iget-boolean p0, p0, Lym0$b;->g:Z

    return p0
.end method

.method public static synthetic b(Lym0$b;)Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lym0$b;->a:Ljava/util/UUID;

    return-object p0
.end method

.method public static synthetic c(Lym0$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lym0$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lym0$b;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lym0$b;->d:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic e(Lym0$b;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lym0$b;->e:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic f(Lym0$b;)Z
    .locals 0

    iget-boolean p0, p0, Lym0$b;->f:Z

    return p0
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lym0$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lym0$b;->e:Landroid/net/Uri;

    return-object v0
.end method
