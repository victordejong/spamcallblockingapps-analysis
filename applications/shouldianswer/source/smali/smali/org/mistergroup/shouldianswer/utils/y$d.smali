.class final Lorg/mistergroup/shouldianswer/utils/y$d;
.super Lkotlin/e/b/i;
.source "SystemServices.kt"

# interfaces
.implements Lkotlin/e/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/utils/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/e/b/i;",
        "Lkotlin/e/a/a<",
        "Landroid/view/inputmethod/InputMethodManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/utils/y$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mistergroup/shouldianswer/utils/y$d;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/utils/y$d;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/y$d;->a:Lorg/mistergroup/shouldianswer/utils/y$d;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/e/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/utils/y$d;->b()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .line 53
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/MyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
