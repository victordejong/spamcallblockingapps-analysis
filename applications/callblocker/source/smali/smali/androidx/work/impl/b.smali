.class public Landroidx/work/impl/b;
.super Ljava/lang/Object;
.source "OperationImpl.java"

# interfaces
.implements Landroidx/work/n;


# instance fields
.field private final c:Landroidx/lifecycle/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/n",
            "<",
            "Landroidx/work/n$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/work/impl/utils/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/a/c",
            "<",
            "Landroidx/work/n$a$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/b;->c:Landroidx/lifecycle/n;

    .line 41
    invoke-static {}, Landroidx/work/impl/utils/a/c;->d()Landroidx/work/impl/utils/a/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/b;->d:Landroidx/work/impl/utils/a/c;

    .line 43
    sget-object v0, Landroidx/work/n;->b:Landroidx/work/n$a$b;

    invoke-virtual {p0, v0}, Landroidx/work/impl/b;->a(Landroidx/work/n$a;)V

    .line 44
    return-void
.end method


# virtual methods
.method public a(Landroidx/work/n$a;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Landroidx/work/impl/b;->c:Landroidx/lifecycle/n;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/n;->a(Ljava/lang/Object;)V

    .line 65
    instance-of v0, p1, Landroidx/work/n$a$c;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Landroidx/work/impl/b;->d:Landroidx/work/impl/utils/a/c;

    check-cast p1, Landroidx/work/n$a$c;

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/a/c;->a(Ljava/lang/Object;)Z

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    instance-of v0, p1, Landroidx/work/n$a$a;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Landroidx/work/n$a$a;

    .line 69
    iget-object v0, p0, Landroidx/work/impl/b;->d:Landroidx/work/impl/utils/a/c;

    invoke-virtual {p1}, Landroidx/work/n$a$a;->a()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/a/c;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
