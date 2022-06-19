.class final Lleakcanary/a$m;
.super Lleakcanary/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lleakcanary/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0015\u00a8\u0006\u0006"
    }
    d2 = {
        "Lleakcanary/AndroidLeakFixes$SPELL_CHECKER;",
        "Lleakcanary/AndroidLeakFixes;",
        "apply",
        "",
        "application",
        "Landroid/app/Application;",
        "plumber-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 568
    invoke-direct {p0, p1, p2, v0}, Lleakcanary/a;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected final apply(Landroid/app/Application;)V
    .locals 13

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    return-void

    .line 577
    :cond_0
    :try_start_0
    const-class p1, Landroid/view/textservice/TextServicesManager;

    const-string v0, "getInstance"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 578
    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v2, "textServiceClass.getDeclaredMethod(\"getInstance\")"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "sService"

    .line 580
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const-string v2, "textServiceClass.getDeclaredField(\"sService\")"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 581
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v3, "com.android.internal.textservice.ITextServicesManager"

    .line 584
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "Class.forName(\"com.andro\u2026ce.ITextServicesManager\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "android.view.textservice.SpellCheckerSession"

    .line 586
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "Class.forName(\"android.v\u2026ice.SpellCheckerSession\")"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "mSpellCheckerSessionListener"

    .line 588
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    const-string v4, "spellCheckSessionClass.g\u2026lCheckerSessionListener\")"

    invoke-static {v11, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    invoke-virtual {v11, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v4, "android.view.textservice.SpellCheckerSession$SpellCheckerSessionListenerImpl"

    .line 592
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "Class.forName(\n         \u2026ListenerImpl\"\n          )"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "mHandler"

    .line 596
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const-string v4, "spellCheckerSessionListe\u2026DeclaredField(\"mHandler\")"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v4, "android.view.textservice.SpellCheckerSession$1"

    .line 600
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "Class.forName(\"android.v\u2026.SpellCheckerSession\\$1\")"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "this$0"

    .line 601
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const-string v4, "spellCheckSessionHandler\u2026etDeclaredField(\"this$0\")"

    invoke-static {v8, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    invoke-virtual {v8, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v4, "android.view.textservice.SpellCheckerSession$SpellCheckerSessionListener"

    .line 605
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "Class.forName(\"android.v\u2026lCheckerSessionListener\")"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Class;

    aput-object v4, v6, v1

    .line 608
    sget-object v4, Lleakcanary/a$m$a;->a:Lleakcanary/a$m$a;

    check-cast v4, Ljava/lang/reflect/InvocationHandler;

    .line 606
    invoke-static {v5, v6, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v10

    const-string v4, "Proxy.newProxyInstance(\n\u2026ssion closed\" }\n        }"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 614
    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-virtual {p1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/p;->a()V

    .line 617
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v9, v0

    check-cast v9, Ljava/util/Map;

    .line 620
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v3, v2, v1

    .line 621
    new-instance v1, Lleakcanary/a$m$b;

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lleakcanary/a$m$b;-><init>(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/reflect/InvocationHandler;

    .line 619
    invoke-static {v0, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Proxy.newProxyInstance(\n\u2026ion\n          }\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p1, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 661
    :catch_0
    sget-object p1, Ld/a;->a:Ld/a;

    return-void
.end method
