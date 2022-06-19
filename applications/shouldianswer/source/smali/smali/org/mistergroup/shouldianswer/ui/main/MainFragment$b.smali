.class public final Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;
.super Ljava/lang/Object;
.source "MainFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/ui/main/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/e/b/e;)V
    .locals 0

    .line 255
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 263
    invoke-static {p1}, Landroidx/core/app/m;->a(Landroid/content/Context;)Landroidx/core/app/m;

    move-result-object p1

    const-string v1, "TaskStackBuilder.create(context)"

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    const-class v1, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    invoke-virtual {p1, v1}, Landroidx/core/app/m;->a(Ljava/lang/Class;)Landroidx/core/app/m;

    .line 265
    invoke-virtual {p1, v0}, Landroidx/core/app/m;->a(Landroid/content/Intent;)Landroidx/core/app/m;

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    .line 266
    invoke-virtual {p1, v0, v1}, Landroidx/core/app/m;->a(II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/mistergroup/shouldianswer/ui/main/MainFragment;",
            ">;"
        }
    .end annotation

    .line 256
    invoke-static {}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->g()Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    move-object v0, p0

    check-cast v0, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method
