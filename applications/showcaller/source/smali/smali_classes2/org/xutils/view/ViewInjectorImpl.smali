.class public final Lorg/xutils/view/ViewInjectorImpl;
.super Ljava/lang/Object;
.source "ViewInjectorImpl.java"

# interfaces
.implements Lorg/xutils/ViewInjector;


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lorg/xutils/view/ViewInjectorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/xutils/view/ViewInjectorImpl;->a:Ljava/util/HashSet;

    .line 2
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    const-class v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    const-class v1, Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :try_start_0
    const-string v1, "androidx.fragment.app.Fragment"

    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "androidx.fragment.app.FragmentActivity"

    .line 6
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :catchall_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/xutils/view/ViewInjectorImpl;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;)Lorg/xutils/view/annotation/ContentView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/xutils/view/annotation/ContentView;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    sget-object v0, Lorg/xutils/view/ViewInjectorImpl;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidx."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-class v0, Lorg/xutils/view/annotation/ContentView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/xutils/view/annotation/ContentView;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lorg/xutils/view/ViewInjectorImpl;->a(Ljava/lang/Class;)Lorg/xutils/view/annotation/ContentView;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/view/a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/xutils/view/a;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 1
    sget-object v0, Lorg/xutils/view/ViewInjectorImpl;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidx."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/xutils/view/ViewInjectorImpl;->b(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/view/a;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 4
    array-length v3, v0

    if-lez v3, :cond_4

    .line 5
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v0, v4

    .line 6
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 7
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 8
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 9
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_3

    .line 10
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    const-class v6, Lorg/xutils/view/annotation/ViewInject;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lorg/xutils/view/annotation/ViewInject;

    if-eqz v6, :cond_3

    .line 12
    :try_start_0
    invoke-interface {v6}, Lorg/xutils/view/annotation/ViewInject;->value()I

    move-result v7

    invoke-interface {v6}, Lorg/xutils/view/annotation/ViewInject;->parentId()I

    move-result v6

    invoke-virtual {p2, v7, v6}, Lorg/xutils/view/a;->b(II)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 13
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 14
    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 15
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid @ViewInject for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    .line 17
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 19
    array-length v0, p1

    if-lez v0, :cond_a

    .line 20
    array-length v0, p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_a

    aget-object v4, p1, v3

    .line 21
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_9

    .line 22
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_6

    .line 23
    :cond_5
    const-class v5, Lorg/xutils/view/annotation/Event;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/xutils/view/annotation/Event;

    if-eqz v5, :cond_9

    .line 24
    :try_start_1
    invoke-interface {v5}, Lorg/xutils/view/annotation/Event;->value()[I

    move-result-object v6

    .line 25
    invoke-interface {v5}, Lorg/xutils/view/annotation/Event;->parentId()[I

    move-result-object v7

    if-nez v7, :cond_6

    const/4 v8, 0x0

    goto :goto_3

    .line 26
    :cond_6
    array-length v8, v7

    :goto_3
    const/4 v9, 0x0

    .line 27
    :goto_4
    array-length v10, v6

    if-ge v9, v10, :cond_9

    .line 28
    aget v10, v6, v9

    if-lez v10, :cond_8

    .line 29
    new-instance v11, Lorg/xutils/view/b;

    invoke-direct {v11}, Lorg/xutils/view/b;-><init>()V

    .line 30
    iput v10, v11, Lorg/xutils/view/b;->a:I

    if-le v8, v9, :cond_7

    .line 31
    aget v10, v7, v9

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    :goto_5
    iput v10, v11, Lorg/xutils/view/b;->b:I

    .line 32
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 33
    invoke-static {p2, v11, v5, p0, v4}, Lorg/xutils/view/EventListenerManager;->b(Lorg/xutils/view/a;Lorg/xutils/view/b;Lorg/xutils/view/annotation/Event;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :catchall_1
    move-exception v4

    .line 34
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    :goto_7
    return-void
.end method

.method public static registerInstance()V
    .locals 2

    .line 1
    sget-object v0, Lorg/xutils/view/ViewInjectorImpl;->c:Lorg/xutils/view/ViewInjectorImpl;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lorg/xutils/view/ViewInjectorImpl;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lorg/xutils/view/ViewInjectorImpl;->c:Lorg/xutils/view/ViewInjectorImpl;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lorg/xutils/view/ViewInjectorImpl;

    invoke-direct {v1}, Lorg/xutils/view/ViewInjectorImpl;-><init>()V

    sput-object v1, Lorg/xutils/view/ViewInjectorImpl;->c:Lorg/xutils/view/ViewInjectorImpl;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lorg/xutils/view/ViewInjectorImpl;->c:Lorg/xutils/view/ViewInjectorImpl;

    invoke-static {v0}, Lorg/xutils/x$Ext;->setViewInjector(Lorg/xutils/ViewInjector;)V

    return-void
.end method


# virtual methods
.method public inject(Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 10
    :try_start_0
    invoke-static {v0}, Lorg/xutils/view/ViewInjectorImpl;->a(Ljava/lang/Class;)Lorg/xutils/view/annotation/ContentView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11
    invoke-interface {v2}, Lorg/xutils/view/annotation/ContentView;->value()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 12
    invoke-virtual {p2, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p2

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 13
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :cond_0
    :goto_0
    new-instance p2, Lorg/xutils/view/a;

    invoke-direct {p2, v1}, Lorg/xutils/view/a;-><init>(Landroid/view/View;)V

    invoke-static {p1, v0, p2}, Lorg/xutils/view/ViewInjectorImpl;->b(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/view/a;)V

    return-object v1
.end method

.method public inject(Landroid/app/Activity;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-static {v0}, Lorg/xutils/view/ViewInjectorImpl;->a(Ljava/lang/Class;)Lorg/xutils/view/annotation/ContentView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Lorg/xutils/view/annotation/ContentView;->value()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Landroid/app/Activity;->setContentView(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    :goto_0
    new-instance v1, Lorg/xutils/view/a;

    invoke-direct {v1, p1}, Lorg/xutils/view/a;-><init>(Landroid/app/Activity;)V

    invoke-static {p1, v0, v1}, Lorg/xutils/view/ViewInjectorImpl;->b(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/view/a;)V

    return-void
.end method

.method public inject(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lorg/xutils/view/a;

    invoke-direct {v1, p1}, Lorg/xutils/view/a;-><init>(Landroid/view/View;)V

    invoke-static {p1, v0, v1}, Lorg/xutils/view/ViewInjectorImpl;->b(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/view/a;)V

    return-void
.end method

.method public inject(Ljava/lang/Object;Landroid/view/View;)V
    .locals 2

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lorg/xutils/view/a;

    invoke-direct {v1, p2}, Lorg/xutils/view/a;-><init>(Landroid/view/View;)V

    invoke-static {p1, v0, v1}, Lorg/xutils/view/ViewInjectorImpl;->b(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/view/a;)V

    return-void
.end method
