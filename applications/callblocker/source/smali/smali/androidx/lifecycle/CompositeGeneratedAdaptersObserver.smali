.class Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "CompositeGeneratedAdaptersObserver.java"

# interfaces
.implements Landroidx/lifecycle/f;


# instance fields
.field private final a:[Landroidx/lifecycle/c;


# direct methods
.method constructor <init>([Landroidx/lifecycle/c;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroidx/lifecycle/c;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 30
    new-instance v2, Landroidx/lifecycle/m;

    invoke-direct {v2}, Landroidx/lifecycle/m;-><init>()V

    .line 31
    iget-object v3, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroidx/lifecycle/c;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 32
    invoke-interface {v5, p1, p2, v0, v2}, Landroidx/lifecycle/c;->a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;ZLandroidx/lifecycle/m;)V

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Landroidx/lifecycle/c;

    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 35
    const/4 v5, 0x1

    invoke-interface {v4, p1, p2, v5, v2}, Landroidx/lifecycle/c;->a(Landroidx/lifecycle/h;Landroidx/lifecycle/e$a;ZLandroidx/lifecycle/m;)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    :cond_1
    return-void
.end method
