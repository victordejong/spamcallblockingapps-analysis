.class public Ld2/g1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/h2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/g1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/g1;


# direct methods
.method public constructor <init>(Ld2/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/g1$a;->a:Ld2/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/h2;Ld2/t0;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld2/h2;",
            "Ld2/t0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Ld2/g1$a;->a:Ld2/g1;

    iget-object p2, p2, Ld2/g1;->a:Ld2/f1;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "sha1"

    const-string v0, "url"

    const-string v1, "controller"

    .line 3
    iget-boolean v2, p1, Ld2/h2;->m:Z

    if-eqz v2, :cond_8

    .line 4
    iget-object p1, p1, Ld2/h2;->l:Ljava/lang/String;

    const-string v2, "Parsing launch response"

    invoke-static {p1, v2}, Ld2/e4;->d(Ljava/lang/String;Ljava/lang/String;)Ld2/f4;

    move-result-object p1

    .line 5
    invoke-virtual {p2}, Ld2/f1;->m()Ld2/b2;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sdkVersion"

    const-string v3, "4.6.5"

    invoke-static {p1, v2, v3}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Ld2/f1;->h:Ld2/o2;

    .line 7
    iget-object v3, v3, Ld2/o2;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ld2/e4;->s(Ld2/f4;Ljava/lang/String;)Z

    .line 9
    :try_start_0
    invoke-virtual {p1, v1}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    iput-object v4, p2, Ld2/f1;->w:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, p3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    iput-object v2, p2, Ld2/f1;->x:Ljava/lang/String;

    const-string v2, "status"

    .line 14
    invoke-virtual {p1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    iput-object v2, p2, Ld2/f1;->y:Ljava/lang/String;

    .line 16
    invoke-virtual {p2, p1}, Ld2/f1;->k(Ld2/f4;)V

    .line 17
    invoke-static {}, Ld2/o;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    invoke-static {}, Ld2/o;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 19
    :catch_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Ld2/f1;->h:Ld2/o2;

    .line 20
    iget-object v5, v5, Ld2/o2;->a:Ljava/lang/String;

    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    .line 23
    :cond_0
    :goto_0
    iget-object v2, p2, Ld2/f1;->y:Ljava/lang/String;

    const-string v3, "disable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    sget-boolean v2, Ld2/x3;->R:Z

    if-nez v2, :cond_1

    .line 24
    :try_start_2
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Ld2/f1;->h:Ld2/o2;

    .line 25
    iget-object v7, v7, Ld2/o2;->a:Ljava/lang/String;

    .line 26
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 28
    :catch_2
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    invoke-virtual {v2}, Ld2/f1;->p()Ld2/h0;

    move-result-object v2

    const-string v6, "Launch server response with disabled status. Disabling AdColony until next launch."

    .line 29
    invoke-virtual {v2, v5, v4, v6, v4}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 30
    invoke-static {}, Ld2/b;->i()Z

    goto :goto_1

    .line 31
    :cond_1
    iget-object v2, p2, Ld2/f1;->w:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p2, Ld2/f1;->y:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget-boolean v2, Ld2/x3;->R:Z

    if-nez v2, :cond_3

    const-string v2, "Missing controller status or URL. Disabling AdColony until next launch."

    .line 32
    invoke-static {v5, v5, v2, v4}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :goto_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_4

    .line 33
    iget-boolean p1, p2, Ld2/f1;->F:Z

    if-nez p1, :cond_9

    const-string p1, "Incomplete or disabled launch server response. Disabling AdColony until next launch."

    .line 34
    invoke-static {v5, v5, p1, v5}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 35
    iput-boolean v4, p2, Ld2/f1;->C:Z

    goto :goto_4

    .line 36
    :cond_4
    iget-boolean v2, p2, Ld2/f1;->F:Z

    if-nez v2, :cond_5

    goto :goto_3

    .line 37
    :cond_5
    iget-object v2, p2, Ld2/f1;->t:Ld2/f4;

    if-eqz v2, :cond_6

    .line 38
    invoke-virtual {v2, v1}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v2

    .line 39
    invoke-virtual {v2, p3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {p1, v1}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v1

    .line 41
    invoke-virtual {v1, p3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 42
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    const-string p3, "Controller sha1 does not match, downloading new controller."

    .line 43
    invoke-static {v5, v4, p3, v4}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :goto_3
    if-eqz v4, :cond_7

    .line 44
    new-instance p3, Ld2/f4;

    invoke-direct {p3}, Ld2/f4;-><init>()V

    .line 45
    iget-object v1, p2, Ld2/f1;->w:Ljava/lang/String;

    invoke-static {p3, v0, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Ld2/f1;->h:Ld2/o2;

    .line 47
    iget-object v1, v1, Ld2/o2;->a:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "filepath"

    invoke-static {p3, v1, v0}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    iget-object v0, p2, Ld2/f1;->b:Ld2/p2;

    new-instance v1, Ld2/h2;

    new-instance v2, Ld2/t0;

    const-string v3, "WebServices.download"

    invoke-direct {v2, v3, v5, p3}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    new-instance p3, Ld2/i1;

    invoke-direct {p3, p2}, Ld2/i1;-><init>(Ld2/f1;)V

    invoke-direct {v1, v2, p3}, Ld2/h2;-><init>(Ld2/t0;Ld2/h2$a;)V

    invoke-virtual {v0, v1}, Ld2/p2;->b(Ld2/h2;)V

    .line 50
    :cond_7
    iput-object p1, p2, Ld2/f1;->t:Ld2/f4;

    goto :goto_4

    .line 51
    :cond_8
    invoke-virtual {p2}, Ld2/f1;->f()V

    :cond_9
    :goto_4
    return-void
.end method
