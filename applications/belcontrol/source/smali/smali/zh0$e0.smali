.class public Lzh0$e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e0"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzh0$e0$h;,
        Lzh0$e0$g;,
        Lzh0$e0$f;,
        Lzh0$e0$e;,
        Lzh0$e0$b;,
        Lzh0$e0$d;,
        Lzh0$e0$c;,
        Lzh0$e0$a;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/Boolean;

.field public D:Ljava/lang/Boolean;

.field public E:Lzh0$o0;

.field public F:F

.field public G:Ljava/lang/String;

.field public H:Lzh0$e0$a;

.field public I:Ljava/lang/String;

.field public J:Lzh0$o0;

.field public K:F

.field public L:Lzh0$o0;

.field public M:Ljava/lang/Float;

.field public N:Lzh0$e0$h;

.field public a:J

.field public b:Lzh0$o0;

.field public c:Lzh0$e0$a;

.field public d:F

.field public f:Lzh0$o0;

.field public g:F

.field public h:Lzh0$p;

.field public j:Lzh0$e0$c;

.field public k:Lzh0$e0$d;

.field public l:F

.field public m:[Lzh0$p;

.field public n:Lzh0$p;

.field public o:F

.field public p:Lzh0$f;

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lzh0$p;

.field public s:Ljava/lang/Integer;

.field public t:Lzh0$e0$b;

.field public u:Lzh0$e0$f;

.field public v:Lzh0$e0$g;

.field public w:Lzh0$e0$e;

.field public x:Ljava/lang/Boolean;

.field public y:Lzh0$c;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lzh0$e0;->a:J

    return-void
.end method

.method public static b()Lzh0$e0;
    .locals 8

    new-instance v0, Lzh0$e0;

    invoke-direct {v0}, Lzh0$e0;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lzh0$e0;->a:J

    sget-object v1, Lzh0$f;->b:Lzh0$f;

    iput-object v1, v0, Lzh0$e0;->b:Lzh0$o0;

    sget-object v2, Lzh0$e0$a;->a:Lzh0$e0$a;

    iput-object v2, v0, Lzh0$e0;->c:Lzh0$e0$a;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Lzh0$e0;->d:F

    const/4 v4, 0x0

    iput-object v4, v0, Lzh0$e0;->f:Lzh0$o0;

    iput v3, v0, Lzh0$e0;->g:F

    new-instance v5, Lzh0$p;

    invoke-direct {v5, v3}, Lzh0$p;-><init>(F)V

    iput-object v5, v0, Lzh0$e0;->h:Lzh0$p;

    sget-object v5, Lzh0$e0$c;->a:Lzh0$e0$c;

    iput-object v5, v0, Lzh0$e0;->j:Lzh0$e0$c;

    sget-object v5, Lzh0$e0$d;->a:Lzh0$e0$d;

    iput-object v5, v0, Lzh0$e0;->k:Lzh0$e0$d;

    const/high16 v5, 0x40800000    # 4.0f

    iput v5, v0, Lzh0$e0;->l:F

    iput-object v4, v0, Lzh0$e0;->m:[Lzh0$p;

    new-instance v5, Lzh0$p;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lzh0$p;-><init>(F)V

    iput-object v5, v0, Lzh0$e0;->n:Lzh0$p;

    iput v3, v0, Lzh0$e0;->o:F

    iput-object v1, v0, Lzh0$e0;->p:Lzh0$f;

    iput-object v4, v0, Lzh0$e0;->q:Ljava/util/List;

    new-instance v5, Lzh0$p;

    sget-object v6, Lzh0$d1;->h:Lzh0$d1;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-direct {v5, v7, v6}, Lzh0$p;-><init>(FLzh0$d1;)V

    iput-object v5, v0, Lzh0$e0;->r:Lzh0$p;

    const/16 v5, 0x190

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lzh0$e0;->s:Ljava/lang/Integer;

    sget-object v5, Lzh0$e0$b;->a:Lzh0$e0$b;

    iput-object v5, v0, Lzh0$e0;->t:Lzh0$e0$b;

    sget-object v5, Lzh0$e0$f;->a:Lzh0$e0$f;

    iput-object v5, v0, Lzh0$e0;->u:Lzh0$e0$f;

    sget-object v5, Lzh0$e0$g;->a:Lzh0$e0$g;

    iput-object v5, v0, Lzh0$e0;->v:Lzh0$e0$g;

    sget-object v5, Lzh0$e0$e;->a:Lzh0$e0$e;

    iput-object v5, v0, Lzh0$e0;->w:Lzh0$e0$e;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, v0, Lzh0$e0;->x:Ljava/lang/Boolean;

    iput-object v4, v0, Lzh0$e0;->y:Lzh0$c;

    iput-object v4, v0, Lzh0$e0;->z:Ljava/lang/String;

    iput-object v4, v0, Lzh0$e0;->A:Ljava/lang/String;

    iput-object v4, v0, Lzh0$e0;->B:Ljava/lang/String;

    iput-object v5, v0, Lzh0$e0;->C:Ljava/lang/Boolean;

    iput-object v5, v0, Lzh0$e0;->D:Ljava/lang/Boolean;

    iput-object v1, v0, Lzh0$e0;->E:Lzh0$o0;

    iput v3, v0, Lzh0$e0;->F:F

    iput-object v4, v0, Lzh0$e0;->G:Ljava/lang/String;

    iput-object v2, v0, Lzh0$e0;->H:Lzh0$e0$a;

    iput-object v4, v0, Lzh0$e0;->I:Ljava/lang/String;

    iput-object v4, v0, Lzh0$e0;->J:Lzh0$o0;

    iput v3, v0, Lzh0$e0;->K:F

    iput-object v4, v0, Lzh0$e0;->L:Lzh0$o0;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lzh0$e0;->M:Ljava/lang/Float;

    sget-object v1, Lzh0$e0$h;->a:Lzh0$e0$h;

    iput-object v1, v0, Lzh0$e0;->N:Lzh0$e0$h;

    return-object v0
.end method


# virtual methods
.method public c(Z)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lzh0$e0;->C:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object v0, p0, Lzh0$e0;->x:Ljava/lang/Boolean;

    const/4 p1, 0x0

    iput-object p1, p0, Lzh0$e0;->y:Lzh0$c;

    iput-object p1, p0, Lzh0$e0;->G:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lzh0$e0;->o:F

    sget-object v1, Lzh0$f;->b:Lzh0$f;

    iput-object v1, p0, Lzh0$e0;->E:Lzh0$o0;

    iput v0, p0, Lzh0$e0;->F:F

    iput-object p1, p0, Lzh0$e0;->I:Ljava/lang/String;

    iput-object p1, p0, Lzh0$e0;->J:Lzh0$o0;

    iput v0, p0, Lzh0$e0;->K:F

    iput-object p1, p0, Lzh0$e0;->L:Lzh0$o0;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lzh0$e0;->M:Ljava/lang/Float;

    sget-object p1, Lzh0$e0$h;->a:Lzh0$e0$h;

    iput-object p1, p0, Lzh0$e0;->N:Lzh0$e0$h;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzh0$e0;

    iget-object v1, p0, Lzh0$e0;->m:[Lzh0$p;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, [Lzh0$p;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lzh0$p;

    iput-object v1, v0, Lzh0$e0;->m:[Lzh0$p;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method
