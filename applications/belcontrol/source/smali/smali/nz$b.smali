.class public Lnz$b;
.super Lnz;
.source ""

# interfaces
.implements Lgz$a;
.implements Lgz$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnz$b$a;,
        Lnz$b$c;,
        Lnz$b$b;
    }
.end annotation


# static fields
.field public static final w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final k:Lnz$f;

.field public final l:Ljava/lang/Object;

.field public final m:Ljava/lang/Object;

.field public final n:Ljava/lang/Object;

.field public final o:Ljava/lang/Object;

.field public p:I

.field public q:Z

.field public r:Z

.field public final s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnz$b$b;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnz$b$c;",
            ">;"
        }
    .end annotation
.end field

.field public u:Lgz$e;

.field public v:Lgz$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lnz$b;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lnz$b;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnz$f;)V
    .locals 1

    invoke-direct {p0, p1}, Lnz;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz$b;->s:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnz$b;->t:Ljava/util/ArrayList;

    iput-object p2, p0, Lnz$b;->k:Lnz$f;

    invoke-static {p1}, Lgz;->g(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lnz$b;->l:Ljava/lang/Object;

    invoke-virtual {p0}, Lnz$b;->H()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lnz$b;->m:Ljava/lang/Object;

    invoke-virtual {p0}, Lnz$b;->I()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lnz$b;->n:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lux;->mr_user_route_category_name:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lgz;->d(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnz$b;->o:Ljava/lang/Object;

    invoke-virtual {p0}, Lnz$b;->U()V

    return-void
.end method


# virtual methods
.method public B(Ldz$i;)V
    .locals 2

    invoke-virtual {p1}, Ldz$i;->q()Lzy;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lnz$b;->l:Ljava/lang/Object;

    iget-object v1, p0, Lnz$b;->o:Ljava/lang/Object;

    invoke-static {v0, v1}, Lgz;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lnz$b$c;

    invoke-direct {v1, p1, v0}, Lnz$b$c;-><init>(Ldz$i;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lgz$d;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lnz$b;->n:Ljava/lang/Object;

    invoke-static {v0, p1}, Lgz$f;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lnz$b;->V(Lnz$b$c;)V

    iget-object p1, p0, Lnz$b;->t:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lnz$b;->l:Ljava/lang/Object;

    invoke-static {p1, v0}, Lgz;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnz$b;->l:Ljava/lang/Object;

    const v1, 0x800003

    invoke-static {v0, v1}, Lgz;->i(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnz$b;->J(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lnz$b;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz$b$b;

    iget-object v0, v0, Lnz$b$b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ldz$i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ldz$i;->H()V

    :cond_1
    :goto_0
    return-void
.end method

.method public C(Ldz$i;)V
    .locals 1

    invoke-virtual {p1}, Ldz$i;->q()Lzy;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0, p1}, Lnz$b;->L(Ldz$i;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lnz$b;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnz$b$c;

    invoke-virtual {p0, p1}, Lnz$b;->V(Lnz$b$c;)V

    :cond_0
    return-void
.end method

.method public D(Ldz$i;)V
    .locals 2

    invoke-virtual {p1}, Ldz$i;->q()Lzy;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0, p1}, Lnz$b;->L(Ldz$i;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lnz$b;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnz$b$c;

    iget-object v0, p1, Lnz$b$c;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgz$d;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p1, Lnz$b$c;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lgz$f;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lnz$b;->l:Ljava/lang/Object;

    iget-object p1, p1, Lnz$b$c;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, Lgz;->k(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public E(Ldz$i;)V
    .locals 1

    invoke-virtual {p1}, Ldz$i;->B()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ldz$i;->q()Lzy;

    move-result-object v0

    if-eq v0, p0, :cond_1

    invoke-virtual {p0, p1}, Lnz$b;->L(Ldz$i;)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object v0, p0, Lnz$b;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnz$b$c;

    iget-object p1, p1, Lnz$b$c;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ldz$i;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnz$b;->K(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object v0, p0, Lnz$b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnz$b$b;

    iget-object p1, p1, Lnz$b$b;->a:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, p1}, Lnz$b;->R(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final F(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lnz$b;->O(Ljava/lang/Object;)Lnz$b$c;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lnz$b;->J(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0, p1}, Lnz$b;->G(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnz$b$b;

    invoke-direct {v1, p1, v0}, Lnz$b$b;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnz$b;->T(Lnz$b$b;)V

    iget-object p1, p0, Lnz$b;->s:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final G(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lnz$b;->M()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p1, "DEFAULT_ROUTE"

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lnz$b;->N(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "ROUTE_%08x"

    invoke-static {v0, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lnz$b;->K(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    return-object p1

    :cond_2
    const/4 v0, 0x2

    const/4 v3, 0x2

    :goto_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%s_%d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnz$b;->K(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public H()Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lgz;->c(Lgz$a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public I()Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lgz;->f(Lgz$g;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public J(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lnz$b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lnz$b;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz$b$b;

    iget-object v2, v2, Lnz$b$b;->a:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public K(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lnz$b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lnz$b;->s:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz$b$b;

    iget-object v2, v2, Lnz$b$b;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public L(Ldz$i;)I
    .locals 3

    iget-object v0, p0, Lnz$b;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lnz$b;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnz$b$c;

    iget-object v2, v2, Lnz$b$c;->a:Ldz$i;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public M()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnz$b;->v:Lgz$c;

    if-nez v0, :cond_0

    new-instance v0, Lgz$c;

    invoke-direct {v0}, Lgz$c;-><init>()V

    iput-object v0, p0, Lnz$b;->v:Lgz$c;

    :cond_0
    iget-object v0, p0, Lnz$b;->v:Lgz$c;

    iget-object v1, p0, Lnz$b;->l:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lgz$c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public N(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lzy;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lgz$d;->a(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public O(Ljava/lang/Object;)Lnz$b$c;
    .locals 1

    invoke-static {p1}, Lgz$d;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lnz$b$c;

    if-eqz v0, :cond_0

    check-cast p1, Lnz$b$c;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public P(Lnz$b$b;Lxy$a;)V
    .locals 2

    iget-object v0, p1, Lnz$b$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Lgz$d;->d(Ljava/lang/Object;)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lnz$b;->w:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Lxy$a;->b(Ljava/util/Collection;)Lxy$a;

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Lnz$b;->x:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Lxy$a;->b(Ljava/util/Collection;)Lxy$a;

    :cond_1
    iget-object v0, p1, Lnz$b$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Lgz$d;->c(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Lxy$a;->k(I)Lxy$a;

    iget-object v0, p1, Lnz$b$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Lgz$d;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Lxy$a;->j(I)Lxy$a;

    iget-object v0, p1, Lnz$b$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Lgz$d;->f(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Lxy$a;->m(I)Lxy$a;

    iget-object v0, p1, Lnz$b$b;->a:Ljava/lang/Object;

    invoke-static {v0}, Lgz$d;->h(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Lxy$a;->o(I)Lxy$a;

    iget-object p1, p1, Lnz$b$b;->a:Ljava/lang/Object;

    invoke-static {p1}, Lgz$d;->g(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p2, p1}, Lxy$a;->n(I)Lxy$a;

    return-void
.end method

.method public Q()V
    .locals 4

    new-instance v0, Laz$a;

    invoke-direct {v0}, Laz$a;-><init>()V

    iget-object v1, p0, Lnz$b;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lnz$b;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnz$b$b;

    iget-object v3, v3, Lnz$b$b;->c:Lxy;

    invoke-virtual {v0, v3}, Laz$a;->a(Lxy;)Laz$a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Laz$a;->b()Laz;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzy;->x(Laz;)V

    return-void
.end method

.method public R(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lnz$b;->u:Lgz$e;

    if-nez v0, :cond_0

    new-instance v0, Lgz$e;

    invoke-direct {v0}, Lgz$e;-><init>()V

    iput-object v0, p0, Lnz$b;->u:Lgz$e;

    :cond_0
    iget-object v0, p0, Lnz$b;->u:Lgz$e;

    iget-object v1, p0, Lnz$b;->l:Ljava/lang/Object;

    const v2, 0x800003

    invoke-virtual {v0, v1, v2, p1}, Lgz$e;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public S()V
    .locals 3

    iget-boolean v0, p0, Lnz$b;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnz$b;->r:Z

    iget-object v0, p0, Lnz$b;->l:Ljava/lang/Object;

    iget-object v1, p0, Lnz$b;->m:Ljava/lang/Object;

    invoke-static {v0, v1}, Lgz;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lnz$b;->p:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnz$b;->r:Z

    iget-object v1, p0, Lnz$b;->l:Ljava/lang/Object;

    iget-object v2, p0, Lnz$b;->m:Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lgz;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public T(Lnz$b$b;)V
    .locals 3

    new-instance v0, Lxy$a;

    iget-object v1, p1, Lnz$b$b;->b:Ljava/lang/String;

    iget-object v2, p1, Lnz$b$b;->a:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lnz$b;->N(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lxy$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lnz$b;->P(Lnz$b$b;Lxy$a;)V

    invoke-virtual {v0}, Lxy$a;->c()Lxy;

    move-result-object v0

    iput-object v0, p1, Lnz$b$b;->c:Lxy;

    return-void
.end method

.method public final U()V
    .locals 3

    invoke-virtual {p0}, Lnz$b;->S()V

    iget-object v0, p0, Lnz$b;->l:Ljava/lang/Object;

    invoke-static {v0}, Lgz;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnz$b;->F(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnz$b;->Q()V

    :cond_1
    return-void
.end method

.method public V(Lnz$b$c;)V
    .locals 2

    iget-object v0, p1, Lnz$b$c;->b:Ljava/lang/Object;

    iget-object v1, p1, Lnz$b$c;->a:Ldz$i;

    invoke-virtual {v1}, Ldz$i;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgz$f;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lnz$b$c;->b:Ljava/lang/Object;

    iget-object v1, p1, Lnz$b$c;->a:Ldz$i;

    invoke-virtual {v1}, Ldz$i;->n()I

    move-result v1

    invoke-static {v0, v1}, Lgz$f;->c(Ljava/lang/Object;I)V

    iget-object v0, p1, Lnz$b$c;->b:Ljava/lang/Object;

    iget-object v1, p1, Lnz$b$c;->a:Ldz$i;

    invoke-virtual {v1}, Ldz$i;->m()I

    move-result v1

    invoke-static {v0, v1}, Lgz$f;->b(Ljava/lang/Object;I)V

    iget-object v0, p1, Lnz$b$c;->b:Ljava/lang/Object;

    iget-object v1, p1, Lnz$b$c;->a:Ldz$i;

    invoke-virtual {v1}, Ldz$i;->r()I

    move-result v1

    invoke-static {v0, v1}, Lgz$f;->d(Ljava/lang/Object;I)V

    iget-object v0, p1, Lnz$b$c;->b:Ljava/lang/Object;

    iget-object v1, p1, Lnz$b$c;->a:Ldz$i;

    invoke-virtual {v1}, Ldz$i;->t()I

    move-result v1

    invoke-static {v0, v1}, Lgz$f;->g(Ljava/lang/Object;I)V

    iget-object v0, p1, Lnz$b$c;->b:Ljava/lang/Object;

    iget-object p1, p1, Lnz$b$c;->a:Ldz$i;

    invoke-virtual {p1}, Ldz$i;->s()I

    move-result p1

    invoke-static {v0, p1}, Lgz$f;->f(Ljava/lang/Object;I)V

    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lnz$b;->O(Ljava/lang/Object;)Lnz$b$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lnz$b$c;->a:Ldz$i;

    invoke-virtual {p1, p2}, Ldz$i;->G(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/Object;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lnz$b;->O(Ljava/lang/Object;)Lnz$b$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lnz$b$c;->a:Ldz$i;

    invoke-virtual {p1, p2}, Ldz$i;->F(I)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lnz$b;->O(Ljava/lang/Object;)Lnz$b$c;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lnz$b;->J(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lnz$b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnz$b$b;

    invoke-virtual {p0, p1}, Lnz$b;->T(Lnz$b$b;)V

    invoke-virtual {p0}, Lnz$b;->Q()V

    :cond_0
    return-void
.end method

.method public f(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lnz$b;->O(Ljava/lang/Object;)Lnz$b$c;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lnz$b;->J(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lnz$b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lnz$b;->Q()V

    :cond_0
    return-void
.end method

.method public h(ILjava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lnz$b;->l:Ljava/lang/Object;

    const v0, 0x800003

    invoke-static {p1, v0}, Lgz;->i(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lnz$b;->O(Ljava/lang/Object;)Lnz$b$c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lnz$b$c;->a:Ldz$i;

    invoke-virtual {p1}, Ldz$i;->H()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lnz$b;->J(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object p2, p0, Lnz$b;->s:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnz$b$b;

    iget-object p2, p0, Lnz$b;->k:Lnz$f;

    iget-object p1, p1, Lnz$b$b;->b:Ljava/lang/String;

    invoke-interface {p2, p1}, Lnz$f;->c(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public j(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnz$b;->F(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lnz$b;->Q()V

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Lnz$b;->O(Ljava/lang/Object;)Lnz$b$c;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lnz$b;->J(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lnz$b;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnz$b$b;

    invoke-static {p1}, Lgz$d;->f(Ljava/lang/Object;)I

    move-result p1

    iget-object v1, v0, Lnz$b$b;->c:Lxy;

    invoke-virtual {v1}, Lxy;->u()I

    move-result v1

    if-eq p1, v1, :cond_0

    new-instance v1, Lxy$a;

    iget-object v2, v0, Lnz$b$b;->c:Lxy;

    invoke-direct {v1, v2}, Lxy$a;-><init>(Lxy;)V

    invoke-virtual {v1, p1}, Lxy$a;->m(I)Lxy$a;

    invoke-virtual {v1}, Lxy$a;->c()Lxy;

    move-result-object p1

    iput-object p1, v0, Lnz$b$b;->c:Lxy;

    invoke-virtual {p0}, Lnz$b;->Q()V

    :cond_0
    return-void
.end method

.method public t(Ljava/lang/String;)Lzy$e;
    .locals 1

    invoke-virtual {p0, p1}, Lnz$b;->K(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lnz$b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnz$b$b;

    new-instance v0, Lnz$b$a;

    iget-object p1, p1, Lnz$b$b;->a:Ljava/lang/Object;

    invoke-direct {v0, p1}, Lnz$b$a;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public v(Lyy;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lyy;->d()Lcz;

    move-result-object v1

    invoke-virtual {v1}, Lcz;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    or-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const-string v5, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    const/high16 v4, 0x800000

    or-int/2addr v3, v4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lyy;->e()Z

    move-result v0

    move p1, v0

    move v0, v3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iget v1, p0, Lnz$b;->p:I

    if-ne v1, v0, :cond_4

    iget-boolean v1, p0, Lnz$b;->q:Z

    if-eq v1, p1, :cond_5

    :cond_4
    iput v0, p0, Lnz$b;->p:I

    iput-boolean p1, p0, Lnz$b;->q:Z

    invoke-virtual {p0}, Lnz$b;->U()V

    :cond_5
    return-void
.end method
