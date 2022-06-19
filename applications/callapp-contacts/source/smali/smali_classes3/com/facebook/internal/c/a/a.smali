.class public final Lcom/facebook/internal/c/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/c/a/a$b;,
        Lcom/facebook/internal/c/a/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00112\u00020\u0001:\u0004\u0011\u0012\u0013\u0014B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0008\u0010\r\u001a\u00020\nH\u0002J\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver;",
        "",
        "()V",
        "initialized",
        "",
        "paramsField",
        "Ljava/lang/reflect/Field;",
        "viewsField",
        "windowManagerObj",
        "attachActiveRootListener",
        "",
        "listener",
        "Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver$Listener;",
        "initialize",
        "listActiveRoots",
        "",
        "Lcom/facebook/internal/logging/dumpsys/AndroidRootResolver$Root;",
        "Companion",
        "ListenableArrayList",
        "Listener",
        "Root",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/internal/c/a/a$a;

.field private static final f:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/reflect/Field;

.field private e:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/internal/c/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/c/a/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/internal/c/a/a;->a:Lcom/facebook/internal/c/a/a$a;

    .line 207
    const-class v0, Lcom/facebook/internal/c/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidRootResolver::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/internal/c/a/a;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/internal/c/a/a$b;",
            ">;"
        }
    .end annotation

    const-string v0, "reflective setup failed using obj: %s method: %s field: %s"

    const-string v1, "mParams"

    const-string v2, "Reflective access to %s or %s on %s failed."

    const-string v3, "mViews"

    .line 101
    iget-boolean v4, p0, Lcom/facebook/internal/c/a/a;->b:Z

    const-string v5, "java.lang.String.format(format, *args)"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v4, :cond_3

    .line 1156
    iput-boolean v10, p0, Lcom/facebook/internal/c/a/a;->b:Z

    .line 1158
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-le v4, v11, :cond_0

    const-string v4, "android.view.WindowManagerGlobal"

    goto :goto_0

    :cond_0
    const-string v4, "android.view.WindowManagerImpl"

    .line 1159
    :goto_0
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v12, v11, :cond_1

    const-string v11, "getInstance"

    goto :goto_1

    :cond_1
    const-string v11, "getDefault"

    .line 1161
    :goto_1
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-string v13, "Class.forName(accessClass)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v13, v7, [Ljava/lang/Class;

    .line 1162
    invoke-virtual {v12, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    const-string v14, "clazz.getMethod(instanceMethod)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v14, v7, [Ljava/lang/Object;

    .line 1163
    invoke-virtual {v13, v9, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, p0, Lcom/facebook/internal/c/a/a;->c:Ljava/lang/Object;

    .line 1164
    invoke-virtual {v12, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    iput-object v13, p0, Lcom/facebook/internal/c/a/a;->d:Ljava/lang/reflect/Field;

    if-eqz v13, :cond_2

    .line 1165
    invoke-virtual {v13, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1166
    :cond_2
    invoke-virtual {v12, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    iput-object v12, p0, Lcom/facebook/internal/c/a/a;->e:Ljava/lang/reflect/Field;

    if-eqz v12, :cond_3

    .line 1167
    invoke-virtual {v12, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1197
    :catch_0
    sget-object v1, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v4, v1, v7

    aput-object v11, v1, v10

    aput-object v3, v1, v6

    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1188
    :catch_1
    sget-object v1, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v4, v1, v7

    aput-object v11, v1, v10

    aput-object v3, v1, v6

    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1184
    :catch_2
    sget-object v0, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v11, v0, v7

    aput-object v4, v0, v10

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "could not find method: %s on %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1176
    :catch_3
    sget-object v0, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v1, v0, v7

    aput-object v3, v0, v10

    aput-object v4, v0, v6

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "could not find field: %s or %s on %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1172
    :catch_4
    sget-object v0, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    new-array v0, v10, [Ljava/lang/Object;

    aput-object v4, v0, v7

    invoke-static {v0, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "could not find class: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :catch_5
    move-exception v0

    .line 1170
    sget-object v1, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v11, v1, v7

    aput-object v4, v1, v10

    invoke-static {v1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "could not invoke: %s on %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 104
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/facebook/internal/c/a/a;->c:Ljava/lang/Object;

    if-nez v0, :cond_4

    return-object v9

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/facebook/internal/c/a/a;->d:Ljava/lang/reflect/Field;

    if-nez v0, :cond_5

    return-object v9

    .line 112
    :cond_5
    iget-object v0, p0, Lcom/facebook/internal/c/a/a;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_6

    return-object v9

    .line 119
    :cond_6
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_a

    .line 120
    iget-object v0, p0, Lcom/facebook/internal/c/a/a;->d:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/facebook/internal/c/a/a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v9

    :goto_3
    check-cast v0, [Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-static {v0}, Lkotlin/a/i;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :cond_8
    move-object v0, v9

    .line 122
    :goto_4
    iget-object v1, p0, Lcom/facebook/internal/c/a/a;->e:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_9

    iget-object v3, p0, Lcom/facebook/internal/c/a/a;->c:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    :cond_9
    move-object v1, v9

    :goto_5
    check-cast v1, [Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_d

    invoke-static {v1}, Lkotlin/a/i;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    goto :goto_8

    .line 124
    :cond_a
    iget-object v0, p0, Lcom/facebook/internal/c/a/a;->d:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/facebook/internal/c/a/a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :cond_b
    move-object v0, v9

    :goto_6
    check-cast v0, Ljava/util/List;

    .line 125
    iget-object v1, p0, Lcom/facebook/internal/c/a/a;->e:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_c

    iget-object v3, p0, Lcom/facebook/internal/c/a/a;->c:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_7

    :cond_c
    move-object v1, v9

    :goto_7
    check-cast v1, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v9, v1

    .line 148
    :cond_d
    :goto_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    if-nez v0, :cond_e

    .line 2071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    .line 149
    :cond_e
    check-cast v0, Ljava/lang/Iterable;

    if-eqz v9, :cond_f

    check-cast v9, Ljava/lang/Iterable;

    goto :goto_9

    .line 3071
    :cond_f
    sget-object v2, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v2, Ljava/util/List;

    .line 149
    move-object v9, v2

    check-cast v9, Ljava/lang/Iterable;

    :goto_9
    invoke-static {v0, v9}, Lkotlin/a/n;->d(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 217
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/n;

    .line 4000
    iget-object v3, v2, Lkotlin/n;->a:Ljava/lang/Object;

    .line 217
    check-cast v3, Landroid/view/View;

    .line 5000
    iget-object v2, v2, Lkotlin/n;->b:Ljava/lang/Object;

    .line 217
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 150
    new-instance v4, Lcom/facebook/internal/c/a/a$b;

    invoke-direct {v4, v3, v2}, Lcom/facebook/internal/c/a/a$b;-><init>(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_10
    return-object v1

    .line 140
    :catch_6
    sget-object v0, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    new-array v0, v8, [Ljava/lang/Object;

    .line 142
    iget-object v1, p0, Lcom/facebook/internal/c/a/a;->d:Ljava/lang/reflect/Field;

    aput-object v1, v0, v7

    .line 143
    iget-object v1, p0, Lcom/facebook/internal/c/a/a;->e:Ljava/lang/reflect/Field;

    aput-object v1, v0, v10

    .line 144
    iget-object v1, p0, Lcom/facebook/internal/c/a/a;->c:Ljava/lang/Object;

    aput-object v1, v0, v6

    .line 140
    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v9

    .line 130
    :catch_7
    sget-object v0, Lkotlin/jvm/internal/ag;->a:Lkotlin/jvm/internal/ag;

    new-array v0, v8, [Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/facebook/internal/c/a/a;->d:Ljava/lang/reflect/Field;

    aput-object v1, v0, v7

    .line 133
    iget-object v1, p0, Lcom/facebook/internal/c/a/a;->e:Ljava/lang/reflect/Field;

    aput-object v1, v0, v10

    .line 134
    iget-object v1, p0, Lcom/facebook/internal/c/a/a;->c:Ljava/lang/Object;

    aput-object v1, v0, v6

    .line 130
    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v9
.end method
