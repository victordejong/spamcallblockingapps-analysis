.class public Lrm0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrm0$b;,
        Lrm0$c;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/net/Uri;

.field public c:Lrm0$c;

.field public d:Z

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lrm0$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lrm0$b;->a(Lrm0$b;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lrm0;->a:Landroid/content/Context;

    invoke-static {p1}, Lrm0$b;->b(Lrm0$b;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lrm0;->b:Landroid/net/Uri;

    invoke-static {p1}, Lrm0$b;->c(Lrm0$b;)Lrm0$c;

    move-result-object v0

    iput-object v0, p0, Lrm0;->c:Lrm0$c;

    invoke-static {p1}, Lrm0$b;->d(Lrm0$b;)Z

    move-result v0

    iput-boolean v0, p0, Lrm0;->d:Z

    invoke-static {p1}, Lrm0$b;->e(Lrm0$b;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lrm0$b;->e(Lrm0$b;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lrm0;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lrm0$b;Lrm0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lrm0;-><init>(Lrm0$b;)V

    return-void
.end method

.method public static e(Ljava/lang/String;IILjava/lang/String;)Landroid/net/Uri;
    .locals 5

    const-string v0, "userId"

    invoke-static {p0, v0}, Lgn0;->m(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Either width or height must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {}, Lcn0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lui0;->q()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    aput-object p0, v3, v0

    const-string p0, "%s/%s/picture"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    if-eqz p2, :cond_2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "height"

    invoke-virtual {p0, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    const-string p1, "migration_overrides"

    const-string p2, "{october_2012:true}"

    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {p3}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "access_token"

    invoke-virtual {p0, p1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lrm0$c;
    .locals 1

    iget-object v0, p0, Lrm0;->c:Lrm0$c;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lrm0;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lrm0;->a:Landroid/content/Context;

    return-object v0
.end method

.method public d()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lrm0;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lrm0;->d:Z

    return v0
.end method
