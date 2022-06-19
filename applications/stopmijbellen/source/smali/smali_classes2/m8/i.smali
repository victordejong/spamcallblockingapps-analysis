.class public Lm8/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static r:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lm8/g;

.field public final b:Landroid/view/View;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/TextView;

.field public final i:Landroid/widget/ImageView;

.field public final j:Landroid/view/View;

.field public final k:Landroid/view/View;

.field public final l:Landroid/view/View;

.field public final m:Landroid/view/View;

.field public final n:Landroid/view/View;

.field public final o:Landroid/view/View;

.field public p:Z

.field public final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lm8/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CutPasteId"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm8/i;->q:Ljava/util/ArrayList;

    .line 3
    new-instance v1, Lm8/g;

    invoke-direct {v1, p1, v0}, Lm8/g;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lm8/i;->a:Lm8/g;

    const v0, 0x7f090164

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 5
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 6
    sput-object p1, Lm8/i;->r:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lm8/i;->b:Landroid/view/View;

    const p1, 0x7f09027a

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lm8/i;->e:Landroid/widget/TextView;

    const p1, 0x7f0901e3

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lm8/i;->f:Landroid/widget/TextView;

    const p1, 0x7f0901e2

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lm8/i;->g:Landroid/widget/TextView;

    const p1, 0x7f0900c4

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lm8/i;->h:Landroid/widget/TextView;

    const p1, 0x7f0902a1

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lm8/i;->i:Landroid/widget/ImageView;

    const p1, 0x7f09017d

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lm8/i;->j:Landroid/view/View;

    const v1, 0x7f09017b

    .line 14
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lm8/i;->k:Landroid/view/View;

    const v2, 0x7f09017c

    .line 15
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lm8/i;->l:Landroid/view/View;

    const v3, 0x7f090270

    .line 16
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lm8/i;->m:Landroid/view/View;

    .line 17
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lm8/i;->n:Landroid/view/View;

    const v4, 0x7f09015b

    .line 18
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lm8/i;->o:Landroid/view/View;

    const/4 v4, 0x0

    .line 19
    iput-boolean v4, p0, Lm8/i;->p:Z

    .line 20
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const/16 v3, 0x8

    .line 21
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 22
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 23
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 24
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 25
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lm8/i;->r:Landroid/content/Context;

    invoke-static {v0}, Lf8/h;->c0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hy#Ut*PkU@385%d2"

    invoke-static {v1, v0}, Lf8/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ls6/k;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 2
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    .line 4
    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    const-string v2, "dt"

    .line 5
    invoke-virtual {v1, v2}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v2

    invoke-virtual {v2}, Ls6/i;->d()Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 8
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    .line 10
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual {v6, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 11
    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object/from16 v19, v6

    .line 12
    new-instance v2, Lm8/d;

    sget-object v8, Lm8/i;->r:Landroid/content/Context;

    iget-object v9, v0, Lm8/i;->c:Ljava/lang/String;

    const-string v3, "id"

    .line 13
    invoke-virtual {v1, v3}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v3

    invoke-virtual {v3}, Ls6/i;->a()I

    move-result v10

    const-string v3, "name"

    .line 14
    invoke-virtual {v1, v3}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v3

    invoke-virtual {v3}, Ls6/i;->d()Ljava/lang/String;

    move-result-object v11

    const-string v3, "text"

    .line 15
    invoke-virtual {v1, v3}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v3

    invoke-virtual {v3}, Ls6/i;->d()Ljava/lang/String;

    move-result-object v12

    const-string v3, "posnegrating"

    .line 16
    invoke-virtual {v1, v3}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v3

    invoke-virtual {v3}, Ls6/i;->a()I

    move-result v13

    const-string v3, "category"

    .line 17
    invoke-virtual {v1, v3}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v3

    invoke-virtual {v3}, Ls6/i;->a()I

    move-result v14

    const-string v3, "like"

    .line 18
    invoke-virtual {v1, v3}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v3

    invoke-virtual {v3}, Ls6/i;->a()I

    move-result v15

    const-string v3, "dislike"

    .line 19
    invoke-virtual {v1, v3}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v3

    invoke-virtual {v3}, Ls6/i;->a()I

    move-result v16

    const-string v3, "is_mine"

    .line 20
    invoke-virtual {v1, v3}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v3

    invoke-virtual {v3}, Ls6/i;->a()I

    move-result v17

    const-string v3, "myvote"

    .line 21
    invoke-virtual {v1, v3}, Ls6/k;->f(Ljava/lang/String;)Ls6/i;

    move-result-object v1

    invoke-virtual {v1}, Ls6/i;->a()I

    move-result v18

    move-object v7, v2

    invoke-direct/range {v7 .. v19}, Lm8/d;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIIILjava/util/Date;)V

    .line 22
    iget-object v1, v0, Lm8/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm8/i;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lm8/i;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lm8/i;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lm8/i;->k:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :try_start_0
    invoke-static {}, Lm8/i;->b()Ljava/lang/String;

    .line 6
    new-instance v0, Ls6/k;

    invoke-direct {v0}, Ls6/k;-><init>()V

    const-string v3, "number"

    .line 7
    iget-object v4, p0, Lm8/i;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v4}, Ls6/k;->e(Ljava/lang/Object;)Ls6/i;

    move-result-object v4

    .line 9
    iget-object v5, v0, Ls6/k;->a:Lt6/e;

    invoke-virtual {v5, v3, v4}, Lt6/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x10

    .line 10
    invoke-static {v3}, Lf8/g;->B(I)Ljava/lang/String;

    move-result-object v3

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0xd

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-static {}, Lm8/i;->b()Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Ls6/i;->toString()Ljava/lang/String;

    .line 15
    sget-object v6, Lm8/i;->r:Landroid/content/Context;

    invoke-static {v6}, Lw7/e;->b(Landroid/content/Context;)Lz7/c;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-static {}, Lm8/i;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "get.php"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v6, Lw7/p;

    invoke-virtual {v6, v7}, Lw7/p;->j(Ljava/lang/String;)Ljava/lang/Object;

    const-string v7, "deviceid"

    sget-object v8, Lm8/i;->r:Landroid/content/Context;

    .line 17
    invoke-static {v8}, Lf8/g;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    const-string v7, "data"

    .line 18
    invoke-interface {v6, v7, v3}, Lz7/a;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    const/16 v3, 0x3a98

    .line 19
    invoke-interface {v6, v3}, Lz7/a;->e(I)Lz7/a;

    const-string v3, "body"

    .line 20
    invoke-virtual {v0}, Ls6/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lg8/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ls6/k;

    move-result-object v0

    invoke-interface {v6, v0}, Lz7/a;->b(Ls6/k;)Ljava/lang/Object;

    check-cast v6, Lz7/b;

    .line 21
    invoke-interface {v6}, Lz7/b;->d()Lc8/a;

    move-result-object v0

    new-instance v3, Lm8/h;

    invoke-direct {v3, p0, v5}, Lm8/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    check-cast v0, Lm7/g;

    invoke-virtual {v0, v3}, Lm7/g;->k(Lm7/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    iget-object v0, p0, Lm8/i;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    iget-object v0, p0, Lm8/i;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lm8/i;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public d()Lm8/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lm8/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm8/i;->q:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm8/d;

    :goto_0
    return-object v0
.end method

.method public e()V
    .locals 24

    move-object/from16 v0, p0

    .line 1
    new-instance v7, Lcom/mglab/scm/visual/c;

    sget-object v1, Lm8/i;->r:Landroid/content/Context;

    iget-object v2, v0, Lm8/i;->b:Landroid/view/View;

    invoke-direct {v7, v1, v2}, Lcom/mglab/scm/visual/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2
    iget-object v1, v0, Lm8/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm8/d;

    .line 3
    invoke-virtual {v2}, Lm8/d;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    xor-int/lit8 v10, v1, 0x1

    .line 4
    iget-object v1, v0, Lm8/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm8/d;

    .line 5
    invoke-virtual {v2}, Lm8/d;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v11, v2

    goto/16 :goto_3

    :cond_3
    const-string v1, ""

    .line 6
    iget-object v2, v0, Lm8/i;->c:Ljava/lang/String;

    new-array v3, v8, [Lx8/a;

    .line 7
    new-instance v4, Lw8/o;

    invoke-direct {v4, v3}, Lw8/o;-><init>([Lx8/a;)V

    .line 8
    const-class v3, Lh8/c;

    .line 9
    new-instance v5, Lw8/g;

    invoke-direct {v5, v4, v3}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v3, v9, [Lw8/n;

    .line 10
    sget-object v4, Lh8/d;->j:Lx8/b;

    const/4 v6, -0x1

    .line 11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lx8/b;->g(Ljava/lang/Object;)Lw8/k;

    move-result-object v4

    aput-object v4, v3, v8

    .line 12
    new-instance v4, Lw8/r;

    invoke-direct {v4, v5, v3}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 13
    invoke-virtual {v4}, Lw8/r;->l()Ljava/util/List;

    move-result-object v3

    .line 14
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lh8/c;

    .line 15
    iget-object v5, v4, Lh8/c;->c:Ljava/lang/String;

    invoke-static {v5, v2}, Lh8/q;->y(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_7

    .line 16
    iget-object v2, v4, Lh8/c;->d:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object v1, v2

    .line 17
    :cond_6
    iget v2, v4, Lh8/c;->f:I

    move-object v15, v1

    move/from16 v18, v2

    goto :goto_2

    :cond_7
    move-object v15, v1

    const/16 v18, 0x1

    .line 18
    :goto_2
    new-instance v2, Lm8/d;

    sget-object v12, Lm8/i;->r:Landroid/content/Context;

    iget-object v13, v0, Lm8/i;->c:Ljava/lang/String;

    const/4 v14, 0x0

    const/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    new-instance v23, Ljava/util/Date;

    invoke-direct/range {v23 .. v23}, Ljava/util/Date;-><init>()V

    const-string v16, ""

    move-object v11, v2

    invoke-direct/range {v11 .. v23}, Lm8/d;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIIILjava/util/Date;)V

    :goto_3
    if-eqz v10, :cond_8

    .line 19
    iget-object v1, v7, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110202

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 20
    :cond_8
    iget-object v1, v7, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1101f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    move-object v5, v1

    .line 21
    iget-object v1, v7, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lf8/h;->H(Landroid/content/Context;)Z

    move-result v12

    .line 22
    new-instance v13, Le2/g$a;

    iget-object v1, v7, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-direct {v13, v1}, Le2/g$a;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object v5, v13, Le2/g$a;->b:Ljava/lang/CharSequence;

    const v1, 0x7f06005b

    .line 24
    invoke-virtual {v13, v1}, Le2/g$a;->l(I)Le2/g$a;

    const v1, 0x108003e

    .line 25
    invoke-virtual {v13, v1}, Le2/g$a;->e(I)Le2/g$a;

    const v1, 0x7f06005e

    if-eqz v12, :cond_9

    const v2, 0x7f06005e

    goto :goto_5

    :cond_9
    const v2, 0x7f060033

    .line 26
    :goto_5
    invoke-virtual {v13, v2}, Le2/g$a;->c(I)Le2/g$a;

    if-eqz v12, :cond_a

    const v1, 0x7f060091

    .line 27
    :cond_a
    invoke-virtual {v13, v1}, Le2/g$a;->a(I)Le2/g$a;

    .line 28
    iput-boolean v8, v13, Le2/g$a;->y:Z

    .line 29
    iput-boolean v8, v13, Le2/g$a;->z:Z

    const v1, 0x7f0c004f

    .line 30
    invoke-virtual {v13, v1, v9}, Le2/g$a;->d(IZ)Le2/g$a;

    const v1, 0x7f11018f

    .line 31
    invoke-virtual {v13, v1}, Le2/g$a;->i(I)Le2/g$a;

    new-instance v14, Lo8/e0;

    move-object v1, v14

    move-object v2, v7

    move-object v3, v11

    move v4, v10

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lo8/e0;-><init>(Lcom/mglab/scm/visual/c;Lm8/d;ZLjava/lang/String;Z)V

    .line 32
    iput-object v14, v13, Le2/g$a;->u:Le2/g$c;

    const v1, 0x7f11006e

    .line 33
    invoke-virtual {v13, v1}, Le2/g$a;->g(I)Le2/g$a;

    move-result-object v1

    invoke-virtual {v1}, Le2/g$a;->j()Le2/g;

    move-result-object v1

    sput-object v1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    .line 34
    sget-object v2, Le2/b;->a:Le2/b;

    invoke-virtual {v1, v2}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    if-nez v10, :cond_b

    .line 35
    sget-object v1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    sget-object v2, Le2/b;->b:Le2/b;

    const v3, 0x7f110096

    invoke-virtual {v1, v2, v3}, Le2/g;->h(Le2/b;I)V

    .line 36
    sget-object v1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    invoke-virtual {v1, v2}, Le2/g;->c(Le2/b;)Lcom/afollestad/materialdialogs/internal/MDButton;

    move-result-object v1

    new-instance v2, Lo8/a0;

    invoke-direct {v2, v7, v12, v11}, Lo8/a0;-><init>(Lcom/mglab/scm/visual/c;ZLm8/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    :cond_b
    sget-object v1, Lcom/mglab/scm/visual/c;->k:Le2/g;

    .line 38
    iget-object v1, v1, Le2/g;->c:Le2/g$a;

    iget-object v1, v1, Le2/g$a;->o:Landroid/view/View;

    const v2, 0x7f090249

    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    .line 40
    iget-object v3, v7, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1100b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {v2, v3}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->setFloatingLabelText(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, v7, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    const v5, 0x1090003

    .line 44
    invoke-static {}, Lh8/q;->p()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 45
    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v3, 0x7f090354

    .line 46
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;

    .line 47
    iget-object v4, v7, Lcom/mglab/scm/visual/c;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1100ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v3, v4}, Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;->setFloatingLabelText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0902a1

    .line 50
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0900c5

    .line 51
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 52
    iget v6, v11, Lm8/d;->g:I

    .line 53
    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    const v5, 0x7f09029f

    .line 54
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 55
    iget v5, v11, Lm8/d;->f:I

    add-int/lit8 v6, v5, 0x1

    .line 56
    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 57
    invoke-virtual {v1, v9}, Landroid/widget/Spinner;->setEnabled(Z)V

    if-eq v5, v9, :cond_d

    const/4 v6, 0x2

    if-eq v5, v6, :cond_c

    const v5, 0x7f080116

    .line 58
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_c
    const v5, 0x7f080117

    .line 59
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_d
    const v5, 0x7f080118

    .line 60
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    :goto_6
    new-instance v5, Lo8/g0;

    invoke-direct {v5, v7, v4}, Lo8/g0;-><init>(Lcom/mglab/scm/visual/c;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 62
    new-instance v1, Lo8/h0;

    invoke-direct {v1, v7, v2}, Lo8/h0;-><init>(Lcom/mglab/scm/visual/c;Lcom/rengwuxian/materialedittext/MaterialAutoCompleteTextView;)V

    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 63
    iget-object v1, v11, Lm8/d;->d:Ljava/lang/String;

    .line 64
    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, v11, Lm8/d;->e:Ljava/lang/String;

    .line 66
    invoke-virtual {v3, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, v11, Lm8/d;->d:Ljava/lang/String;

    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 69
    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    :cond_e
    return-void
.end method

.method public f()V
    .locals 10

    .line 1
    iget-object v0, p0, Lm8/i;->a:Lm8/g;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 2
    iget-object v0, p0, Lm8/i;->m:Landroid/view/View;

    iget-object v1, p0, Lm8/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lm8/i;->n:Landroid/view/View;

    iget-object v1, p0, Lm8/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lm8/i;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lm8/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lm8/i;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lm8/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lm8/i;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lm8/i;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lm8/i;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lm8/i;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 8
    fill-array-data v1, :array_0

    .line 9
    iget-object v4, p0, Lm8/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm8/d;

    .line 10
    iget v7, v5, Lm8/d;->g:I

    .line 11
    aget v8, v1, v7

    invoke-virtual {v5}, Lm8/d;->d()I

    move-result v5

    add-int/2addr v5, v6

    add-int/2addr v5, v8

    aput v5, v1, v7

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_5
    if-ge v4, v0, :cond_6

    .line 12
    aget v7, v1, v4

    .line 13
    aget v7, v1, v4

    aget v8, v1, v5

    if-lt v7, v8, :cond_5

    move v5, v4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 14
    :cond_6
    iget-object v0, p0, Lm8/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lm8/d;

    .line 15
    iget v8, v7, Lm8/d;->g:I

    if-ne v8, v5, :cond_7

    .line 16
    invoke-virtual {v7}, Lm8/d;->d()I

    move-result v8

    add-int/2addr v8, v6

    add-int/2addr v4, v8

    .line 17
    :cond_7
    invoke-virtual {v7}, Lm8/d;->d()I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v1, v7

    goto :goto_6

    :cond_8
    if-nez v1, :cond_9

    const/4 v4, 0x0

    goto :goto_7

    :cond_9
    mul-int/lit8 v4, v4, 0x64

    .line 18
    div-int/2addr v4, v1

    .line 19
    :goto_7
    iget-object v0, p0, Lm8/i;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lm8/i;->r:Landroid/content/Context;

    .line 20
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f030001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 21
    aget-object v5, v7, v5

    .line 22
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "%)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lm8/i;->h:Landroid/widget/TextView;

    if-nez v4, :cond_a

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lm8/i;->i:Landroid/widget/ImageView;

    .line 25
    iget-object v1, p0, Lm8/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lm8/d;

    .line 26
    iget v9, v7, Lm8/d;->f:I

    if-eq v9, v8, :cond_d

    if-eqz v9, :cond_c

    if-eq v9, v6, :cond_b

    goto :goto_9

    .line 27
    :cond_b
    invoke-virtual {v7}, Lm8/d;->d()I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v5, v7

    goto :goto_9

    .line 28
    :cond_c
    invoke-virtual {v7}, Lm8/d;->d()I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v2, v7

    goto :goto_9

    .line 29
    :cond_d
    invoke-virtual {v7}, Lm8/d;->d()I

    move-result v7

    add-int/2addr v7, v6

    add-int/2addr v4, v7

    goto :goto_9

    :cond_e
    if-lt v2, v4, :cond_f

    if-lt v2, v5, :cond_f

    goto :goto_a

    :cond_f
    if-lt v4, v2, :cond_10

    if-lt v4, v5, :cond_10

    const/4 v3, -0x1

    goto :goto_a

    :cond_10
    const/4 v3, 0x1

    :goto_a
    if-eq v3, v8, :cond_12

    if-eq v3, v6, :cond_11

    const v1, 0x7f080118

    goto :goto_b

    :cond_11
    const v1, 0x7f080117

    goto :goto_b

    :cond_12
    const v1, 0x7f080116

    .line 30
    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lm8/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lm8/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm8/d;

    invoke-virtual {v1}, Lm8/d;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lm8/i;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
