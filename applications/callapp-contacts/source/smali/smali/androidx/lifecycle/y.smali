.class public final Landroidx/lifecycle/y;
.super Landroidx/lifecycle/ab$c;
.source "SourceFile"


# static fields
.field private static final f:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final g:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Landroidx/lifecycle/ab$b;

.field private final c:Landroid/os/Bundle;

.field private final d:Landroidx/lifecycle/j;

.field private final e:Landroidx/savedstate/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 149
    const-class v1, Landroid/app/Application;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroidx/lifecycle/x;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sput-object v0, Landroidx/lifecycle/y;->f:[Ljava/lang/Class;

    new-array v0, v3, [Ljava/lang/Class;

    .line 151
    const-class v1, Landroidx/lifecycle/x;

    aput-object v1, v0, v2

    sput-object v0, Landroidx/lifecycle/y;->g:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroidx/savedstate/d;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Landroidx/lifecycle/y;-><init>(Landroid/app/Application;Landroidx/savedstate/d;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroidx/savedstate/d;Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Landroidx/lifecycle/ab$c;-><init>()V

    .line 91
    invoke-interface {p2}, Landroidx/savedstate/d;->getSavedStateRegistry()Landroidx/savedstate/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/y;->e:Landroidx/savedstate/b;

    .line 92
    invoke-interface {p2}, Landroidx/savedstate/d;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object p2

    iput-object p2, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/j;

    .line 93
    iput-object p3, p0, Landroidx/lifecycle/y;->c:Landroid/os/Bundle;

    .line 94
    iput-object p1, p0, Landroidx/lifecycle/y;->a:Landroid/app/Application;

    if-eqz p1, :cond_1

    .line 1244
    sget-object p2, Landroidx/lifecycle/ab$a;->a:Landroidx/lifecycle/ab$a;

    if-nez p2, :cond_0

    .line 1245
    new-instance p2, Landroidx/lifecycle/ab$a;

    invoke-direct {p2, p1}, Landroidx/lifecycle/ab$a;-><init>(Landroid/app/Application;)V

    sput-object p2, Landroidx/lifecycle/ab$a;->a:Landroidx/lifecycle/ab$a;

    .line 1247
    :cond_0
    sget-object p1, Landroidx/lifecycle/ab$a;->a:Landroidx/lifecycle/ab$a;

    goto :goto_0

    .line 97
    :cond_1
    invoke-static {}, Landroidx/lifecycle/ab$d;->a()Landroidx/lifecycle/ab$d;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/y;->b:Landroidx/lifecycle/ab$b;

    return-void
.end method

.method private static a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 157
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 158
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/lifecycle/aa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/aa;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 142
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/y;->a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/aa;

    move-result-object p1

    return-object p1

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/aa;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/aa;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 103
    const-class v0, Landroidx/lifecycle/a;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Landroidx/lifecycle/y;->a:Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 106
    sget-object v1, Landroidx/lifecycle/y;->f:[Ljava/lang/Class;

    invoke-static {p2, v1}, Landroidx/lifecycle/y;->a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_0

    .line 108
    :cond_0
    sget-object v1, Landroidx/lifecycle/y;->g:[Ljava/lang/Class;

    invoke-static {p2, v1}, Landroidx/lifecycle/y;->a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    .line 112
    iget-object p1, p0, Landroidx/lifecycle/y;->b:Landroidx/lifecycle/ab$b;

    invoke-interface {p1, p2}, Landroidx/lifecycle/ab$b;->a(Ljava/lang/Class;)Landroidx/lifecycle/aa;

    move-result-object p1

    return-object p1

    .line 115
    :cond_1
    iget-object v2, p0, Landroidx/lifecycle/y;->e:Landroidx/savedstate/b;

    iget-object v3, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/j;

    iget-object v4, p0, Landroidx/lifecycle/y;->c:Landroid/os/Bundle;

    invoke-static {v2, v3, p1, v4}, Landroidx/lifecycle/SavedStateHandleController;->a(Landroidx/savedstate/b;Landroidx/lifecycle/j;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 119
    :try_start_0
    iget-object v0, p0, Landroidx/lifecycle/y;->a:Landroid/app/Application;

    if-eqz v0, :cond_2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    .line 2062
    iget-object v0, p1, Landroidx/lifecycle/SavedStateHandleController;->a:Landroidx/lifecycle/x;

    aput-object v0, v4, v3

    .line 120
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/aa;

    goto :goto_1

    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    .line 3062
    iget-object v3, p1, Landroidx/lifecycle/SavedStateHandleController;->a:Landroidx/lifecycle/x;

    aput-object v3, v0, v2

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/aa;

    :goto_1
    const-string v1, "androidx.lifecycle.savedstate.vm.tag"

    .line 124
    invoke-virtual {v0, v1, p1}, Landroidx/lifecycle/aa;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 131
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "An exception happened in constructor of "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 132
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be instantiated."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 127
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Failed to access "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method final a(Landroidx/lifecycle/aa;)V
    .locals 2

    .line 167
    iget-object v0, p0, Landroidx/lifecycle/y;->e:Landroidx/savedstate/b;

    iget-object v1, p0, Landroidx/lifecycle/y;->d:Landroidx/lifecycle/j;

    invoke-static {p1, v0, v1}, Landroidx/lifecycle/SavedStateHandleController;->a(Landroidx/lifecycle/aa;Landroidx/savedstate/b;Landroidx/lifecycle/j;)V

    return-void
.end method
