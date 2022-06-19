.class final Lleakcanary/a$i$a$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lleakcanary/a$i$a;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lleakcanary/a$i$a;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lleakcanary/a$i$a;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lleakcanary/a$i$a$a;->a:Lleakcanary/a$i$a;

    iput-object p2, p0, Lleakcanary/a$i$a$a;->b:Landroid/app/Activity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 5

    .line 1450
    new-instance v0, Lleakcanary/internal/d;

    .line 1451
    iget-object v1, p0, Lleakcanary/a$i$a$a;->a:Lleakcanary/a$i$a;

    iget-object v1, v1, Lleakcanary/a$i$a;->a:Landroid/view/inputmethod/InputMethodManager;

    .line 1452
    iget-object v2, p0, Lleakcanary/a$i$a$a;->a:Lleakcanary/a$i$a;

    iget-object v2, v2, Lleakcanary/a$i$a;->b:Ljava/lang/reflect/Field;

    .line 1453
    iget-object v3, p0, Lleakcanary/a$i$a$a;->a:Lleakcanary/a$i$a;

    iget-object v3, v3, Lleakcanary/a$i$a;->c:Ljava/lang/reflect/Field;

    .line 1454
    iget-object v4, p0, Lleakcanary/a$i$a$a;->a:Lleakcanary/a$i$a;

    iget-object v4, v4, Lleakcanary/a$i$a;->d:Ljava/lang/reflect/Method;

    .line 1450
    invoke-direct {v0, v1, v2, v3, v4}, Lleakcanary/internal/d;-><init>(Landroid/view/inputmethod/InputMethodManager;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 1456
    iget-object v1, p0, Lleakcanary/a$i$a$a;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "activity.window"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const-string v2, "activity.window.decorView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const-string v2, "rootView"

    .line 1457
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 1458
    check-cast v0, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V

    .line 443
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method
