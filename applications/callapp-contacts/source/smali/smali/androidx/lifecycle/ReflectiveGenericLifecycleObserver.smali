.class Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/n;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroidx/lifecycle/b$a;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/lang/Object;

    .line 32
    sget-object v0, Landroidx/lifecycle/b;->a:Landroidx/lifecycle/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b;->b(Ljava/lang/Class;)Landroidx/lifecycle/b$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->b:Landroidx/lifecycle/b$a;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/p;Landroidx/lifecycle/j$a;)V
    .locals 3

    .line 37
    iget-object v0, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->b:Landroidx/lifecycle/b$a;

    iget-object v1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/lang/Object;

    .line 1185
    iget-object v2, v0, Landroidx/lifecycle/b$a;->a:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, p1, p2, v1}, Landroidx/lifecycle/b$a;->a(Ljava/util/List;Landroidx/lifecycle/p;Landroidx/lifecycle/j$a;Ljava/lang/Object;)V

    .line 1186
    iget-object v0, v0, Landroidx/lifecycle/b$a;->a:Ljava/util/Map;

    sget-object v2, Landroidx/lifecycle/j$a;->ON_ANY:Landroidx/lifecycle/j$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, v1}, Landroidx/lifecycle/b$a;->a(Ljava/util/List;Landroidx/lifecycle/p;Landroidx/lifecycle/j$a;Ljava/lang/Object;)V

    return-void
.end method
