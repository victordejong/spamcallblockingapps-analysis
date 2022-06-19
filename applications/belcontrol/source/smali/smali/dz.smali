.class public final Ldz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldz$g;,
        Ldz$e;,
        Ldz$c;,
        Ldz$d;,
        Ldz$f;,
        Ldz$b;,
        Ldz$h;,
        Ldz$i;
    }
.end annotation


# static fields
.field public static final c:Z

.field public static d:Ldz$e;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ldz$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaRouter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Ldz;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldz;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Ldz;->a:Landroid/content/Context;

    return-void
.end method

.method public static d()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The media router service must only be accessed on the application\'s main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static f()I
    .locals 1

    sget-object v0, Ldz;->d:Ldz$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ldz$e;->l()I

    move-result v0

    return v0
.end method

.method public static g(Landroid/content/Context;)Ldz;
    .locals 2

    if-eqz p0, :cond_1

    invoke-static {}, Ldz;->d()V

    sget-object v0, Ldz;->d:Ldz$e;

    if-nez v0, :cond_0

    new-instance v0, Ldz$e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ldz$e;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldz;->d:Ldz$e;

    invoke-virtual {v0}, Ldz$e;->H()V

    :cond_0
    sget-object v0, Ldz;->d:Ldz$e;

    invoke-virtual {v0, p0}, Ldz$e;->q(Landroid/content/Context;)Ldz;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l()Z
    .locals 1

    sget-object v0, Ldz;->d:Ldz$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ldz$e;->v()Z

    move-result v0

    return v0
.end method

.method public static n()Z
    .locals 1

    sget-object v0, Ldz;->d:Ldz$e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ldz$e;->z()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcz;Ldz$b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ldz;->b(Lcz;Ldz$b;I)V

    return-void
.end method

.method public b(Lcz;Ldz$b;I)V
    .locals 3

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    invoke-static {}, Ldz;->d()V

    sget-boolean v0, Ldz;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCallback: selector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p2}, Ldz;->e(Ldz$b;)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Ldz$c;

    invoke-direct {v0, p0, p2}, Ldz$c;-><init>(Ldz;Ldz$b;)V

    iget-object p2, p0, Ldz;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Ldz;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ldz$c;

    :goto_0
    const/4 p2, 0x0

    iget v1, v0, Ldz$c;->d:I

    const/4 v2, 0x1

    if-eq p3, v1, :cond_2

    iput p3, v0, Ldz$c;->d:I

    const/4 p2, 0x1

    :cond_2
    iget-object p3, v0, Ldz$c;->c:Lcz;

    invoke-virtual {p3, p1}, Lcz;->b(Lcz;)Z

    move-result p3

    if-nez p3, :cond_3

    new-instance p2, Lcz$a;

    iget-object p3, v0, Ldz$c;->c:Lcz;

    invoke-direct {p2, p3}, Lcz$a;-><init>(Lcz;)V

    invoke-virtual {p2, p1}, Lcz$a;->c(Lcz;)Lcz$a;

    invoke-virtual {p2}, Lcz$a;->d()Lcz;

    move-result-object p1

    iput-object p1, v0, Ldz$c;->c:Lcz;

    goto :goto_1

    :cond_3
    move v2, p2

    :goto_1
    if-eqz v2, :cond_4

    sget-object p1, Ldz;->d:Ldz$e;

    invoke-virtual {p1}, Ldz$e;->J()V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selector must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ldz$i;)V
    .locals 1

    invoke-static {}, Ldz;->d()V

    sget-object v0, Ldz;->d:Ldz$e;

    invoke-virtual {v0, p1}, Ldz$e;->f(Ldz$i;)V

    return-void
.end method

.method public final e(Ldz$b;)I
    .locals 3

    iget-object v0, p0, Ldz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ldz;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldz$c;

    iget-object v2, v2, Ldz$c;->b:Ldz$b;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public h()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    sget-object v0, Ldz;->d:Ldz$e;

    invoke-virtual {v0}, Ldz$e;->o()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljz;
    .locals 1

    invoke-static {}, Ldz;->d()V

    sget-object v0, Ldz;->d:Ldz$e;

    invoke-virtual {v0}, Ldz$e;->r()Ljz;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldz$i;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ldz;->d()V

    sget-object v0, Ldz;->d:Ldz$e;

    invoke-virtual {v0}, Ldz$e;->s()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public k()Ldz$i;
    .locals 1

    invoke-static {}, Ldz;->d()V

    sget-object v0, Ldz;->d:Ldz$e;

    invoke-virtual {v0}, Ldz$e;->t()Ldz$i;

    move-result-object v0

    return-object v0
.end method

.method public m(Lcz;I)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Ldz;->d()V

    sget-object v0, Ldz;->d:Ldz$e;

    invoke-virtual {v0, p1, p2}, Ldz$e;->w(Lcz;I)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selector must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(Ldz$b;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-static {}, Ldz;->d()V

    sget-boolean v0, Ldz;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCallback: callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Ldz;->e(Ldz$b;)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v0, p0, Ldz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object p1, Ldz;->d:Ldz$e;

    invoke-virtual {p1}, Ldz$e;->J()V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(Ldz$i;)V
    .locals 1

    invoke-static {}, Ldz;->d()V

    sget-object v0, Ldz;->d:Ldz$e;

    invoke-virtual {v0, p1}, Ldz$e;->C(Ldz$i;)V

    return-void
.end method

.method public q(Ldz$i;)V
    .locals 1

    invoke-static {}, Ldz;->d()V

    sget-object v0, Ldz;->d:Ldz$e;

    invoke-virtual {v0, p1}, Ldz$e;->I(Ldz$i;)V

    return-void
.end method

.method public r(I)V
    .locals 2

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    invoke-static {}, Ldz;->d()V

    sget-object v0, Ldz;->d:Ldz$e;

    invoke-virtual {v0}, Ldz$e;->h()Ldz$i;

    move-result-object v0

    sget-object v1, Ldz;->d:Ldz$e;

    invoke-virtual {v1}, Ldz$e;->t()Ldz$i;

    move-result-object v1

    if-eq v1, v0, :cond_0

    sget-object v1, Ldz;->d:Ldz$e;

    invoke-virtual {v1, v0, p1}, Ldz$e;->F(Ldz$i;I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported reason to unselect route"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
