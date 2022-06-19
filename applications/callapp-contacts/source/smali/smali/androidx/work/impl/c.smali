.class public final Landroidx/work/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/work/n;


# instance fields
.field private final c:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Landroidx/work/n$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroidx/work/impl/utils/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/a/c<",
            "Landroidx/work/n$a$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0}, Landroidx/lifecycle/t;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/c;->c:Landroidx/lifecycle/t;

    .line 41
    invoke-static {}, Landroidx/work/impl/utils/a/c;->a()Landroidx/work/impl/utils/a/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/c;->d:Landroidx/work/impl/utils/a/c;

    .line 43
    sget-object v0, Landroidx/work/n;->b:Landroidx/work/n$a$b;

    invoke-virtual {p0, v0}, Landroidx/work/impl/c;->a(Landroidx/work/n$a;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/work/n$a$c;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Landroidx/work/impl/c;->d:Landroidx/work/impl/utils/a/c;

    return-object v0
.end method

.method public final a(Landroidx/work/n$a;)V
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/work/impl/c;->c:Landroidx/lifecycle/t;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/t;->a(Ljava/lang/Object;)V

    .line 65
    instance-of v0, p1, Landroidx/work/n$a$c;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Landroidx/work/impl/c;->d:Landroidx/work/impl/utils/a/c;

    check-cast p1, Landroidx/work/n$a$c;

    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/a/c;->a(Ljava/lang/Object;)Z

    return-void

    .line 67
    :cond_0
    instance-of v0, p1, Landroidx/work/n$a$a;

    if-eqz v0, :cond_1

    .line 68
    check-cast p1, Landroidx/work/n$a$a;

    .line 69
    iget-object v0, p0, Landroidx/work/impl/c;->d:Landroidx/work/impl/utils/a/c;

    .line 1139
    iget-object p1, p1, Landroidx/work/n$a$a;->a:Ljava/lang/Throwable;

    .line 69
    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/a/c;->a(Ljava/lang/Throwable;)Z

    :cond_1
    return-void
.end method
