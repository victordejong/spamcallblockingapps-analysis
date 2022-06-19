.class public final Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;
.super Ljava/lang/Object;
.source "PromoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/e/b/e;)V
    .locals 0

    .line 293
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    move-object v1, p0

    check-cast v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;->d()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 303
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 304
    invoke-static {p1}, Landroidx/core/app/m;->a(Landroid/content/Context;)Landroidx/core/app/m;

    move-result-object p1

    const-string v1, "TaskStackBuilder.create(context)"

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    const-class v1, Lorg/mistergroup/shouldianswer/ui/main/MainActivity;

    invoke-virtual {p1, v1}, Landroidx/core/app/m;->a(Ljava/lang/Class;)Landroidx/core/app/m;

    .line 306
    invoke-virtual {p1, v0}, Landroidx/core/app/m;->a(Landroid/content/Intent;)Landroidx/core/app/m;

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    .line 307
    invoke-virtual {p1, v0, v1}, Landroidx/core/app/m;->a(II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 294
    invoke-static {}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 295
    invoke-static {}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    move-object v1, p0

    check-cast v1, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment$a;->d()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 313
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 296
    invoke-static {}, Lorg/mistergroup/shouldianswer/ui/promo/PromoFragment;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Landroid/os/Bundle;
    .locals 1

    .line 298
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method
