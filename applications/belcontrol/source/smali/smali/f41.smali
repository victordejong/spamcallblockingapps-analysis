.class public Lf41;
.super Lv31;
.source ""


# static fields
.field public static final k:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lx31;

.field public final b:Lw31;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln41;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ld51;

.field public e:Lf51;

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^[a-zA-Z0-9 ]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf41;->k:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lw31;Lx31;)V
    .locals 2

    invoke-direct {p0}, Lv31;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf41;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf41;->f:Z

    iput-boolean v0, p0, Lf41;->g:Z

    iput-object p1, p0, Lf41;->b:Lw31;

    iput-object p2, p0, Lf41;->a:Lx31;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf41;->h:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lf41;->m(Landroid/view/View;)V

    invoke-virtual {p2}, Lx31;->c()Ly31;

    move-result-object v0

    sget-object v1, Ly31;->b:Ly31;

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lx31;->c()Ly31;

    move-result-object v0

    sget-object v1, Ly31;->d:Ly31;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lh51;

    invoke-virtual {p2}, Lx31;->f()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lx31;->g()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lh51;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lg51;

    invoke-virtual {p2}, Lx31;->j()Landroid/webkit/WebView;

    move-result-object p2

    invoke-direct {v0, p2}, Lg51;-><init>(Landroid/webkit/WebView;)V

    :goto_1
    iput-object v0, p0, Lf41;->e:Lf51;

    iget-object p2, p0, Lf41;->e:Lf51;

    invoke-virtual {p2}, Lf51;->a()V

    invoke-static {}, Ll41;->a()Ll41;

    move-result-object p2

    invoke-virtual {p2, p0}, Ll41;->b(Lf41;)V

    iget-object p2, p0, Lf41;->e:Lf51;

    invoke-virtual {p2, p1}, Lf51;->e(Lw31;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;La41;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lf41;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lf41;->k(Landroid/view/View;)V

    invoke-virtual {p0, p3}, Lf41;->h(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lf41;->f(Landroid/view/View;)Ln41;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lf41;->c:Ljava/util/List;

    new-instance v1, Ln41;

    invoke-direct {v1, p1, p2, p3}, Ln41;-><init>(Landroid/view/View;La41;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lf41;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf41;->d:Ld51;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    invoke-virtual {p0}, Lf41;->y()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf41;->g:Z

    invoke-virtual {p0}, Lf41;->t()Lf51;

    move-result-object v0

    invoke-virtual {v0}, Lf51;->s()V

    invoke-static {}, Ll41;->a()Ll41;

    move-result-object v0

    invoke-virtual {v0, p0}, Ll41;->f(Lf41;)V

    invoke-virtual {p0}, Lf41;->t()Lf51;

    move-result-object v0

    invoke-virtual {v0}, Lf51;->n()V

    const/4 v0, 0x0

    iput-object v0, p0, Lf41;->e:Lf51;

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lf41;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AdView is null"

    invoke-static {p1, v0}, Lb51;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lf41;->n()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lf41;->m(Landroid/view/View;)V

    invoke-virtual {p0}, Lf41;->t()Lf51;

    move-result-object v0

    invoke-virtual {v0}, Lf51;->w()V

    invoke-virtual {p0, p1}, Lf41;->o(Landroid/view/View;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lf41;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf41;->f:Z

    invoke-static {}, Ll41;->a()Ll41;

    move-result-object v0

    invoke-virtual {v0, p0}, Ll41;->d(Lf41;)V

    invoke-static {}, Lq41;->c()Lq41;

    move-result-object v0

    invoke-virtual {v0}, Lq41;->g()F

    move-result v0

    iget-object v1, p0, Lf41;->e:Lf51;

    invoke-virtual {v1, v0}, Lf51;->b(F)V

    iget-object v0, p0, Lf41;->e:Lf51;

    iget-object v1, p0, Lf41;->a:Lx31;

    invoke-virtual {v0, p0, v1}, Lf51;->f(Lf41;Lx31;)V

    return-void
.end method

.method public final f(Landroid/view/View;)Ln41;
    .locals 3

    iget-object v0, p0, Lf41;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln41;

    invoke-virtual {v1}, Ln41;->a()Ld51;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ln41;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lf41;->c:Ljava/util/List;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    sget-object v0, Lf41;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FriendlyObstruction has improperly formatted detailed reason"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public i(Lorg/json/JSONObject;)V
    .locals 1

    invoke-virtual {p0}, Lf41;->x()V

    invoke-virtual {p0}, Lf41;->t()Lf51;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf51;->l(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf41;->j:Z

    return-void
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Lf41;->w()V

    invoke-virtual {p0}, Lf41;->t()Lf51;

    move-result-object v0

    invoke-virtual {v0}, Lf51;->t()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf41;->i:Z

    return-void
.end method

.method public final k(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FriendlyObstruction is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l()V
    .locals 1

    invoke-virtual {p0}, Lf41;->x()V

    invoke-virtual {p0}, Lf41;->t()Lf51;

    move-result-object v0

    invoke-virtual {v0}, Lf51;->v()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf41;->j:Z

    return-void
.end method

.method public final m(Landroid/view/View;)V
    .locals 1

    new-instance v0, Ld51;

    invoke-direct {v0, p1}, Ld51;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lf41;->d:Ld51;

    return-void
.end method

.method public n()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lf41;->d:Ld51;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final o(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Ll41;->a()Ll41;

    move-result-object v0

    invoke-virtual {v0}, Ll41;->c()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf41;

    if-eq v1, p0, :cond_0

    invoke-virtual {v1}, Lf41;->n()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v1, v1, Lf41;->d:Ld51;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lf41;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lf41;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lf41;->f:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lf41;->g:Z

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf41;->h:Ljava/lang/String;

    return-object v0
.end method

.method public t()Lf51;
    .locals 1

    iget-object v0, p0, Lf41;->e:Lf51;

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lf41;->b:Lw31;

    invoke-virtual {v0}, Lw31;->b()Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, Lf41;->b:Lw31;

    invoke-virtual {v0}, Lw31;->c()Z

    move-result v0

    return v0
.end method

.method public final w()V
    .locals 2

    iget-boolean v0, p0, Lf41;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impression event can only be sent once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final x()V
    .locals 2

    iget-boolean v0, p0, Lf41;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Loaded event can only be sent once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public y()V
    .locals 1

    iget-boolean v0, p0, Lf41;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lf41;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
