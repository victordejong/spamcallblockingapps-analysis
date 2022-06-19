.class public Ld2/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/support/v4/media/a;

.field public b:Lf/t;

.field public c:Lx2/f;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "La7/h;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ld2/f4;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld2/t1;->d:Ljava/util/List;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Ld2/t1;->e:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Ld2/t1;->f:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Ld2/t1;->n:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Ld2/t1;->o:Ljava/lang/String;

    const-string v1, "ad_unit_type"

    .line 7
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    const-string v2, "ad_type"

    .line 8
    invoke-virtual {p1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v4, :cond_4

    const-string v1, "video"

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "display"

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "banner_display"

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "interstitial_display"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    .line 12
    :cond_4
    iget v1, p0, Ld2/t1;->e:I

    .line 13
    :goto_1
    iput v1, p0, Ld2/t1;->e:I

    const-string v1, "skippable"

    .line 14
    invoke-static {p1, v1}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Ld2/t1;->j:Z

    const-string v1, "skip_offset"

    .line 15
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ld2/t1;->l:I

    const-string v1, "video_duration"

    .line 16
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Ld2/t1;->m:I

    const-string v1, "js_resources"

    .line 17
    invoke-static {p1, v1}, Ld2/e4;->c(Ld2/f4;Ljava/lang/String;)Ld2/d4;

    move-result-object v1

    const-string v2, "verification_params"

    .line 18
    invoke-static {p1, v2}, Ld2/e4;->c(Ld2/f4;Ljava/lang/String;)Ld2/d4;

    move-result-object v2

    const-string v5, "vendor_keys"

    .line 19
    invoke-static {p1, v5}, Ld2/e4;->c(Ld2/f4;Ljava/lang/String;)Ld2/d4;

    move-result-object v5

    .line 20
    iput-object p2, p0, Ld2/t1;->o:Ljava/lang/String;

    const/4 p2, 0x0

    .line 21
    :goto_2
    invoke-virtual {v1}, Ld2/d4;->c()I

    move-result v6

    if-ge p2, v6, :cond_7

    .line 22
    :try_start_0
    invoke-virtual {v2, p2}, Ld2/d4;->e(I)Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-virtual {v5, p2}, Ld2/d4;->e(I)Ljava/lang/String;

    move-result-object v7

    .line 24
    new-instance v8, Ljava/net/URL;

    .line 25
    invoke-virtual {v1, p2}, Ld2/d4;->e(I)Ljava/lang/String;

    move-result-object v9

    .line 26
    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "VendorKey is null or empty"

    .line 28
    invoke-static {v7, v9}, Li4/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "VerificationParameters is null or empty"

    invoke-static {v6, v9}, Li4/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, La7/h;

    invoke-direct {v9, v7, v8, v6}, La7/h;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_3

    .line 29
    :cond_5
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_6

    .line 30
    new-instance v9, La7/h;

    invoke-direct {v9, v7, v8, v7}, La7/h;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_3

    .line 31
    :cond_6
    new-instance v9, La7/h;

    invoke-direct {v9, v7, v8, v7}, La7/h;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 32
    :goto_3
    iget-object v6, p0, Ld2/t1;->d:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string v6, "Invalid js resource url passed to Omid"

    .line 33
    invoke-static {v3, v3, v6, v4}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 34
    :cond_7
    :try_start_1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p2

    .line 35
    invoke-virtual {p2}, Ld2/f1;->o()Ld2/h3;

    move-result-object p2

    const-string v0, "filepath"

    .line 36
    invoke-virtual {p1, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p2, p1, v4}, Ld2/h3;->a(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld2/t1;->n:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    const-string p1, "Error loading IAB JS Client"

    .line 38
    invoke-static {v3, v3, p1, v4}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :goto_5
    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Ld2/t1;->e:I

    if-ltz v1, :cond_4

    iget-object v1, v0, Ld2/t1;->n:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, ""

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Ld2/t1;->d:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 4
    iget v1, v0, Ld2/t1;->e:I

    if-ne v1, v2, :cond_4

    .line 5
    :cond_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v1

    .line 6
    sget-object v3, La7/g;->b:La7/g;

    .line 7
    sget-object v4, La7/f;->c:La7/f;

    .line 8
    iget v5, v0, Ld2/t1;->e:I

    const-string v6, "inject_javascript"

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    const/4 v9, 0x1

    if-eq v5, v9, :cond_2

    if-eq v5, v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    sget-object v2, La7/d;->c:La7/d;

    .line 10
    iget-object v10, v1, Ld2/f1;->O:Ld2/m;

    const-string v1, "Partner is null"

    .line 11
    invoke-static {v10, v1}, Li4/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "WebView is null"

    move-object/from16 v5, p1

    invoke-static {v5, v1}, Li4/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, La7/b;

    sget-object v16, La7/c;->b:La7/c;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-string v14, ""

    move-object v9, v1

    move-object/from16 v11, p1

    invoke-direct/range {v9 .. v16}, La7/b;-><init>(Ld2/m;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;La7/c;)V

    .line 12
    invoke-static {v2, v4, v3, v8, v7}, La7/a;->a(La7/d;La7/f;La7/g;La7/g;Z)La7/a;

    move-result-object v2

    .line 13
    invoke-static {v2, v1}, Landroid/support/v4/media/a;->m(La7/a;La7/b;)Landroid/support/v4/media/a;

    move-result-object v1

    iput-object v1, v0, Ld2/t1;->a:Landroid/support/v4/media/a;

    .line 14
    check-cast v1, La7/i;

    .line 15
    iget-object v1, v1, La7/i;->h:Ljava/lang/String;

    .line 16
    iput-object v1, v0, Ld2/t1;->f:Ljava/lang/String;

    goto :goto_0

    .line 17
    :cond_2
    sget-object v2, La7/d;->d:La7/d;

    .line 18
    iget-object v1, v1, Ld2/f1;->O:Ld2/m;

    .line 19
    iget-object v5, v0, Ld2/t1;->n:Ljava/lang/String;

    iget-object v9, v0, Ld2/t1;->d:Ljava/util/List;

    .line 20
    invoke-static {v1, v5, v9, v8, v8}, La7/b;->a(Ld2/m;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)La7/b;

    move-result-object v1

    .line 21
    invoke-static {v2, v4, v3, v8, v7}, La7/a;->a(La7/d;La7/f;La7/g;La7/g;Z)La7/a;

    move-result-object v2

    .line 22
    invoke-static {v2, v1}, Landroid/support/v4/media/a;->m(La7/a;La7/b;)Landroid/support/v4/media/a;

    move-result-object v1

    iput-object v1, v0, Ld2/t1;->a:Landroid/support/v4/media/a;

    .line 23
    check-cast v1, La7/i;

    .line 24
    iget-object v1, v1, La7/i;->h:Ljava/lang/String;

    .line 25
    iput-object v1, v0, Ld2/t1;->f:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v6}, Ld2/t1;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_3
    sget-object v2, La7/d;->e:La7/d;

    .line 28
    iget-object v1, v1, Ld2/f1;->O:Ld2/m;

    .line 29
    iget-object v5, v0, Ld2/t1;->n:Ljava/lang/String;

    iget-object v9, v0, Ld2/t1;->d:Ljava/util/List;

    .line 30
    invoke-static {v1, v5, v9, v8, v8}, La7/b;->a(Ld2/m;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)La7/b;

    move-result-object v1

    .line 31
    invoke-static {v2, v4, v3, v3, v7}, La7/a;->a(La7/d;La7/f;La7/g;La7/g;Z)La7/a;

    move-result-object v2

    .line 32
    invoke-static {v2, v1}, Landroid/support/v4/media/a;->m(La7/a;La7/b;)Landroid/support/v4/media/a;

    move-result-object v1

    iput-object v1, v0, Ld2/t1;->a:Landroid/support/v4/media/a;

    .line 33
    check-cast v1, La7/i;

    .line 34
    iget-object v1, v1, La7/i;->h:Ljava/lang/String;

    .line 35
    iput-object v1, v0, Ld2/t1;->f:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v6}, Ld2/t1;->e(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b(Ld2/j0;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Ld2/t1;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Ld2/t1;->e:I

    if-ltz v0, :cond_15

    iget-object v0, p0, Ld2/t1;->a:Landroid/support/v4/media/a;

    if-eqz v0, :cond_15

    .line 3
    sget-object v0, La7/e;->b:La7/e;

    const-string v1, "register_ad_view"

    invoke-virtual {p0, v1}, Ld2/t1;->e(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v1

    .line 5
    iget-object v1, v1, Ld2/f1;->v:Ljava/util/HashMap;

    .line 6
    iget v2, p1, Ld2/j0;->k:I

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/x3;

    if-nez v1, :cond_1

    .line 8
    iget-object v2, p1, Ld2/j0;->c:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    iget-object v1, p1, Ld2/j0;->c:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/x3;

    .line 12
    :cond_1
    iget-object v2, p0, Ld2/t1;->a:Landroid/support/v4/media/a;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v2, v1}, Landroid/support/v4/media/a;->J(Landroid/view/View;)V

    .line 14
    iget-object p1, v1, Ld2/x3;->N:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    .line 15
    iget-object v1, v1, Ld2/x3;->L:Ld2/j0;

    .line 16
    iget-object v1, v1, Ld2/j0;->x:Landroid/support/v4/media/a;

    if-eqz v1, :cond_5

    .line 17
    :try_start_0
    invoke-virtual {v1, p1, v0, v3}, Landroid/support/v4/media/a;->f(Landroid/view/View;La7/e;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_5

    .line 18
    invoke-virtual {v2, p1}, Landroid/support/v4/media/a;->J(Landroid/view/View;)V

    .line 19
    iget-object v1, p0, Ld2/t1;->a:Landroid/support/v4/media/a;

    .line 20
    iput-object v1, p1, Ld2/j0;->x:Landroid/support/v4/media/a;

    .line 21
    iget-object v2, p1, Ld2/j0;->g:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 22
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 23
    check-cast v2, Ljava/util/Map$Entry;

    .line 24
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2, v0}, Ld2/j0;->a(Landroid/view/View;La7/e;)V

    goto :goto_0

    :cond_4
    :goto_1
    const-string p1, "register_obstructions"

    .line 25
    invoke-virtual {p0, p1}, Ld2/t1;->e(Ljava/lang/String;)V

    .line 26
    :cond_5
    :goto_2
    new-instance p1, Ld2/u1;

    invoke-direct {p1, p0}, Ld2/u1;-><init>(Ld2/t1;)V

    .line 27
    sget-object v0, Ld2/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 28
    sget-boolean v0, Ld2/t;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    const-string p1, "Ignoring call to AdColony.addCustomMessageListener as AdColony has not yet been configured."

    .line 29
    invoke-static {v1, v2, p1, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    goto :goto_3

    :cond_6
    const-string v0, "viewability_ad_event"

    .line 30
    invoke-static {v0}, Ld2/i3;->z(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string p1, "Ignoring call to AdColony.addCustomMessageListener."

    .line 31
    invoke-static {v1, v2, p1, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    goto :goto_3

    .line 32
    :cond_7
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v4

    .line 33
    iget-object v4, v4, Ld2/f1;->q:Ljava/util/HashMap;

    .line 34
    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :goto_3
    iget p1, p0, Ld2/t1;->e:I

    const-string v0, "AdSession is finished"

    const-string v4, "AdSession is null"

    if-eqz p1, :cond_8

    move-object v6, v3

    goto :goto_5

    .line 36
    :cond_8
    iget-object p1, p0, Ld2/t1;->a:Landroid/support/v4/media/a;

    .line 37
    move-object v5, p1

    check-cast v5, La7/i;

    invoke-static {p1, v4}, Li4/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p1, v5, La7/i;->b:La7/a;

    .line 39
    sget-object v6, La7/g;->b:La7/g;

    iget-object p1, p1, La7/a;->b:La7/g;

    if-ne v6, p1, :cond_9

    const/4 p1, 0x1

    goto :goto_4

    :cond_9
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_14

    .line 40
    iget-boolean p1, v5, La7/i;->f:Z

    if-nez p1, :cond_13

    .line 41
    iget-boolean p1, v5, La7/i;->g:Z

    if-nez p1, :cond_12

    .line 42
    iget-object p1, v5, La7/i;->e:Lg7/a;

    .line 43
    iget-object v6, p1, Lg7/a;->c:Lx2/f;

    if-nez v6, :cond_11

    .line 44
    new-instance v6, Lx2/f;

    const/4 v7, 0x6

    invoke-direct {v6, v5, v7}, Lx2/f;-><init>(Ljava/lang/Object;I)V

    .line 45
    iput-object v6, p1, Lg7/a;->c:Lx2/f;

    .line 46
    :goto_5
    iput-object v6, p0, Ld2/t1;->c:Lx2/f;

    .line 47
    iget-object p1, p0, Ld2/t1;->a:Landroid/support/v4/media/a;

    invoke-virtual {p1}, Landroid/support/v4/media/a;->L()V

    .line 48
    iget-object p1, p0, Ld2/t1;->a:Landroid/support/v4/media/a;

    .line 49
    move-object v5, p1

    check-cast v5, La7/i;

    invoke-static {p1, v4}, Li4/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object p1, v5, La7/i;->e:Lg7/a;

    .line 51
    iget-object v4, p1, Lg7/a;->b:Lf/t;

    if-nez v4, :cond_10

    .line 52
    iget-boolean v4, v5, La7/i;->g:Z

    if-nez v4, :cond_f

    .line 53
    new-instance v0, Lf/t;

    invoke-direct {v0, v5}, Lf/t;-><init>(Ljava/lang/Object;)V

    .line 54
    iput-object v0, p1, Lg7/a;->b:Lf/t;

    .line 55
    iput-object v0, p0, Ld2/t1;->b:Lf/t;

    const-string p1, "start_session"

    .line 56
    invoke-virtual {p0, p1}, Ld2/t1;->e(Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Ld2/t1;->c:Lx2/f;

    const-string v0, "publishLoadedEvent"

    const-string v4, "Loaded event can only be sent once"

    if-eqz p1, :cond_d

    .line 58
    sget-object p1, Lb7/b;->b:Lb7/b;

    .line 59
    iget-boolean v5, p0, Ld2/t1;->j:Z

    if-eqz v5, :cond_a

    .line 60
    iget v3, p0, Ld2/t1;->l:I

    int-to-float v3, v3

    .line 61
    new-instance v5, Lb7/c;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v5, v2, v3, v2, p1}, Lb7/c;-><init>(ZLjava/lang/Float;ZLb7/b;)V

    goto :goto_6

    .line 62
    :cond_a
    new-instance v5, Lb7/c;

    invoke-direct {v5, v1, v3, v2, p1}, Lb7/c;-><init>(ZLjava/lang/Float;ZLb7/b;)V

    .line 63
    :goto_6
    iget-object p1, p0, Ld2/t1;->b:Lf/t;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v3, p1, Lf/t;->a:Ljava/lang/Object;

    check-cast v3, La7/i;

    invoke-static {v3}, Li4/d;->f(La7/i;)V

    iget-object v3, p1, Lf/t;->a:Ljava/lang/Object;

    check-cast v3, La7/i;

    invoke-static {v3}, Li4/d;->r(La7/i;)V

    iget-object p1, p1, Lf/t;->a:Ljava/lang/Object;

    check-cast p1, La7/i;

    .line 65
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v6, "skippable"

    iget-boolean v7, v5, Lb7/c;->a:Z

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v6, v5, Lb7/c;->a:Z

    if-eqz v6, :cond_b

    const-string v6, "skipOffset"

    iget-object v7, v5, Lb7/c;->b:Ljava/lang/Float;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    const-string v6, "autoPlay"

    iget-boolean v7, v5, Lb7/c;->c:Z

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v6, "position"

    iget-object v5, v5, Lb7/c;->d:Lb7/b;

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    nop

    .line 66
    :goto_7
    iget-boolean v5, p1, La7/i;->j:Z

    if-nez v5, :cond_c

    .line 67
    iget-object v4, p1, La7/i;->e:Lg7/a;

    .line 68
    sget-object v5, Ly/d;->a:Ly/d;

    invoke-virtual {v4}, Lg7/a;->f()Landroid/webkit/WebView;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v3, v6, v1

    .line 69
    invoke-virtual {v5, v4, v0, v6}, Ly/d;->b(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iput-boolean v2, p1, La7/i;->j:Z

    goto :goto_8

    .line 71
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_d
    iget-object p1, p0, Ld2/t1;->b:Lf/t;

    .line 73
    iget-object v3, p1, Lf/t;->a:Ljava/lang/Object;

    check-cast v3, La7/i;

    invoke-static {v3}, Li4/d;->f(La7/i;)V

    iget-object v3, p1, Lf/t;->a:Ljava/lang/Object;

    check-cast v3, La7/i;

    invoke-static {v3}, Li4/d;->r(La7/i;)V

    iget-object p1, p1, Lf/t;->a:Ljava/lang/Object;

    check-cast p1, La7/i;

    .line 74
    iget-boolean v3, p1, La7/i;->j:Z

    if-nez v3, :cond_e

    .line 75
    iget-object v3, p1, La7/i;->e:Lg7/a;

    .line 76
    sget-object v4, Ly/d;->a:Ly/d;

    invoke-virtual {v3}, Lg7/a;->f()Landroid/webkit/WebView;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    .line 77
    invoke-virtual {v4, v3, v0, v1}, Ly/d;->b(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iput-boolean v2, p1, La7/i;->j:Z

    .line 79
    :goto_8
    iput-boolean v2, p0, Ld2/t1;->i:Z

    goto :goto_9

    .line 80
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AdEvents already exists for AdSession"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MediaEvents already exists for AdSession"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AdSession is started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot create MediaEvents for JavaScript AdSession"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    :goto_9
    return-void
.end method

.method public c(Ljava/lang/String;F)V
    .locals 9

    .line 1
    invoke-static {}, Ld2/t;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Ld2/t1;->a:Landroid/support/v4/media/a;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v0, p0, Ld2/t1;->c:Lx2/f;

    const-string v1, "cancel"

    const-string v2, "continue"

    const-string v3, "skip"

    const-string v4, "start"

    if-nez v0, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "pause"

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    :try_start_1
    const-string v1, "buffer_end"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "sound_unmute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "html5_interaction"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "in_video_engagement"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "sound_mute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_9
    const-string v1, "complete"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_a
    const-string v1, "third_quartile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_b
    const-string v1, "resume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xb

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_d
    const-string v1, "midpoint"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_e
    const-string v1, "buffer_start"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xc

    goto :goto_0

    :sswitch_f
    const-string v1, "first_quartile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 5
    :pswitch_0
    iget-object p2, p0, Ld2/t1;->c:Lx2/f;

    sget-object v0, Lb7/a;->b:Lb7/a;

    invoke-virtual {p2, v0}, Lx2/f;->b(Lb7/a;)V

    .line 6
    invoke-virtual {p0, p1}, Ld2/t1;->e(Ljava/lang/String;)V

    .line 7
    iget-boolean p2, p0, Ld2/t1;->h:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Ld2/t1;->g:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Ld2/t1;->k:Z

    if-nez p2, :cond_6

    .line 8
    iget-object p2, p0, Ld2/t1;->c:Lx2/f;

    invoke-virtual {p2}, Lx2/f;->j()V

    .line 9
    invoke-virtual {p0, v8}, Ld2/t1;->e(Ljava/lang/String;)V

    .line 10
    iput-boolean v6, p0, Ld2/t1;->g:Z

    .line 11
    iput-boolean v5, p0, Ld2/t1;->h:Z

    goto/16 :goto_3

    .line 12
    :pswitch_1
    iget-object p2, p0, Ld2/t1;->c:Lx2/f;

    invoke-virtual {p2}, Lx2/f;->d()V

    .line 13
    invoke-virtual {p0, p1}, Ld2/t1;->e(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 14
    :pswitch_2
    iget-object p2, p0, Ld2/t1;->c:Lx2/f;

    invoke-virtual {p2}, Lx2/f;->e()V

    .line 15
    invoke-virtual {p0, p1}, Ld2/t1;->e(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 16
    :pswitch_3
    iget-boolean p2, p0, Ld2/t1;->g:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Ld2/t1;->k:Z

    if-nez p2, :cond_6

    .line 17
    iget-object p2, p0, Ld2/t1;->c:Lx2/f;

    invoke-virtual {p2}, Lx2/f;->k()V

    .line 18
    invoke-virtual {p0, p1}, Ld2/t1;->e(Ljava/lang/String;)V

    .line 19
    iput-boolean v5, p0, Ld2/t1;->g:Z

    goto/16 :goto_3

    .line 20
    :pswitch_4
    iget-boolean p2, p0, Ld2/t1;->g:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Ld2/t1;->h:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Ld2/t1;->k:Z

    if-nez p2, :cond_6

    .line 21
    iget-object p2, p0, Ld2/t1;->c:Lx2/f;

    invoke-virtual {p2}, Lx2/f;->j()V

    .line 22
    invoke-virtual {p0, p1}, Ld2/t1;->e(Ljava/lang/String;)V

    .line 23
    iput-boolean v6, p0, Ld2/t1;->g:Z

    .line 24
    iput-boolean v5, p0, Ld2/t1;->h:Z

    goto/16 :goto_3

    .line 25
    :pswitch_5
    iget-object p2, p0, Ld2/t1;->c:Lx2/f;

    invoke-virtual {p2, v1}, Lx2/f;->o(F)V

    .line 26
    invoke-virtual {p0, p1}, Ld2/t1;->e(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 27
    :pswitch_6
    iget-object p2, p0, Ld2/t1;->c:Lx2/f;

    invoke-virtual {p2, v2}, Lx2/f;->o(F)V

    .line 28
    invoke-virtual {p0, p1}, Ld2/t1;->e(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 29
    :pswitch_7
    iget-object p2, p0, Ld2/t1;->c:Lx2/f;

    if-eqz p2, :cond_3

    .line 30
    invoke-virtual {p2}, Lx2/f;->l()V

    .line 31
    :cond_3
    invoke-virtual {p0, p1}, Ld2/t1;->e(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Ld2/t1;->d()V

    goto :goto_3

    .line 33
    :pswitch_8
    invoke-virtual {p0, p1}, Ld2/t1;->e(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Ld2/t1;->d()V

    goto :goto_3

    .line 35
    :pswitch_9
    iput-boolean v6, p0, Ld2/t1;->k:Z

    .line 36
    iget-object p2, p0, Ld2/t1;->c:Lx2/f;

    invoke-virtual {p2}, Lx2/f;->f()V

    .line 37
    invoke-virtual {p0, p1}, Ld2/t1;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 38
    :pswitch_a
    iget-object p2, p0, Ld2/t1;->c:Lx2/f;

    invoke-virtual {p2}, Lx2/f;->n()V

    .line 39
    invoke-virtual {p0, p1}, Ld2/t1;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 40
    :pswitch_b
    iget-object p2, p0, Ld2/t1;->c:Lx2/f;

    invoke-virtual {p2}, Lx2/f;->i()V

    .line 41
    invoke-virtual {p0, p1}, Ld2/t1;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 42
    :pswitch_c
    iget-object p2, p0, Ld2/t1;->c:Lx2/f;

    invoke-virtual {p2}, Lx2/f;->g()V

    .line 43
    invoke-virtual {p0, p1}, Ld2/t1;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 44
    :pswitch_d
    iget-object v0, p0, Ld2/t1;->b:Lf/t;

    invoke-virtual {v0}, Lf/t;->c()V

    .line 45
    iget-object v0, p0, Ld2/t1;->c:Lx2/f;

    if-eqz v0, :cond_5

    cmpl-float v2, p2, v2

    if-lez v2, :cond_4

    goto :goto_1

    .line 46
    :cond_4
    iget p2, p0, Ld2/t1;->m:I

    int-to-float p2, p2

    .line 47
    :goto_1
    invoke-virtual {v0, p2, v1}, Lx2/f;->m(FF)V

    .line 48
    :cond_5
    invoke-virtual {p0, p1}, Ld2/t1;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    :goto_2
    const-string v0, "Recording IAB event for "

    .line 49
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " caused "

    .line 50
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {v5, v6, p1, v6}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_6
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73bed9ce -> :sswitch_f
        -0x65ed745d -> :sswitch_e
        -0x61aea3b8 -> :sswitch_d
        -0x5185d186 -> :sswitch_c
        -0x37b237d3 -> :sswitch_b
        -0x26db6ea5 -> :sswitch_a
        -0x23bacec7 -> :sswitch_9
        -0x21ced359 -> :sswitch_8
        -0x146c6cb7 -> :sswitch_7
        0x35e57f -> :sswitch_6
        0x65825f6 -> :sswitch_5
        0x68ac462 -> :sswitch_4
        0x22cb325d -> :sswitch_3
        0x310f8b3d -> :sswitch_2
        0x623d2162 -> :sswitch_1
        0x71a42c5c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public d()V
    .locals 3

    .line 1
    sget-object v0, Ld2/b;->a:Ljava/util/concurrent/ExecutorService;

    .line 2
    sget-boolean v0, Ld2/t;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v2, "Ignoring call to AdColony.removeCustomMessageListener as AdColony has not yet been configured."

    .line 3
    invoke-static {v0, v1, v2, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 5
    iget-object v0, v0, Ld2/f1;->q:Ljava/util/HashMap;

    const-string v1, "viewability_ad_event"

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :goto_0
    iget-object v0, p0, Ld2/t1;->a:Landroid/support/v4/media/a;

    invoke-virtual {v0}, Landroid/support/v4/media/a;->q()V

    const-string v0, "end_session"

    .line 8
    invoke-virtual {p0, v0}, Ld2/t1;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Ld2/t1;->a:Landroid/support/v4/media/a;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ld2/t1$a;

    invoke-direct {v0, p0, p1}, Ld2/t1$a;-><init>(Ld2/t1;Ljava/lang/String;)V

    invoke-static {v0}, Ld2/i3;->j(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    const-string v1, "Executing ADCOmidManager.sendIabCustomMessage failed"

    .line 2
    invoke-static {v0, v0, v1, p1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_0
    return-void
.end method
