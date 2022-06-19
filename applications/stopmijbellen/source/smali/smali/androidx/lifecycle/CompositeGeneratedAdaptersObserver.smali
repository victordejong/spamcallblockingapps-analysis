.class Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/h;


# instance fields
.field public final a:[Landroidx/lifecycle/e;


# direct methods
.method public constructor <init>([Landroidx/lifecycle/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroidx/lifecycle/e;

    return-void
.end method


# virtual methods
.method public d(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;)V
    .locals 7

    .line 1
    new-instance v0, Lp6/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lp6/c;-><init>(I)V

    .line 2
    iget-object v2, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroidx/lifecycle/e;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 3
    invoke-interface {v6, p1, p2, v4, v0}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;ZLp6/c;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroidx/lifecycle/e;

    array-length v3, v2

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 5
    invoke-interface {v5, p1, p2, v1, v0}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/f$b;ZLp6/c;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
