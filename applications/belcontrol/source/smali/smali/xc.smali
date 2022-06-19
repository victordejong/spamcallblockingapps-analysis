.class public abstract Lxc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lwc$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxc$q;,
        Lxc$p;,
        Lxc$o;,
        Lxc$r;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lxc<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lwc$b;"
    }
.end annotation


# static fields
.field public static final m:Lxc$r;

.field public static final n:Lxc$r;

.field public static final o:Lxc$r;

.field public static final p:Lxc$r;

.field public static final q:Lxc$r;

.field public static final r:Lxc$r;

.field public static final s:Lxc$r;


# instance fields
.field public a:F

.field public b:F

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final e:Lyc;

.field public f:Z

.field public g:F

.field public h:F

.field public i:J

.field public j:F

.field public final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lxc$p;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lxc$q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lxc$f;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Lxc$f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lxc;->m:Lxc$r;

    new-instance v0, Lxc$g;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Lxc$g;-><init>(Ljava/lang/String;)V

    new-instance v0, Lxc$h;

    const-string v1, "translationZ"

    invoke-direct {v0, v1}, Lxc$h;-><init>(Ljava/lang/String;)V

    new-instance v0, Lxc$i;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Lxc$i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lxc;->n:Lxc$r;

    new-instance v0, Lxc$j;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Lxc$j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lxc;->o:Lxc$r;

    new-instance v0, Lxc$k;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Lxc$k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lxc;->p:Lxc$r;

    new-instance v0, Lxc$l;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Lxc$l;-><init>(Ljava/lang/String;)V

    sput-object v0, Lxc;->q:Lxc$r;

    new-instance v0, Lxc$m;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Lxc$m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lxc;->r:Lxc$r;

    new-instance v0, Lxc$n;

    const-string v1, "x"

    invoke-direct {v0, v1}, Lxc$n;-><init>(Ljava/lang/String;)V

    new-instance v0, Lxc$a;

    const-string v1, "y"

    invoke-direct {v0, v1}, Lxc$a;-><init>(Ljava/lang/String;)V

    new-instance v0, Lxc$b;

    const-string v1, "z"

    invoke-direct {v0, v1}, Lxc$b;-><init>(Ljava/lang/String;)V

    new-instance v0, Lxc$c;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lxc$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lxc;->s:Lxc$r;

    new-instance v0, Lxc$d;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Lxc$d;-><init>(Ljava/lang/String;)V

    new-instance v0, Lxc$e;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Lxc$e;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lyc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lyc<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lxc;->a:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lxc;->b:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lxc;->c:Z

    iput-boolean v1, p0, Lxc;->f:Z

    iput v0, p0, Lxc;->g:F

    neg-float v0, v0

    iput v0, p0, Lxc;->h:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lxc;->i:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxc;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxc;->l:Ljava/util/ArrayList;

    iput-object p1, p0, Lxc;->d:Ljava/lang/Object;

    iput-object p2, p0, Lxc;->e:Lyc;

    sget-object p1, Lxc;->p:Lxc$r;

    if-eq p2, p1, :cond_4

    sget-object p1, Lxc;->q:Lxc$r;

    if-eq p2, p1, :cond_4

    sget-object p1, Lxc;->r:Lxc$r;

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lxc;->s:Lxc$r;

    const/high16 v0, 0x3b800000    # 0.00390625f

    if-ne p2, p1, :cond_2

    :cond_1
    :goto_0
    iput v0, p0, Lxc;->j:F

    goto :goto_3

    :cond_2
    sget-object p1, Lxc;->n:Lxc$r;

    if-eq p2, p1, :cond_1

    sget-object p1, Lxc;->o:Lxc$r;

    if-ne p2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    :goto_2
    iput p1, p0, Lxc;->j:F

    :goto_3
    return-void
.end method

.method public static g(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 6

    iget-wide v0, p0, Lxc;->i:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    iput-wide p1, p0, Lxc;->i:J

    iget p1, p0, Lxc;->b:F

    invoke-virtual {p0, p1}, Lxc;->h(F)V

    return v2

    :cond_0
    sub-long v0, p1, v0

    iput-wide p1, p0, Lxc;->i:J

    invoke-virtual {p0, v0, v1}, Lxc;->l(J)Z

    move-result p1

    iget p2, p0, Lxc;->b:F

    iget v0, p0, Lxc;->g:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lxc;->b:F

    iget v0, p0, Lxc;->h:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lxc;->b:F

    invoke-virtual {p0, p2}, Lxc;->h(F)V

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Lxc;->c(Z)V

    :cond_1
    return p1
.end method

.method public b()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lxc;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lxc;->c(Z)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be canceled on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxc;->f:Z

    invoke-static {}, Lwc;->d()Lwc;

    move-result-object v1

    invoke-virtual {v1, p0}, Lwc;->g(Lwc$b;)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lxc;->i:J

    iput-boolean v0, p0, Lxc;->c:Z

    :goto_0
    iget-object v1, p0, Lxc;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lxc;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lxc;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxc$p;

    iget v2, p0, Lxc;->b:F

    iget v3, p0, Lxc;->a:F

    invoke-interface {v1, p0, p1, v2, v3}, Lxc$p;->a(Lxc;ZFF)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lxc;->k:Ljava/util/ArrayList;

    invoke-static {p1}, Lxc;->g(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final d()F
    .locals 2

    iget-object v0, p0, Lxc;->e:Lyc;

    iget-object v1, p0, Lxc;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lyc;->getValue(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public e()F
    .locals 2

    iget v0, p0, Lxc;->j:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lxc;->f:Z

    return v0
.end method

.method public h(F)V
    .locals 3

    iget-object v0, p0, Lxc;->e:Lyc;

    iget-object v1, p0, Lxc;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lyc;->setValue(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lxc;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lxc;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxc;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxc$q;

    iget v1, p0, Lxc;->b:F

    iget v2, p0, Lxc;->a:F

    invoke-interface {v0, p0, v1, v2}, Lxc$q;->a(Lxc;FF)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lxc;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Lxc;->g(Ljava/util/ArrayList;)V

    return-void
.end method

.method public i(F)Lxc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Lxc;->b:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lxc;->c:Z

    return-object p0
.end method

.method public j()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lxc;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lxc;->k()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be started on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()V
    .locals 3

    iget-boolean v0, p0, Lxc;->f:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxc;->f:Z

    iget-boolean v0, p0, Lxc;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lxc;->d()F

    move-result v0

    iput v0, p0, Lxc;->b:F

    :cond_0
    iget v0, p0, Lxc;->b:F

    iget v1, p0, Lxc;->g:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_1

    iget v1, p0, Lxc;->h:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    invoke-static {}, Lwc;->d()Lwc;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lwc;->a(Lwc$b;J)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Starting value need to be in between min value and max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract l(J)Z
.end method
