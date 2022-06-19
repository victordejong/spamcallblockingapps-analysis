.class public Lfk0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfk0$c;,
        Lfk0$b;
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a(Llk0;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lfk0;->d(Llk0;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static b(Llk0;Landroid/view/View;Landroid/view/View;)Lfk0$b;
    .locals 2

    new-instance v0, Lfk0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lfk0$b;-><init>(Llk0;Landroid/view/View;Landroid/view/View;Lfk0$a;)V

    return-object v0
.end method

.method public static c(Llk0;Landroid/view/View;Landroid/widget/AdapterView;)Lfk0$c;
    .locals 2

    new-instance v0, Lfk0$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lfk0$c;-><init>(Llk0;Landroid/view/View;Landroid/widget/AdapterView;Lfk0$a;)V

    return-object v0
.end method

.method public static d(Llk0;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Llk0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lhk0;->f(Llk0;Landroid/view/View;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "_valueToSum"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ltk0;->f(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_0
    const-string p1, "_is_fb_codeless"

    const-string p2, "1"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lui0;->o()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lfk0$a;

    invoke-direct {p2, v0, p0}, Lfk0$a;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
