.class public Lwc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwc$c;,
        Lwc$d;,
        Lwc$e;,
        Lwc$a;,
        Lwc$b;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lwc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lh4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4<",
            "Lwc$b;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lwc$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lwc$a;

.field public d:Lwc$c;

.field public e:J

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lwc;->g:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh4;

    invoke-direct {v0}, Lh4;-><init>()V

    iput-object v0, p0, Lwc;->a:Lh4;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lwc;->b:Ljava/util/ArrayList;

    new-instance v0, Lwc$a;

    invoke-direct {v0, p0}, Lwc$a;-><init>(Lwc;)V

    iput-object v0, p0, Lwc;->c:Lwc$a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lwc;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwc;->f:Z

    return-void
.end method

.method public static d()Lwc;
    .locals 2

    sget-object v0, Lwc;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lwc;

    invoke-direct {v1}, Lwc;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwc;

    return-object v0
.end method


# virtual methods
.method public a(Lwc$b;J)V
    .locals 3

    iget-object v0, p0, Lwc;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lwc;->e()Lwc$c;

    move-result-object v0

    invoke-virtual {v0}, Lwc$c;->a()V

    :cond_0
    iget-object v0, p0, Lwc;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lwc;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_2

    iget-object v0, p0, Lwc;->a:Lh4;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lh4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lwc;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lwc;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lwc;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lwc;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lwc;->f:Z

    :cond_2
    return-void
.end method

.method public c(J)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lwc;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lwc;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwc$b;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3, v0, v1}, Lwc;->f(Lwc$b;J)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, p1, p2}, Lwc$b;->a(J)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lwc;->b()V

    return-void
.end method

.method public e()Lwc$c;
    .locals 2

    iget-object v0, p0, Lwc;->d:Lwc$c;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    new-instance v0, Lwc$e;

    iget-object v1, p0, Lwc;->c:Lwc$a;

    invoke-direct {v0, v1}, Lwc$e;-><init>(Lwc$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lwc$d;

    iget-object v1, p0, Lwc;->c:Lwc$a;

    invoke-direct {v0, v1}, Lwc$d;-><init>(Lwc$a;)V

    :goto_0
    iput-object v0, p0, Lwc;->d:Lwc$c;

    :cond_1
    iget-object v0, p0, Lwc;->d:Lwc$c;

    return-object v0
.end method

.method public final f(Lwc$b;J)Z
    .locals 4

    iget-object v0, p0, Lwc;->a:Lh4;

    invoke-virtual {v0, p1}, Lh4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, p2

    if-gez v0, :cond_1

    iget-object p2, p0, Lwc;->a:Lh4;

    invoke-virtual {p2, p1}, Lh4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public g(Lwc$b;)V
    .locals 2

    iget-object v0, p0, Lwc;->a:Lh4;

    invoke-virtual {v0, p1}, Lh4;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lwc;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lwc;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lwc;->f:Z

    :cond_0
    return-void
.end method
