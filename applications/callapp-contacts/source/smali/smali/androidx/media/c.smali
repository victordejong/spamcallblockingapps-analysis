.class Landroidx/media/c;
.super Landroidx/media/e;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroidx/media/e;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Landroidx/media/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroidx/media/b$c;)Z
    .locals 4

    .line 1052
    iget-object v0, p0, Landroidx/media/e;->b:Landroid/content/Context;

    .line 1046
    invoke-interface {p1}, Landroidx/media/b$c;->b()I

    move-result v1

    invoke-interface {p1}, Landroidx/media/b$c;->c()I

    move-result v2

    const-string v3, "android.permission.MEDIA_CONTENT_CONTROL"

    .line 1044
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 36
    invoke-super {p0, p1}, Landroidx/media/e;->a(Landroidx/media/b$c;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v1
.end method
