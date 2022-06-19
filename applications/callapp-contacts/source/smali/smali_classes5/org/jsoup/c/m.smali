.class abstract Lorg/jsoup/c/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lorg/jsoup/c/i$g;

.field private b:Lorg/jsoup/c/i$f;

.field protected r:Lorg/jsoup/c/g;

.field s:Lorg/jsoup/c/a;

.field t:Lorg/jsoup/c/k;

.field protected u:Lorg/jsoup/nodes/f;

.field protected v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/h;",
            ">;"
        }
    .end annotation
.end field

.field protected w:Ljava/lang/String;

.field protected x:Lorg/jsoup/c/i;

.field protected y:Lorg/jsoup/c/f;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lorg/jsoup/c/i$g;

    invoke-direct {v0}, Lorg/jsoup/c/i$g;-><init>()V

    iput-object v0, p0, Lorg/jsoup/c/m;->a:Lorg/jsoup/c/i$g;

    .line 27
    new-instance v0, Lorg/jsoup/c/i$f;

    invoke-direct {v0}, Lorg/jsoup/c/i$f;-><init>()V

    iput-object v0, p0, Lorg/jsoup/c/m;->b:Lorg/jsoup/c/i$f;

    return-void
.end method


# virtual methods
.method abstract a()Lorg/jsoup/c/f;
.end method

.method protected a(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/c/g;)V
    .locals 1

    const-string v0, "String input must not be null"

    .line 31
    invoke-static {p1, v0}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BaseURI must not be null"

    .line 32
    invoke-static {p2, v0}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lorg/jsoup/nodes/f;

    invoke-direct {v0, p2}, Lorg/jsoup/nodes/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jsoup/c/m;->u:Lorg/jsoup/nodes/f;

    .line 1610
    iput-object p3, v0, Lorg/jsoup/nodes/f;->b:Lorg/jsoup/c/g;

    .line 36
    iput-object p3, p0, Lorg/jsoup/c/m;->r:Lorg/jsoup/c/g;

    .line 2093
    iget-object v0, p3, Lorg/jsoup/c/g;->b:Lorg/jsoup/c/f;

    .line 37
    iput-object v0, p0, Lorg/jsoup/c/m;->y:Lorg/jsoup/c/f;

    .line 38
    new-instance v0, Lorg/jsoup/c/a;

    invoke-direct {v0, p1}, Lorg/jsoup/c/a;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/jsoup/c/m;->s:Lorg/jsoup/c/a;

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lorg/jsoup/c/m;->x:Lorg/jsoup/c/i;

    .line 40
    new-instance p1, Lorg/jsoup/c/k;

    .line 3084
    iget-object p3, p3, Lorg/jsoup/c/g;->a:Lorg/jsoup/c/e;

    .line 40
    invoke-direct {p1, v0, p3}, Lorg/jsoup/c/k;-><init>(Lorg/jsoup/c/a;Lorg/jsoup/c/e;)V

    iput-object p1, p0, Lorg/jsoup/c/m;->t:Lorg/jsoup/c/k;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x20

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/jsoup/c/m;->v:Ljava/util/ArrayList;

    .line 42
    iput-object p2, p0, Lorg/jsoup/c/m;->w:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/jsoup/c/m;->a:Lorg/jsoup/c/i$g;

    .line 86
    iget-object v1, p0, Lorg/jsoup/c/m;->x:Lorg/jsoup/c/i;

    if-ne v1, v0, :cond_0

    .line 87
    new-instance v0, Lorg/jsoup/c/i$g;

    invoke-direct {v0}, Lorg/jsoup/c/i$g;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/c/i$g;->a(Ljava/lang/String;Lorg/jsoup/nodes/b;)Lorg/jsoup/c/i$g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/c/m;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    .line 89
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->h()Lorg/jsoup/c/i$h;

    .line 90
    invoke-virtual {v0, p1, p2}, Lorg/jsoup/c/i$g;->a(Ljava/lang/String;Lorg/jsoup/nodes/b;)Lorg/jsoup/c/i$g;

    .line 91
    invoke-virtual {p0, v0}, Lorg/jsoup/c/m;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1
.end method

.method protected abstract a(Lorg/jsoup/c/i;)Z
.end method

.method final b(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/c/g;)Lorg/jsoup/nodes/f;
    .locals 4

    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/c/m;->a(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/c/g;)V

    .line 4061
    iget-object p1, p0, Lorg/jsoup/c/m;->t:Lorg/jsoup/c/k;

    .line 4062
    sget-object p2, Lorg/jsoup/c/i$i;->EOF:Lorg/jsoup/c/i$i;

    .line 5056
    :cond_0
    :goto_0
    iget-boolean p3, p1, Lorg/jsoup/c/k;->e:Z

    if-nez p3, :cond_1

    .line 5057
    iget-object p3, p1, Lorg/jsoup/c/k;->c:Lorg/jsoup/c/l;

    iget-object v0, p1, Lorg/jsoup/c/k;->b:Lorg/jsoup/c/a;

    invoke-virtual {p3, p1, v0}, Lorg/jsoup/c/l;->read(Lorg/jsoup/c/k;Lorg/jsoup/c/a;)V

    goto :goto_0

    .line 5061
    :cond_1
    iget-object p3, p1, Lorg/jsoup/c/k;->g:Ljava/lang/StringBuilder;

    .line 5062
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5063
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5064
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p3, v1, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 5065
    iput-object v2, p1, Lorg/jsoup/c/k;->f:Ljava/lang/String;

    .line 5066
    iget-object p3, p1, Lorg/jsoup/c/k;->l:Lorg/jsoup/c/i$b;

    .line 5326
    iput-object v0, p3, Lorg/jsoup/c/i$b;->b:Ljava/lang/String;

    goto :goto_1

    .line 5067
    :cond_2
    iget-object p3, p1, Lorg/jsoup/c/k;->f:Ljava/lang/String;

    if-eqz p3, :cond_3

    .line 5068
    iget-object p3, p1, Lorg/jsoup/c/k;->l:Lorg/jsoup/c/i$b;

    iget-object v0, p1, Lorg/jsoup/c/k;->f:Ljava/lang/String;

    .line 6326
    iput-object v0, p3, Lorg/jsoup/c/i$b;->b:Ljava/lang/String;

    .line 5069
    iput-object v2, p1, Lorg/jsoup/c/k;->f:Ljava/lang/String;

    goto :goto_1

    .line 5072
    :cond_3
    iput-boolean v1, p1, Lorg/jsoup/c/k;->e:Z

    .line 5073
    iget-object p3, p1, Lorg/jsoup/c/k;->d:Lorg/jsoup/c/i;

    .line 4066
    :goto_1
    invoke-virtual {p0, p3}, Lorg/jsoup/c/m;->a(Lorg/jsoup/c/i;)Z

    .line 4067
    invoke-virtual {p3}, Lorg/jsoup/c/i;->a()Lorg/jsoup/c/i;

    .line 4069
    iget-object p3, p3, Lorg/jsoup/c/i;->a:Lorg/jsoup/c/i$i;

    if-ne p3, p2, :cond_0

    .line 50
    iget-object p1, p0, Lorg/jsoup/c/m;->s:Lorg/jsoup/c/a;

    .line 7049
    iget-object p2, p1, Lorg/jsoup/c/a;->b:Ljava/io/Reader;

    if-eqz p2, :cond_4

    .line 7052
    :try_start_0
    iget-object p2, p1, Lorg/jsoup/c/a;->b:Ljava/io/Reader;

    invoke-virtual {p2}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 7055
    iput-object v2, p1, Lorg/jsoup/c/a;->b:Ljava/io/Reader;

    .line 7056
    iput-object v2, p1, Lorg/jsoup/c/a;->a:[C

    .line 7057
    iput-object v2, p1, Lorg/jsoup/c/a;->g:[Ljava/lang/String;

    .line 7058
    throw p2

    .line 7055
    :catch_0
    :goto_2
    iput-object v2, p1, Lorg/jsoup/c/a;->b:Ljava/io/Reader;

    .line 7056
    iput-object v2, p1, Lorg/jsoup/c/a;->a:[C

    .line 7057
    iput-object v2, p1, Lorg/jsoup/c/a;->g:[Ljava/lang/String;

    .line 51
    :cond_4
    iput-object v2, p0, Lorg/jsoup/c/m;->s:Lorg/jsoup/c/a;

    .line 52
    iput-object v2, p0, Lorg/jsoup/c/m;->t:Lorg/jsoup/c/k;

    .line 53
    iput-object v2, p0, Lorg/jsoup/c/m;->v:Ljava/util/ArrayList;

    .line 55
    iget-object p1, p0, Lorg/jsoup/c/m;->u:Lorg/jsoup/nodes/f;

    return-object p1
.end method

.method protected final l(Ljava/lang/String;)Z
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/jsoup/c/m;->a:Lorg/jsoup/c/i$g;

    .line 78
    iget-object v1, p0, Lorg/jsoup/c/m;->x:Lorg/jsoup/c/i;

    if-ne v1, v0, :cond_0

    .line 79
    new-instance v0, Lorg/jsoup/c/i$g;

    invoke-direct {v0}, Lorg/jsoup/c/i$g;-><init>()V

    invoke-virtual {v0, p1}, Lorg/jsoup/c/i$g;->a(Ljava/lang/String;)Lorg/jsoup/c/i$h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/c/m;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    .line 81
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/c/i$g;->h()Lorg/jsoup/c/i$h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/c/i$h;->a(Ljava/lang/String;)Lorg/jsoup/c/i$h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/c/m;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1
.end method

.method protected final m(Ljava/lang/String;)Z
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/jsoup/c/m;->x:Lorg/jsoup/c/i;

    iget-object v1, p0, Lorg/jsoup/c/m;->b:Lorg/jsoup/c/i$f;

    if-ne v0, v1, :cond_0

    .line 96
    new-instance v0, Lorg/jsoup/c/i$f;

    invoke-direct {v0}, Lorg/jsoup/c/i$f;-><init>()V

    invoke-virtual {v0, p1}, Lorg/jsoup/c/i$f;->a(Ljava/lang/String;)Lorg/jsoup/c/i$h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/c/m;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1

    .line 98
    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/c/i$f;->h()Lorg/jsoup/c/i$h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/c/i$h;->a(Ljava/lang/String;)Lorg/jsoup/c/i$h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/c/m;->a(Lorg/jsoup/c/i;)Z

    move-result p1

    return p1
.end method

.method protected final n(Ljava/lang/String;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lorg/jsoup/c/m;->r:Lorg/jsoup/c/g;

    .line 7084
    iget-object v0, v0, Lorg/jsoup/c/g;->a:Lorg/jsoup/c/e;

    .line 114
    invoke-virtual {v0}, Lorg/jsoup/c/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    new-instance v1, Lorg/jsoup/c/d;

    iget-object v2, p0, Lorg/jsoup/c/m;->s:Lorg/jsoup/c/a;

    invoke-virtual {v2}, Lorg/jsoup/c/a;->b()I

    move-result v2

    invoke-direct {v1, v2, p1}, Lorg/jsoup/c/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jsoup/c/e;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected final p()Lorg/jsoup/nodes/h;
    .locals 2

    .line 103
    iget-object v0, p0, Lorg/jsoup/c/m;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 104
    iget-object v1, p0, Lorg/jsoup/c/m;->v:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
