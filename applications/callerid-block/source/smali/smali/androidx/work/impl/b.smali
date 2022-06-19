.class public Landroidx/work/impl/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/work/h;


# instance fields
.field private final c:Landroidx/lifecycle/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/m<",
            "Landroidx/work/h$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/work/impl/utils/futures/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/a<",
            "Landroidx/work/h$b$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/m;

    invoke-direct {v0}, Landroidx/lifecycle/m;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/b;->c:Landroidx/lifecycle/m;

    invoke-static {}, Landroidx/work/impl/utils/futures/a;->u()Landroidx/work/impl/utils/futures/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/b;->d:Landroidx/work/impl/utils/futures/a;

    sget-object v0, Landroidx/work/h;->b:Landroidx/work/h$b$b;

    invoke-virtual {p0, v0}, Landroidx/work/impl/b;->a(Landroidx/work/h$b;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/work/h$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/b;->c:Landroidx/lifecycle/m;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/m;->g(Ljava/lang/Object;)V

    instance-of v0, p1, Landroidx/work/h$b$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/b;->d:Landroidx/work/impl/utils/futures/a;

    check-cast p1, Landroidx/work/h$b$c;

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/a;->q(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/work/h$b$a;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/work/h$b$a;

    iget-object v0, p0, Landroidx/work/impl/b;->d:Landroidx/work/impl/utils/futures/a;

    invoke-virtual {p1}, Landroidx/work/h$b$a;->a()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/a;->r(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-void
.end method
