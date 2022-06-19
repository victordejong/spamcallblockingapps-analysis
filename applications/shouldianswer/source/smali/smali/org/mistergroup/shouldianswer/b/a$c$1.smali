.class final Lorg/mistergroup/shouldianswer/b/a$c$1;
.super Lkotlin/c/b/a/k;
.source "BlockNotification.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/b/a$c;->b(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/c/b/a/k;",
        "Lkotlin/e/a/m<",
        "Lkotlinx/coroutines/ad;",
        "Lkotlin/c/c<",
        "-",
        "Lkotlin/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/c/b/a/f;
    b = "BlockNotification.kt"
    c = {}
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.notifications.BlockNotification$show$2$1"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lorg/mistergroup/shouldianswer/b/a$c;

.field final synthetic c:Lkotlin/e/b/m$c;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:I

.field final synthetic g:I

.field private h:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/b/a$c;Lkotlin/e/b/m$c;Ljava/lang/String;Ljava/lang/String;IILkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->b:Lorg/mistergroup/shouldianswer/b/a$c;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->c:Lkotlin/e/b/m$c;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->d:Ljava/lang/String;

    iput-object p4, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->e:Ljava/lang/String;

    iput p5, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->f:I

    iput p6, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->g:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/b/a$c$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/b/a$c$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/b/a$c$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/c/c<",
            "*>;)",
            "Lkotlin/c/c<",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/mistergroup/shouldianswer/b/a$c$1;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->b:Lorg/mistergroup/shouldianswer/b/a$c;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->c:Lkotlin/e/b/m$c;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->d:Ljava/lang/String;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->e:Ljava/lang/String;

    iget v6, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->f:I

    iget v7, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->g:I

    move-object v1, v0

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/mistergroup/shouldianswer/b/a$c$1;-><init>(Lorg/mistergroup/shouldianswer/b/a$c;Lkotlin/e/b/m$c;Ljava/lang/String;Ljava/lang/String;IILkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/b/a$c$1;->h:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 64
    iget v0, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->a:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->h:Lkotlinx/coroutines/ad;

    .line 65
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->c:Lkotlin/e/b/m$c;

    iget-object v0, p1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->d:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "%s"

    invoke-static/range {v1 .. v6}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    .line 67
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->d:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->e:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    :cond_1
    new-instance v0, Landroidx/core/app/h$d;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->b:Lorg/mistergroup/shouldianswer/b/a$c;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/b/a$c;->j:Lorg/mistergroup/shouldianswer/MyApp;

    check-cast v2, Landroid/content/Context;

    sget-object v3, Lorg/mistergroup/shouldianswer/utils/m;->a:Lorg/mistergroup/shouldianswer/utils/m;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroidx/core/app/h$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    iget v2, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->f:I

    invoke-virtual {v0, v2}, Landroidx/core/app/h$d;->a(I)Landroidx/core/app/h$d;

    move-result-object v0

    .line 73
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->b:Lorg/mistergroup/shouldianswer/b/a$c;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/b/a$c;->j:Lorg/mistergroup/shouldianswer/MyApp;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/MyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->g:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/h$d;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/h$d;

    move-result-object v0

    .line 74
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/core/app/h$d;->a(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->c:Lkotlin/e/b/m$c;

    iget-object v0, v0, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->b(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    move-result-object p1

    .line 76
    invoke-virtual {p1, v1}, Landroidx/core/app/h$d;->d(I)Landroidx/core/app/h$d;

    move-result-object p1

    const/4 v0, -0x1

    .line 77
    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->c(I)Landroidx/core/app/h$d;

    move-result-object p1

    .line 78
    invoke-virtual {p1, v1}, Landroidx/core/app/h$d;->d(Z)Landroidx/core/app/h$d;

    move-result-object p1

    .line 79
    invoke-virtual {p1, v1}, Landroidx/core/app/h$d;->f(I)Landroidx/core/app/h$d;

    move-result-object p1

    const/4 v0, 0x2

    .line 81
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 82
    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->a(Landroid/net/Uri;)Landroidx/core/app/h$d;

    .line 84
    new-instance v0, Landroidx/core/app/h$c;

    invoke-direct {v0}, Landroidx/core/app/h$c;-><init>()V

    .line 85
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->c:Lkotlin/e/b/m$c;

    iget-object v1, v1, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/core/app/h$c;->a(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    .line 86
    check-cast v0, Landroidx/core/app/h$f;

    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->a(Landroidx/core/app/h$f;)Landroidx/core/app/h$d;

    .line 88
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->b:Lorg/mistergroup/shouldianswer/b/a$c;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/b/a$c;->j:Lorg/mistergroup/shouldianswer/MyApp;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/a$c$1;->b:Lorg/mistergroup/shouldianswer/b/a$c;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/b/a$c;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v0, v1, v2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;->a(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/NumberInfo;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->a(Landroid/app/PendingIntent;)Landroidx/core/app/h$d;

    .line 90
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/y;->c()Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x2e85bf09

    .line 92
    invoke-virtual {p1}, Landroidx/core/app/h$d;->b()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 93
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
