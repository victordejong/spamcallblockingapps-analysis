.class public final Lleakcanary/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0006\u001a\u00020\u0007*\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\nH\u0000\"\u001b\u0010\u0000\u001a\u00020\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u000b"
    }
    d2 = {
        "hasAndroidXFragmentActivity",
        "",
        "getHasAndroidXFragmentActivity",
        "()Z",
        "hasAndroidXFragmentActivity$delegate",
        "Lkotlin/Lazy;",
        "onAndroidXFragmentViewDestroyed",
        "",
        "Landroid/app/Activity;",
        "block",
        "Lkotlin/Function0;",
        "plumber-android_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final a:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    sget-object v0, Lleakcanary/internal/a$a;->a:Lleakcanary/internal/a$a;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lleakcanary/internal/a;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static final a(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$onAndroidXFragmentViewDestroyed"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    sget-object v0, Lleakcanary/internal/a;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    instance-of v0, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 22
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 23
    new-instance v0, Lleakcanary/internal/a$b;

    invoke-direct {v0, p1}, Lleakcanary/internal/a$b;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Landroidx/fragment/app/FragmentManager$c;

    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentManager;->a(Landroidx/fragment/app/FragmentManager$c;Z)V

    :cond_1
    return-void
.end method
