.class final Lcom/google/android/datatransport/h/d;
.super Lcom/google/android/datatransport/h/s;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/h/d$b;
    }
.end annotation


# instance fields
.field private b:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lh/a/a;

.field private e:Lh/a/a;

.field private f:Lh/a/a;

.field private g:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/x/j/b0;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/r;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/x/c;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/l;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/p;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lh/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a/a<",
            "Lcom/google/android/datatransport/h/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/datatransport/h/s;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/datatransport/h/d;->B(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/h/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/datatransport/h/d;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private B(Landroid/content/Context;)V
    .locals 7

    invoke-static {}, Lcom/google/android/datatransport/h/j;->a()Lcom/google/android/datatransport/h/j;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/datatransport/h/u/a/a;->a(Lh/a/a;)Lh/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/datatransport/h/d;->b:Lh/a/a;

    invoke-static {p1}, Lcom/google/android/datatransport/h/u/a/c;->a(Ljava/lang/Object;)Lcom/google/android/datatransport/h/u/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/h/d;->c:Lh/a/a;

    invoke-static {}, Lcom/google/android/datatransport/h/y/c;->a()Lcom/google/android/datatransport/h/y/c;

    move-result-object v0

    invoke-static {}, Lcom/google/android/datatransport/h/y/d;->a()Lcom/google/android/datatransport/h/y/d;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/datatransport/runtime/backends/i;->a(Lh/a/a;Lh/a/a;Lh/a/a;)Lcom/google/android/datatransport/runtime/backends/i;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/h/d;->d:Lh/a/a;

    iget-object v0, p0, Lcom/google/android/datatransport/h/d;->c:Lh/a/a;

    invoke-static {v0, p1}, Lcom/google/android/datatransport/runtime/backends/k;->a(Lh/a/a;Lh/a/a;)Lcom/google/android/datatransport/runtime/backends/k;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/h/u/a/a;->a(Lh/a/a;)Lh/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/h/d;->e:Lh/a/a;

    iget-object p1, p0, Lcom/google/android/datatransport/h/d;->c:Lh/a/a;

    invoke-static {}, Lcom/google/android/datatransport/h/x/j/f;->a()Lcom/google/android/datatransport/h/x/j/f;

    move-result-object v0

    invoke-static {}, Lcom/google/android/datatransport/h/x/j/g;->a()Lcom/google/android/datatransport/h/x/j/g;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/datatransport/h/x/j/i0;->a(Lh/a/a;Lh/a/a;Lh/a/a;)Lcom/google/android/datatransport/h/x/j/i0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/h/d;->f:Lh/a/a;

    invoke-static {}, Lcom/google/android/datatransport/h/y/c;->a()Lcom/google/android/datatransport/h/y/c;

    move-result-object p1

    invoke-static {}, Lcom/google/android/datatransport/h/y/d;->a()Lcom/google/android/datatransport/h/y/d;

    move-result-object v0

    invoke-static {}, Lcom/google/android/datatransport/h/x/j/h;->a()Lcom/google/android/datatransport/h/x/j/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/datatransport/h/d;->f:Lh/a/a;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/datatransport/h/x/j/c0;->a(Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;)Lcom/google/android/datatransport/h/x/j/c0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/h/u/a/a;->a(Lh/a/a;)Lh/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/h/d;->g:Lh/a/a;

    invoke-static {}, Lcom/google/android/datatransport/h/y/c;->a()Lcom/google/android/datatransport/h/y/c;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/h/x/g;->b(Lh/a/a;)Lcom/google/android/datatransport/h/x/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/h/d;->h:Lh/a/a;

    iget-object v0, p0, Lcom/google/android/datatransport/h/d;->c:Lh/a/a;

    iget-object v1, p0, Lcom/google/android/datatransport/h/d;->g:Lh/a/a;

    invoke-static {}, Lcom/google/android/datatransport/h/y/d;->a()Lcom/google/android/datatransport/h/y/d;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/datatransport/h/x/i;->a(Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;)Lcom/google/android/datatransport/h/x/i;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/h/d;->i:Lh/a/a;

    iget-object v0, p0, Lcom/google/android/datatransport/h/d;->b:Lh/a/a;

    iget-object v1, p0, Lcom/google/android/datatransport/h/d;->e:Lh/a/a;

    iget-object v2, p0, Lcom/google/android/datatransport/h/d;->g:Lh/a/a;

    invoke-static {v0, v1, p1, v2, v2}, Lcom/google/android/datatransport/h/x/d;->a(Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;)Lcom/google/android/datatransport/h/x/d;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/h/d;->j:Lh/a/a;

    iget-object v0, p0, Lcom/google/android/datatransport/h/d;->c:Lh/a/a;

    iget-object v1, p0, Lcom/google/android/datatransport/h/d;->e:Lh/a/a;

    iget-object v5, p0, Lcom/google/android/datatransport/h/d;->g:Lh/a/a;

    iget-object v3, p0, Lcom/google/android/datatransport/h/d;->i:Lh/a/a;

    iget-object v4, p0, Lcom/google/android/datatransport/h/d;->b:Lh/a/a;

    invoke-static {}, Lcom/google/android/datatransport/h/y/c;->a()Lcom/google/android/datatransport/h/y/c;

    move-result-object v6

    move-object v2, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;->a(Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/h/d;->k:Lh/a/a;

    iget-object p1, p0, Lcom/google/android/datatransport/h/d;->b:Lh/a/a;

    iget-object v0, p0, Lcom/google/android/datatransport/h/d;->g:Lh/a/a;

    iget-object v1, p0, Lcom/google/android/datatransport/h/d;->i:Lh/a/a;

    invoke-static {p1, v0, v1, v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->a(Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;)Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/h/d;->l:Lh/a/a;

    invoke-static {}, Lcom/google/android/datatransport/h/y/c;->a()Lcom/google/android/datatransport/h/y/c;

    move-result-object p1

    invoke-static {}, Lcom/google/android/datatransport/h/y/d;->a()Lcom/google/android/datatransport/h/y/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/datatransport/h/d;->j:Lh/a/a;

    iget-object v2, p0, Lcom/google/android/datatransport/h/d;->k:Lh/a/a;

    iget-object v3, p0, Lcom/google/android/datatransport/h/d;->l:Lh/a/a;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/datatransport/h/t;->a(Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;Lh/a/a;)Lcom/google/android/datatransport/h/t;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/h/u/a/a;->a(Lh/a/a;)Lh/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/h/d;->m:Lh/a/a;

    return-void
.end method

.method public static x()Lcom/google/android/datatransport/h/s$a;
    .locals 2

    new-instance v0, Lcom/google/android/datatransport/h/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/datatransport/h/d$b;-><init>(Lcom/google/android/datatransport/h/d$a;)V

    return-object v0
.end method


# virtual methods
.method a()Lcom/google/android/datatransport/h/x/j/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/h/d;->g:Lh/a/a;

    invoke-interface {v0}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/h/x/j/c;

    return-object v0
.end method

.method p()Lcom/google/android/datatransport/h/r;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/h/d;->m:Lh/a/a;

    invoke-interface {v0}, Lh/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/h/r;

    return-object v0
.end method
