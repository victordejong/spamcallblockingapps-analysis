.class public Ly2/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lv2/e;

.field public final c:Lz2/c;

.field public final d:Ly2/t;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:La3/a;

.field public final g:Lb3/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv2/e;Lz2/c;Ly2/t;Ljava/util/concurrent/Executor;La3/a;Lb3/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly2/n;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ly2/n;->b:Lv2/e;

    .line 4
    iput-object p3, p0, Ly2/n;->c:Lz2/c;

    .line 5
    iput-object p4, p0, Ly2/n;->d:Ly2/t;

    .line 6
    iput-object p5, p0, Ly2/n;->e:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p6, p0, Ly2/n;->f:La3/a;

    .line 8
    iput-object p7, p0, Ly2/n;->g:Lb3/a;

    return-void
.end method


# virtual methods
.method public a(Lu2/i;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Ly2/n;->b:Lv2/e;

    invoke-virtual {p1}, Lu2/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lv2/e;->a(Ljava/lang/String;)Lv2/k;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v7, v1

    .line 2
    :cond_0
    :goto_0
    iget-object v1, p0, Ly2/n;->f:La3/a;

    new-instance v2, Ly2/m;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Ly2/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, La3/a;->d(La3/a$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3
    iget-object v1, p0, Ly2/n;->f:La3/a;

    new-instance v2, Ly2/f;

    invoke-direct {v2, p0, p1}, Ly2/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-interface {v1, v2}, La3/a;->d(La3/a$a;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/Iterable;

    .line 5
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    const-string v1, "Uploader"

    const-string v2, "Unknown backend for %s, deleting event batch for it..."

    .line 6
    invoke-static {v1, v2, p1}, Lj4/w0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Lv2/g;->a()Lv2/g;

    move-result-object v1

    goto :goto_2

    .line 8
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz2/h;

    .line 10
    invoke-virtual {v4}, Lz2/h;->a()Lu2/f;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p1}, Lu2/i;->c()[B

    move-result-object v2

    .line 12
    new-instance v4, Lv2/a;

    const/4 v6, 0x0

    invoke-direct {v4, v1, v2, v6}, Lv2/a;-><init>(Ljava/lang/Iterable;[BLv2/a$a;)V

    .line 13
    invoke-interface {v0, v4}, Lv2/k;->a(Lv2/f;)Lv2/g;

    move-result-object v1

    .line 14
    :goto_2
    invoke-virtual {v1}, Lv2/g;->c()I

    move-result v2

    const/4 v4, 0x2

    const/4 v9, 0x1

    if-ne v2, v4, :cond_4

    .line 15
    iget-object v0, p0, Ly2/n;->f:La3/a;

    new-instance v1, Ly2/h;

    move-object v3, v1

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Ly2/h;-><init>(Ly2/n;Ljava/lang/Iterable;Lu2/i;J)V

    invoke-interface {v0, v1}, La3/a;->d(La3/a$a;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Ly2/n;->d:Ly2/t;

    add-int/2addr p2, v9

    invoke-interface {v0, p1, p2, v9}, Ly2/t;->b(Lu2/i;IZ)V

    return-void

    .line 17
    :cond_4
    iget-object v2, p0, Ly2/n;->f:La3/a;

    new-instance v4, Ly2/k;

    invoke-direct {v4, p0, v5, v3}, Ly2/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v2, v4}, La3/a;->d(La3/a$a;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v1}, Lv2/g;->c()I

    move-result v2

    if-ne v2, v9, :cond_0

    .line 19
    invoke-virtual {v1}, Lv2/g;->b()J

    move-result-wide v1

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto/16 :goto_0

    .line 20
    :cond_5
    iget-object p2, p0, Ly2/n;->f:La3/a;

    new-instance v0, Ly2/j;

    invoke-direct {v0, p0, p1, v7, v8}, Ly2/j;-><init>(Ly2/n;Lu2/i;J)V

    invoke-interface {p2, v0}, La3/a;->d(La3/a$a;)Ljava/lang/Object;

    return-void
.end method
