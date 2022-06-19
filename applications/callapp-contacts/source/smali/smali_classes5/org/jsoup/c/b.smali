.class public Lorg/jsoup/c/b;
.super Lorg/jsoup/c/m;
.source "SourceFile"


# static fields
.field static final a:[Ljava/lang/String;

.field static final b:[Ljava/lang/String;

.field static final c:[Ljava/lang/String;

.field static final d:[Ljava/lang/String;

.field static final e:[Ljava/lang/String;

.field static final f:[Ljava/lang/String;

.field static final g:[Ljava/lang/String;

.field static final synthetic q:Z = true


# instance fields
.field private A:Lorg/jsoup/nodes/h;

.field private B:Lorg/jsoup/c/i$f;

.field private C:[Ljava/lang/String;

.field h:Lorg/jsoup/c/c;

.field i:Lorg/jsoup/c/c;

.field j:Lorg/jsoup/nodes/h;

.field k:Lorg/jsoup/nodes/k;

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/h;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field n:Z

.field o:Z

.field p:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 80

    const-string v0, "applet"

    const-string v1, "caption"

    const-string v2, "html"

    const-string v3, "marquee"

    const-string v4, "object"

    const-string v5, "table"

    const-string v6, "td"

    const-string v7, "th"

    .line 27
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/c/b;->a:[Ljava/lang/String;

    const-string v0, "ol"

    const-string v1, "ul"

    .line 28
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/c/b;->b:[Ljava/lang/String;

    const-string v0, "button"

    .line 29
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/c/b;->c:[Ljava/lang/String;

    const-string v0, "html"

    const-string v1, "table"

    .line 30
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/c/b;->d:[Ljava/lang/String;

    const-string v0, "optgroup"

    const-string v1, "option"

    .line 31
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/c/b;->e:[Ljava/lang/String;

    const-string v1, "dd"

    const-string v2, "dt"

    const-string v3, "li"

    const-string v4, "optgroup"

    const-string v5, "option"

    const-string v6, "p"

    const-string v7, "rp"

    const-string v8, "rt"

    .line 32
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/c/b;->f:[Ljava/lang/String;

    const-string v1, "address"

    const-string v2, "applet"

    const-string v3, "area"

    const-string v4, "article"

    const-string v5, "aside"

    const-string v6, "base"

    const-string v7, "basefont"

    const-string v8, "bgsound"

    const-string v9, "blockquote"

    const-string v10, "body"

    const-string v11, "br"

    const-string v12, "button"

    const-string v13, "caption"

    const-string v14, "center"

    const-string v15, "col"

    const-string v16, "colgroup"

    const-string v17, "command"

    const-string v18, "dd"

    const-string v19, "details"

    const-string v20, "dir"

    const-string v21, "div"

    const-string v22, "dl"

    const-string v23, "dt"

    const-string v24, "embed"

    const-string v25, "fieldset"

    const-string v26, "figcaption"

    const-string v27, "figure"

    const-string v28, "footer"

    const-string v29, "form"

    const-string v30, "frame"

    const-string v31, "frameset"

    const-string v32, "h1"

    const-string v33, "h2"

    const-string v34, "h3"

    const-string v35, "h4"

    const-string v36, "h5"

    const-string v37, "h6"

    const-string v38, "head"

    const-string v39, "header"

    const-string v40, "hgroup"

    const-string v41, "hr"

    const-string v42, "html"

    const-string v43, "iframe"

    const-string v44, "img"

    const-string v45, "input"

    const-string v46, "isindex"

    const-string v47, "li"

    const-string v48, "link"

    const-string v49, "listing"

    const-string v50, "marquee"

    const-string v51, "menu"

    const-string v52, "meta"

    const-string v53, "nav"

    const-string v54, "noembed"

    const-string v55, "noframes"

    const-string v56, "noscript"

    const-string v57, "object"

    const-string v58, "ol"

    const-string v59, "p"

    const-string v60, "param"

    const-string v61, "plaintext"

    const-string v62, "pre"

    const-string v63, "script"

    const-string v64, "section"

    const-string v65, "select"

    const-string v66, "style"

    const-string v67, "summary"

    const-string v68, "table"

    const-string v69, "tbody"

    const-string v70, "td"

    const-string v71, "textarea"

    const-string v72, "tfoot"

    const-string v73, "th"

    const-string v74, "thead"

    const-string v75, "title"

    const-string v76, "tr"

    const-string v77, "ul"

    const-string v78, "wbr"

    const-string v79, "xmp"

    .line 33
    filled-new-array/range {v1 .. v79}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/c/b;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/jsoup/c/m;-><init>()V

    const/4 v0, 0x0

    .line 473
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/c/b;->C:[Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/util/ArrayList;Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/h;",
            ">;",
            "Lorg/jsoup/nodes/h;",
            "Lorg/jsoup/nodes/h;",
            ")V"
        }
    .end annotation

    .line 418
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 419
    :goto_0
    invoke-static {v0}, Lorg/jsoup/a/c;->a(Z)V

    .line 420
    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    .line 508
    sget-object v0, Lorg/jsoup/c/b;->a:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    .line 476
    iget-object v0, p0, Lorg/jsoup/c/b;->C:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 477
    invoke-direct {p0, v0, p2, p3}, Lorg/jsoup/c/b;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static a(Ljava/util/ArrayList;Lorg/jsoup/nodes/h;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/h;",
            ">;",
            "Lorg/jsoup/nodes/h;",
            ")Z"
        }
    .end annotation

    .line 313
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 314
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    .line 482
    iget-object v0, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    add-int/lit8 v2, v0, -0x64

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lt v0, v2, :cond_4

    .line 487
    iget-object v4, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/h;

    .line 29152
    iget-object v4, v4, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 30046
    iget-object v4, v4, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 488
    invoke-static {v4, p1}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    .line 490
    :cond_1
    invoke-static {v4, p2}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v3

    :cond_2
    if-eqz p3, :cond_3

    .line 492
    invoke-static {v4, p3}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method private b(Lorg/jsoup/nodes/m;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lorg/jsoup/c/b;->u:Lorg/jsoup/nodes/f;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->a(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;

    goto :goto_0

    .line 8547
    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/c/b;->o:Z

    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {p0, p1}, Lorg/jsoup/c/b;->a(Lorg/jsoup/nodes/m;)V

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;

    .line 289
    :goto_0
    instance-of v0, p1, Lorg/jsoup/nodes/h;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/jsoup/nodes/h;

    .line 9174
    iget-object v0, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 10172
    iget-boolean v0, v0, Lorg/jsoup/c/h;->h:Z

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lorg/jsoup/c/b;->k:Lorg/jsoup/nodes/k;

    if-eqz v0, :cond_2

    .line 291
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/k;->b(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/k;

    :cond_2
    return-void
.end method

.method private varargs c([Ljava/lang/String;)V
    .locals 3

    .line 387
    iget-object v0, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 388
    iget-object v1, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    .line 15152
    iget-object v2, v1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 16046
    iget-object v2, v2, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 389
    invoke-static {v2, p1}, Lorg/jsoup/b/c;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 16152
    iget-object v1, v1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 17046
    iget-object v1, v1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    const-string v2, "html"

    .line 389
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    iget-object v1, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static f(Lorg/jsoup/nodes/h;)Z
    .locals 1

    .line 33152
    iget-object p0, p0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 34046
    iget-object p0, p0, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 593
    sget-object v0, Lorg/jsoup/c/b;->g:[Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private i(Lorg/jsoup/nodes/h;)V
    .locals 1

    .line 228
    invoke-direct {p0, p1}, Lorg/jsoup/c/b;->b(Lorg/jsoup/nodes/m;)V

    .line 229
    iget-object v0, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method final a()Lorg/jsoup/c/f;
    .locals 1

    .line 60
    sget-object v0, Lorg/jsoup/c/f;->a:Lorg/jsoup/c/f;

    return-object v0
.end method

.method final a(Ljava/lang/String;)Lorg/jsoup/nodes/h;
    .locals 2

    .line 222
    new-instance v0, Lorg/jsoup/nodes/h;

    iget-object v1, p0, Lorg/jsoup/c/b;->y:Lorg/jsoup/c/f;

    invoke-static {p1, v1}, Lorg/jsoup/c/h;->a(Ljava/lang/String;Lorg/jsoup/c/f;)Lorg/jsoup/c/h;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/h;-><init>(Lorg/jsoup/c/h;Ljava/lang/String;)V

    .line 223
    invoke-direct {p0, v0}, Lorg/jsoup/c/b;->i(Lorg/jsoup/nodes/h;)V

    return-object v0
.end method

.method final a(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;
    .locals 4

    .line 199
    iget-object v0, p1, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p1, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    iget-object v1, p0, Lorg/jsoup/c/b;->y:Lorg/jsoup/c/f;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/b;->a(Lorg/jsoup/c/f;)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Duplicate attribute"

    .line 202
    invoke-virtual {p0, v0}, Lorg/jsoup/c/b;->n(Ljava/lang/String;)V

    .line 3151
    :cond_0
    iget-boolean v0, p1, Lorg/jsoup/c/i$h;->f:Z

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p0, p1}, Lorg/jsoup/c/b;->b(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;

    move-result-object p1

    .line 210
    iget-object v0, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lorg/jsoup/c/b;->t:Lorg/jsoup/c/k;

    sget-object v1, Lorg/jsoup/c/l;->Data:Lorg/jsoup/c/l;

    .line 4124
    iput-object v1, v0, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    .line 212
    iget-object v0, p0, Lorg/jsoup/c/b;->t:Lorg/jsoup/c/k;

    iget-object v1, p0, Lorg/jsoup/c/b;->B:Lorg/jsoup/c/i$f;

    invoke-virtual {v1}, Lorg/jsoup/c/i$f;->h()Lorg/jsoup/c/i$h;

    move-result-object v1

    .line 4142
    iget-object v2, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 5038
    iget-object v2, v2, Lorg/jsoup/c/h;->a:Ljava/lang/String;

    .line 212
    invoke-virtual {v1, v2}, Lorg/jsoup/c/i$h;->a(Ljava/lang/String;)Lorg/jsoup/c/i$h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/c/k;->a(Lorg/jsoup/c/i;)V

    return-object p1

    .line 216
    :cond_1
    new-instance v0, Lorg/jsoup/nodes/h;

    invoke-virtual {p1}, Lorg/jsoup/c/i$g;->j()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/c/b;->y:Lorg/jsoup/c/f;

    invoke-static {v1, v2}, Lorg/jsoup/c/h;->a(Ljava/lang/String;Lorg/jsoup/c/f;)Lorg/jsoup/c/h;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jsoup/c/b;->y:Lorg/jsoup/c/f;

    iget-object p1, p1, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    invoke-virtual {v3, p1}, Lorg/jsoup/c/f;->a(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/jsoup/nodes/h;-><init>(Lorg/jsoup/c/h;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 217
    invoke-direct {p0, v0}, Lorg/jsoup/c/b;->i(Lorg/jsoup/nodes/h;)V

    return-object v0
.end method

.method final a(Lorg/jsoup/c/i$g;Z)Lorg/jsoup/nodes/k;
    .locals 3

    .line 248
    invoke-virtual {p1}, Lorg/jsoup/c/i$g;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/c/b;->y:Lorg/jsoup/c/f;

    invoke-static {v0, v1}, Lorg/jsoup/c/h;->a(Ljava/lang/String;Lorg/jsoup/c/f;)Lorg/jsoup/c/h;

    move-result-object v0

    .line 249
    new-instance v1, Lorg/jsoup/nodes/k;

    iget-object v2, p0, Lorg/jsoup/c/b;->y:Lorg/jsoup/c/f;

    iget-object p1, p1, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    invoke-virtual {v2, p1}, Lorg/jsoup/c/f;->a(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lorg/jsoup/nodes/k;-><init>(Lorg/jsoup/c/h;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 6559
    iput-object v1, p0, Lorg/jsoup/c/b;->k:Lorg/jsoup/nodes/k;

    .line 251
    invoke-direct {p0, v1}, Lorg/jsoup/c/b;->b(Lorg/jsoup/nodes/m;)V

    if-eqz p2, :cond_0

    .line 253
    iget-object p1, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1
.end method

.method protected final a(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/c/g;)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/c/m;->a(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/c/g;)V

    .line 68
    sget-object p1, Lorg/jsoup/c/c;->Initial:Lorg/jsoup/c/c;

    iput-object p1, p0, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lorg/jsoup/c/b;->i:Lorg/jsoup/c/c;

    const/4 p2, 0x0

    .line 70
    iput-boolean p2, p0, Lorg/jsoup/c/b;->z:Z

    .line 71
    iput-object p1, p0, Lorg/jsoup/c/b;->j:Lorg/jsoup/nodes/h;

    .line 72
    iput-object p1, p0, Lorg/jsoup/c/b;->k:Lorg/jsoup/nodes/k;

    .line 73
    iput-object p1, p0, Lorg/jsoup/c/b;->A:Lorg/jsoup/nodes/h;

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jsoup/c/b;->m:Ljava/util/List;

    .line 76
    new-instance p1, Lorg/jsoup/c/i$f;

    invoke-direct {p1}, Lorg/jsoup/c/i$f;-><init>()V

    iput-object p1, p0, Lorg/jsoup/c/b;->B:Lorg/jsoup/c/i$f;

    const/4 p1, 0x1

    .line 77
    iput-boolean p1, p0, Lorg/jsoup/c/b;->n:Z

    .line 78
    iput-boolean p2, p0, Lorg/jsoup/c/b;->o:Z

    .line 79
    iput-boolean p2, p0, Lorg/jsoup/c/b;->p:Z

    return-void
.end method

.method final a(Lorg/jsoup/c/c;)V
    .locals 6

    .line 193
    iget-object v0, p0, Lorg/jsoup/c/b;->r:Lorg/jsoup/c/g;

    .line 1084
    iget-object v0, v0, Lorg/jsoup/c/g;->a:Lorg/jsoup/c/e;

    .line 193
    invoke-virtual {v0}, Lorg/jsoup/c/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lorg/jsoup/c/b;->r:Lorg/jsoup/c/g;

    .line 2084
    iget-object v0, v0, Lorg/jsoup/c/g;->a:Lorg/jsoup/c/e;

    .line 194
    new-instance v1, Lorg/jsoup/c/d;

    iget-object v2, p0, Lorg/jsoup/c/b;->s:Lorg/jsoup/c/a;

    invoke-virtual {v2}, Lorg/jsoup/c/a;->b()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/jsoup/c/b;->x:Lorg/jsoup/c/i;

    .line 3018
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "Unexpected token [%s] when in state [%s]"

    .line 194
    invoke-direct {v1, v2, p1, v3}, Lorg/jsoup/c/d;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/c/e;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method final a(Lorg/jsoup/c/i$b;)V
    .locals 3

    .line 264
    invoke-virtual {p0}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lorg/jsoup/c/b;->u:Lorg/jsoup/nodes/f;

    .line 7152
    :cond_0
    iget-object v1, v0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 8046
    iget-object v1, v1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 8331
    iget-object v2, p1, Lorg/jsoup/c/i$b;->b:Ljava/lang/String;

    .line 8401
    instance-of p1, p1, Lorg/jsoup/c/i$a;

    if-eqz p1, :cond_1

    .line 271
    new-instance p1, Lorg/jsoup/nodes/c;

    invoke-direct {p1, v2}, Lorg/jsoup/nodes/c;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "script"

    .line 272
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "style"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 275
    :cond_2
    new-instance p1, Lorg/jsoup/nodes/p;

    invoke-direct {p1, v2}, Lorg/jsoup/nodes/p;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 273
    :cond_3
    :goto_0
    new-instance p1, Lorg/jsoup/nodes/e;

    invoke-direct {p1, v2}, Lorg/jsoup/nodes/e;-><init>(Ljava/lang/String;)V

    .line 276
    :goto_1
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;

    return-void
.end method

.method final a(Lorg/jsoup/c/i$c;)V
    .locals 1

    .line 258
    new-instance v0, Lorg/jsoup/nodes/d;

    invoke-virtual {p1}, Lorg/jsoup/c/i$c;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/d;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-direct {p0, v0}, Lorg/jsoup/c/b;->b(Lorg/jsoup/nodes/m;)V

    return-void
.end method

.method final a(Lorg/jsoup/nodes/h;)V
    .locals 1

    .line 177
    iget-boolean v0, p0, Lorg/jsoup/c/b;->z:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "href"

    .line 180
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iput-object p1, p0, Lorg/jsoup/c/b;->w:Ljava/lang/String;

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lorg/jsoup/c/b;->z:Z

    .line 184
    iget-object v0, p0, Lorg/jsoup/c/b;->u:Lorg/jsoup/nodes/f;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/f;->f(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method final a(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)V
    .locals 2

    .line 408
    iget-object v0, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 409
    :goto_0
    invoke-static {v1}, Lorg/jsoup/a/c;->a(Z)V

    .line 410
    iget-object v1, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    add-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method final a(Lorg/jsoup/nodes/m;)V
    .locals 3

    const-string v0, "table"

    .line 716
    invoke-virtual {p0, v0}, Lorg/jsoup/c/b;->b(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 41241
    iget-object v2, v0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast v2, Lorg/jsoup/nodes/h;

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v2, v1

    const/4 v1, 0x1

    goto :goto_0

    .line 723
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jsoup/c/b;->e(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;

    move-result-object v2

    goto :goto_0

    .line 725
    :cond_1
    iget-object v2, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    :goto_0
    if-eqz v1, :cond_2

    .line 729
    invoke-static {v0}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 730
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/h;->c(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;

    return-void

    .line 733
    :cond_2
    invoke-virtual {v2, p1}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;

    return-void
.end method

.method final varargs a([Ljava/lang/String;)V
    .locals 3

    .line 355
    iget-object v0, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 356
    iget-object v1, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    .line 357
    iget-object v2, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 13152
    iget-object v1, v1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 14046
    iget-object v1, v1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 358
    invoke-static {v1, p1}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lorg/jsoup/c/m;->a(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z

    move-result p1

    return p1
.end method

.method protected final a(Lorg/jsoup/c/i;)Z
    .locals 1

    .line 135
    iput-object p1, p0, Lorg/jsoup/c/b;->x:Lorg/jsoup/c/i;

    .line 136
    iget-object v0, p0, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    invoke-virtual {v0, p1, p0}, Lorg/jsoup/c/c;->process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1
.end method

.method final a(Lorg/jsoup/c/i;Lorg/jsoup/c/c;)Z
    .locals 0

    .line 140
    iput-object p1, p0, Lorg/jsoup/c/b;->x:Lorg/jsoup/c/i;

    .line 141
    invoke-virtual {p2, p1, p0}, Lorg/jsoup/c/c;->process(Lorg/jsoup/c/i;Lorg/jsoup/c/b;)Z

    move-result p1

    return p1
.end method

.method final b(Ljava/lang/String;)Lorg/jsoup/nodes/h;
    .locals 3

    .line 323
    iget-object v0, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 324
    iget-object v1, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    .line 11152
    iget-object v2, v1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 12046
    iget-object v2, v2, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 325
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method final b(Lorg/jsoup/c/i$g;)Lorg/jsoup/nodes/h;
    .locals 4

    .line 233
    invoke-virtual {p1}, Lorg/jsoup/c/i$g;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/c/b;->y:Lorg/jsoup/c/f;

    invoke-static {v0, v1}, Lorg/jsoup/c/h;->a(Ljava/lang/String;Lorg/jsoup/c/f;)Lorg/jsoup/c/h;

    move-result-object v0

    .line 234
    new-instance v1, Lorg/jsoup/nodes/h;

    iget-object v2, p0, Lorg/jsoup/c/b;->y:Lorg/jsoup/c/f;

    iget-object v3, p1, Lorg/jsoup/c/i$g;->g:Lorg/jsoup/nodes/b;

    invoke-virtual {v2, v3}, Lorg/jsoup/c/f;->a(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lorg/jsoup/nodes/h;-><init>(Lorg/jsoup/c/h;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 235
    invoke-direct {p0, v1}, Lorg/jsoup/c/b;->b(Lorg/jsoup/nodes/m;)V

    .line 5151
    iget-boolean p1, p1, Lorg/jsoup/c/i$h;->f:Z

    if-eqz p1, :cond_1

    .line 237
    invoke-virtual {v0}, Lorg/jsoup/c/h;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6127
    iget-boolean p1, v0, Lorg/jsoup/c/h;->e:Z

    if-nez p1, :cond_1

    .line 239
    iget-object p1, p0, Lorg/jsoup/c/b;->t:Lorg/jsoup/c/k;

    const-string v0, "Tag cannot be self closing; not a void tag"

    invoke-virtual {p1, v0}, Lorg/jsoup/c/k;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 6184
    iput-boolean p1, v0, Lorg/jsoup/c/h;->f:Z

    :cond_1
    :goto_0
    return-object v1
.end method

.method final b()V
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    iput-object v0, p0, Lorg/jsoup/c/b;->i:Lorg/jsoup/c/c;

    return-void
.end method

.method final b(Lorg/jsoup/nodes/h;)V
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final b(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)V
    .locals 1

    .line 414
    iget-object v0, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lorg/jsoup/c/b;->a(Ljava/util/ArrayList;Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)V

    return-void
.end method

.method final b([Ljava/lang/String;)Z
    .locals 2

    .line 500
    sget-object v0, Lorg/jsoup/c/b;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/c/b;->a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method final c()Lorg/jsoup/nodes/f;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/jsoup/c/b;->u:Lorg/jsoup/nodes/f;

    return-object v0
.end method

.method final c(Ljava/lang/String;)Lorg/jsoup/nodes/h;
    .locals 3

    .line 344
    iget-object v0, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 345
    iget-object v1, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    .line 346
    iget-object v2, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 12152
    iget-object v2, v1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 13046
    iget-object v2, v2, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 347
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method final c(Lorg/jsoup/nodes/h;)Z
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/jsoup/c/b;->a(Ljava/util/ArrayList;Lorg/jsoup/nodes/h;)Z

    move-result p1

    return p1
.end method

.method final d()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/jsoup/c/b;->w:Ljava/lang/String;

    return-object v0
.end method

.method final d(Ljava/lang/String;)V
    .locals 2

    .line 364
    iget-object v0, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 365
    iget-object v1, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    .line 14152
    iget-object v1, v1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 15046
    iget-object v1, v1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 366
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 369
    iget-object v1, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final d(Lorg/jsoup/nodes/h;)Z
    .locals 3

    .line 333
    iget-object v0, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 334
    iget-object v2, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/h;

    if-ne v2, p1, :cond_0

    .line 336
    iget-object p1, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method final e()Lorg/jsoup/nodes/h;
    .locals 2

    .line 296
    iget-object v0, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 297
    iget-object v1, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    return-object v0
.end method

.method final e(Lorg/jsoup/nodes/h;)Lorg/jsoup/nodes/h;
    .locals 2

    .line 397
    sget-boolean v0, Lorg/jsoup/c/b;->q:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/jsoup/c/b;->c(Lorg/jsoup/nodes/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 398
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 399
    iget-object v1, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    if-ne v1, p1, :cond_2

    .line 401
    iget-object p1, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/h;

    return-object p1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method final e(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 504
    invoke-direct {p0, p1, v0}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method final f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/h;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    return-object v0
.end method

.method final f(Ljava/lang/String;)Z
    .locals 1

    .line 514
    sget-object v0, Lorg/jsoup/c/b;->b:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method final g()V
    .locals 1

    const-string v0, "table"

    .line 375
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jsoup/c/b;->c([Ljava/lang/String;)V

    return-void
.end method

.method final g(Lorg/jsoup/nodes/h;)V
    .locals 7

    .line 611
    iget-object v0, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_3

    .line 612
    iget-object v4, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/h;

    if-eqz v4, :cond_3

    .line 35152
    iget-object v5, p1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 36046
    iget-object v5, v5, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 36152
    iget-object v6, v4, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 37046
    iget-object v6, v6, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 34629
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 34631
    invoke-virtual {p1}, Lorg/jsoup/nodes/h;->j()Lorg/jsoup/nodes/b;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jsoup/nodes/h;->j()Lorg/jsoup/nodes/b;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/jsoup/nodes/b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 620
    iget-object v1, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 624
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final g(Ljava/lang/String;)Z
    .locals 1

    .line 518
    sget-object v0, Lorg/jsoup/c/b;->c:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method final h()V
    .locals 4

    const-string v0, "tbody"

    const-string v1, "tfoot"

    const-string v2, "thead"

    const-string v3, "template"

    .line 379
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jsoup/c/b;->c([Ljava/lang/String;)V

    return-void
.end method

.method final h(Lorg/jsoup/nodes/h;)V
    .locals 2

    .line 682
    iget-object v0, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 683
    iget-object v1, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    if-ne v1, p1, :cond_0

    .line 685
    iget-object p1, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final h(Ljava/lang/String;)Z
    .locals 2

    .line 522
    sget-object v0, Lorg/jsoup/c/b;->d:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/c/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method final i()V
    .locals 2

    const-string v0, "tr"

    const-string v1, "template"

    .line 383
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jsoup/c/b;->c([Ljava/lang/String;)V

    return-void
.end method

.method final i(Ljava/lang/String;)Z
    .locals 5

    .line 526
    iget-object v0, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 527
    iget-object v3, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/h;

    .line 30152
    iget-object v3, v3, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 31046
    iget-object v3, v3, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 529
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    .line 531
    :cond_0
    sget-object v4, Lorg/jsoup/c/b;->e:[Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const-string p1, "Should not be reachable"

    .line 534
    invoke-static {p1}, Lorg/jsoup/a/c;->b(Ljava/lang/String;)V

    return v2
.end method

.method final j()V
    .locals 5

    .line 425
    iget-object v0, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_f

    .line 426
    iget-object v3, p0, Lorg/jsoup/c/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/h;

    if-nez v0, :cond_0

    .line 429
    iget-object v3, p0, Lorg/jsoup/c/b;->A:Lorg/jsoup/nodes/h;

    const/4 v2, 0x1

    .line 17152
    :cond_0
    iget-object v3, v3, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 18046
    iget-object v3, v3, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    const-string v4, "select"

    .line 432
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 433
    sget-object v0, Lorg/jsoup/c/c;->InSelect:Lorg/jsoup/c/c;

    .line 18145
    iput-object v0, p0, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    return-void

    :cond_1
    const-string v4, "td"

    .line 435
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "th"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v4, "tr"

    .line 438
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 439
    sget-object v0, Lorg/jsoup/c/c;->InRow:Lorg/jsoup/c/c;

    .line 20145
    iput-object v0, p0, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    return-void

    :cond_3
    const-string v4, "tbody"

    .line 441
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "thead"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "tfoot"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const-string v4, "caption"

    .line 444
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 445
    sget-object v0, Lorg/jsoup/c/c;->InCaption:Lorg/jsoup/c/c;

    .line 22145
    iput-object v0, p0, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    return-void

    :cond_5
    const-string v4, "colgroup"

    .line 447
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 448
    sget-object v0, Lorg/jsoup/c/c;->InColumnGroup:Lorg/jsoup/c/c;

    .line 23145
    iput-object v0, p0, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    return-void

    :cond_6
    const-string v4, "table"

    .line 450
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 451
    sget-object v0, Lorg/jsoup/c/c;->InTable:Lorg/jsoup/c/c;

    .line 24145
    iput-object v0, p0, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    return-void

    :cond_7
    const-string v4, "head"

    .line 453
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 454
    sget-object v0, Lorg/jsoup/c/c;->InBody:Lorg/jsoup/c/c;

    .line 25145
    iput-object v0, p0, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    return-void

    :cond_8
    const-string v4, "body"

    .line 456
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 457
    sget-object v0, Lorg/jsoup/c/c;->InBody:Lorg/jsoup/c/c;

    .line 26145
    iput-object v0, p0, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    return-void

    :cond_9
    const-string v4, "frameset"

    .line 459
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 460
    sget-object v0, Lorg/jsoup/c/c;->InFrameset:Lorg/jsoup/c/c;

    .line 27145
    iput-object v0, p0, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    return-void

    :cond_a
    const-string v4, "html"

    .line 462
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 463
    sget-object v0, Lorg/jsoup/c/c;->BeforeHead:Lorg/jsoup/c/c;

    .line 28145
    iput-object v0, p0, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    return-void

    :cond_b
    if-eqz v2, :cond_c

    .line 466
    sget-object v0, Lorg/jsoup/c/c;->InBody:Lorg/jsoup/c/c;

    .line 29145
    iput-object v0, p0, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    return-void

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 442
    :cond_d
    :goto_1
    sget-object v0, Lorg/jsoup/c/c;->InTableBody:Lorg/jsoup/c/c;

    .line 21145
    iput-object v0, p0, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    return-void

    .line 436
    :cond_e
    :goto_2
    sget-object v0, Lorg/jsoup/c/c;->InCell:Lorg/jsoup/c/c;

    .line 19145
    iput-object v0, p0, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    :cond_f
    return-void
.end method

.method final j(Ljava/lang/String;)V
    .locals 2

    :goto_0
    if-eqz p1, :cond_0

    .line 580
    invoke-virtual {p0}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object v0

    .line 31152
    iget-object v0, v0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 32046
    iget-object v0, v0, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 580
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    invoke-virtual {p0}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object v0

    .line 32152
    iget-object v0, v0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 33046
    iget-object v0, v0, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 581
    sget-object v1, Lorg/jsoup/c/b;->f:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/b/c;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {p0}, Lorg/jsoup/c/b;->e()Lorg/jsoup/nodes/h;

    goto :goto_0

    :cond_0
    return-void
.end method

.method final k(Ljava/lang/String;)Lorg/jsoup/nodes/h;
    .locals 3

    .line 696
    iget-object v0, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 697
    iget-object v1, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/h;

    if-eqz v1, :cond_1

    .line 40152
    iget-object v2, v1, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 41046
    iget-object v2, v2, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 700
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method final k()V
    .locals 1

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/c/b;->m:Ljava/util/List;

    return-void
.end method

.method final l()V
    .locals 1

    const/4 v0, 0x0

    .line 586
    invoke-virtual {p0, v0}, Lorg/jsoup/c/b;->j(Ljava/lang/String;)V

    return-void
.end method

.method final m()V
    .locals 7

    .line 37597
    iget-object v0, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    .line 637
    invoke-virtual {p0, v0}, Lorg/jsoup/c/b;->c(Lorg/jsoup/nodes/h;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 641
    :cond_1
    iget-object v2, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    move v3, v2

    :cond_2
    const/4 v4, 0x0

    if-nez v3, :cond_3

    goto :goto_1

    .line 649
    :cond_3
    iget-object v0, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    if-eqz v0, :cond_4

    .line 650
    invoke-virtual {p0, v0}, Lorg/jsoup/c/b;->c(Lorg/jsoup/nodes/h;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    .line 655
    iget-object v0, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    .line 656
    :cond_5
    invoke-static {v0}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 38152
    iget-object v1, v0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 39046
    iget-object v1, v1, Lorg/jsoup/c/h;->b:Ljava/lang/String;

    .line 660
    invoke-virtual {p0, v1}, Lorg/jsoup/c/b;->a(Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object v1

    .line 662
    invoke-virtual {v1}, Lorg/jsoup/nodes/h;->j()Lorg/jsoup/nodes/b;

    move-result-object v5

    invoke-virtual {v0}, Lorg/jsoup/nodes/h;->j()Lorg/jsoup/nodes/b;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jsoup/nodes/b;->a(Lorg/jsoup/nodes/b;)V

    .line 665
    iget-object v5, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v3, v2, :cond_4

    :cond_6
    :goto_2
    return-void
.end method

.method final n()V
    .locals 2

    .line 674
    :cond_0
    iget-object v0, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 39601
    iget-object v0, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 39603
    iget-object v1, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    :cond_2
    return-void
.end method

.method final o()V
    .locals 2

    .line 711
    iget-object v0, p0, Lorg/jsoup/c/b;->l:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TreeBuilder{currentToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/c/b;->x:Lorg/jsoup/c/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/c/b;->h:Lorg/jsoup/c/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {p0}, Lorg/jsoup/c/b;->p()Lorg/jsoup/nodes/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
