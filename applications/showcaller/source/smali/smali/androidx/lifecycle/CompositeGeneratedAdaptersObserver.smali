.class Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "CompositeGeneratedAdaptersObserver.java"

# interfaces
.implements Landroidx/lifecycle/f;


# instance fields
.field private final d:[Landroidx/lifecycle/d;


# direct methods
.method constructor <init>([Landroidx/lifecycle/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->d:[Landroidx/lifecycle/d;

    return-void
.end method


# virtual methods
.method public c(Landroidx/lifecycle/h;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 6

    .line 1
    new-instance v0, Landroidx/lifecycle/l;

    invoke-direct {v0}, Landroidx/lifecycle/l;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->d:[Landroidx/lifecycle/d;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 3
    invoke-interface {v5, p1, p2, v3, v0}, Landroidx/lifecycle/d;->a(Landroidx/lifecycle/h;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/l;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->d:[Landroidx/lifecycle/d;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const/4 v5, 0x1

    .line 5
    invoke-interface {v4, p1, p2, v5, v0}, Landroidx/lifecycle/d;->a(Landroidx/lifecycle/h;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/l;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
