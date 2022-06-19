.class public Lqf;
.super Lsf;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lsf;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lsf;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lpf$c;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lqf;->e(Lpf$c;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lsf;->a(Lpf$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final e(Lpf$c;)Z
    .locals 3

    invoke-virtual {p0}, Lsf;->b()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1}, Lpf$c;->b()I

    move-result v1

    invoke-interface {p1}, Lpf$c;->a()I

    move-result p1

    const-string v2, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v0, v2, v1, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
