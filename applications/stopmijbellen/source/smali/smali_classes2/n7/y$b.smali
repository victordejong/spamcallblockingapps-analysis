.class public Ln7/y$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln7/y;->b(Ln7/g$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ln7/w;

.field public b:Ljava/lang/String;

.field public final synthetic c:Ln7/g$c;


# direct methods
.method public constructor <init>(Ln7/y;Ln7/g$c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln7/y$b;->c:Ln7/g$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ln7/w;

    invoke-direct {p1}, Ln7/w;-><init>()V

    iput-object p1, p0, Ln7/y$b;->a:Ln7/w;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Ln7/y$b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Ln7/y$b;->b:Ljava/lang/String;

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Ln7/y$b;->a:Ln7/w;

    invoke-virtual {v0, p1}, Ln7/w;->c(Ljava/lang/String;)Ln7/w;

    goto/16 :goto_3

    .line 6
    :cond_1
    iget-object p1, p0, Ln7/y$b;->b:Ljava/lang/String;

    const-string v0, " "

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 7
    array-length v0, p1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_8

    .line 8
    iget-object v0, p0, Ln7/y$b;->c:Ln7/g$c;

    iget-object v0, v0, Ln7/g$c;->f:Ln7/g$i;

    iget-object v3, p0, Ln7/y$b;->a:Ln7/w;

    move-object v4, v0

    check-cast v4, Ln7/j;

    .line 9
    iput-object v3, v4, Ln7/j;->k:Ln7/w;

    const/4 v3, 0x0

    .line 10
    aget-object v4, p1, v3

    .line 11
    move-object v5, v0

    check-cast v5, Ln7/j;

    .line 12
    iput-object v4, v5, Ln7/j;->n:Ljava/lang/String;

    const/4 v5, 0x1

    .line 13
    aget-object v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    check-cast v0, Ln7/j;

    .line 14
    iput v6, v0, Ln7/j;->m:I

    .line 15
    iget-object v0, p0, Ln7/y$b;->c:Ln7/g$c;

    iget-object v6, v0, Ln7/g$c;->f:Ln7/g$i;

    array-length v7, p1

    if-ne v7, v1, :cond_2

    aget-object p1, p1, v2

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    check-cast v6, Ln7/j;

    .line 16
    iput-object p1, v6, Ln7/j;->o:Ljava/lang/String;

    .line 17
    iget-object p1, v0, Ln7/g$c;->h:Ll7/a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ll7/a;->a(Ljava/lang/Exception;)V

    .line 18
    iget-object p1, p0, Ln7/y$b;->c:Ln7/g$c;

    iget-object v1, p1, Ln7/g$c;->f:Ln7/g$i;

    check-cast v1, Ln7/j;

    .line 19
    iget-object v1, v1, Ln7/j;->j:Lk7/j;

    if-nez v1, :cond_3

    return-void

    .line 20
    :cond_3
    iget-object p1, p1, Ln7/g$e;->b:Ln7/h;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object p1, p0, Ln7/y$b;->c:Ln7/g$c;

    iget-object p1, p1, Ln7/g$c;->f:Ln7/g$i;

    check-cast p1, Ln7/j;

    .line 22
    iget p1, p1, Ln7/j;->m:I

    const/16 v2, 0x64

    if-lt p1, v2, :cond_4

    const/16 v2, 0xc7

    if-le p1, v2, :cond_6

    :cond_4
    const/16 v2, 0xcc

    if-eq p1, v2, :cond_6

    const/16 v2, 0x130

    if-ne p1, v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :cond_6
    :goto_1
    if-eqz v5, :cond_7

    .line 23
    invoke-interface {v1}, Lk7/j;->a()Lk7/h;

    move-result-object p1

    invoke-static {p1, v0}, Ln7/z$a;->p(Lk7/h;Ljava/lang/Exception;)Ln7/z$a;

    move-result-object p1

    goto :goto_2

    .line 24
    :cond_7
    invoke-static {v4}, Ln7/b0;->a(Ljava/lang/String;)Ln7/b0;

    iget-object p1, p0, Ln7/y$b;->a:Ln7/w;

    invoke-static {v1, p1, v3}, Ln7/z;->a(Lk7/m;Ln7/w;Z)Lk7/m;

    move-result-object p1

    .line 25
    :goto_2
    iget-object v0, p0, Ln7/y$b;->c:Ln7/g$c;

    iget-object v0, v0, Ln7/g$c;->f:Ln7/g$i;

    check-cast v0, Ln7/j;

    .line 26
    invoke-virtual {v0, p1}, Lk7/r;->o(Lk7/m;)V

    goto :goto_3

    .line 27
    :cond_8
    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not HTTP"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 28
    iget-object v0, p0, Ln7/y$b;->c:Ln7/g$c;

    iget-object v0, v0, Ln7/g$c;->h:Ll7/a;

    invoke-interface {v0, p1}, Ll7/a;->a(Ljava/lang/Exception;)V

    :goto_3
    return-void
.end method
