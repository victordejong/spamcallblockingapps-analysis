.class final Lorg/mistergroup/shouldianswer/b/l$a$1;
.super Lkotlin/c/b/a/k;
.source "VoicemailNotification.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/b/l$a;->b(Ljava/lang/Object;)Ljava/lang/Object;
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
    b = "VoicemailNotification.kt"
    c = {}
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.notifications.VoicemailNotification$show$1$1"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lorg/mistergroup/shouldianswer/b/l$a;

.field final synthetic c:I

.field final synthetic d:Lkotlin/e/b/m$b;

.field private e:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/b/l$a;ILkotlin/e/b/m$b;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/l$a$1;->b:Lorg/mistergroup/shouldianswer/b/l$a;

    iput p2, p0, Lorg/mistergroup/shouldianswer/b/l$a$1;->c:I

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/b/l$a$1;->d:Lkotlin/e/b/m$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/b/l$a$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/b/l$a$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/b/l$a$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 4
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

    new-instance v0, Lorg/mistergroup/shouldianswer/b/l$a$1;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/l$a$1;->b:Lorg/mistergroup/shouldianswer/b/l$a;

    iget v2, p0, Lorg/mistergroup/shouldianswer/b/l$a$1;->c:I

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/l$a$1;->d:Lkotlin/e/b/m$b;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/mistergroup/shouldianswer/b/l$a$1;-><init>(Lorg/mistergroup/shouldianswer/b/l$a;ILkotlin/e/b/m$b;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/b/l$a$1;->e:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 52
    iget v0, p0, Lorg/mistergroup/shouldianswer/b/l$a$1;->a:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/l$a$1;->e:Lkotlinx/coroutines/ad;

    .line 53
    new-instance p1, Landroidx/core/app/h$d;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/l$a$1;->b:Lorg/mistergroup/shouldianswer/b/l$a;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/b/l$a;->g:Lorg/mistergroup/shouldianswer/MyApp;

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/m;->a:Lorg/mistergroup/shouldianswer/utils/m;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroidx/core/app/h$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    iget v0, p0, Lorg/mistergroup/shouldianswer/b/l$a$1;->c:I

    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->a(I)Landroidx/core/app/h$d;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/l$a$1;->b:Lorg/mistergroup/shouldianswer/b/l$a;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/b/l$a;->g:Lorg/mistergroup/shouldianswer/MyApp;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/l$a$1;->d:Lkotlin/e/b/m$b;

    iget v1, v1, Lkotlin/e/b/m$b;->a:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/h$d;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/l$a$1;->b:Lorg/mistergroup/shouldianswer/b/l$a;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/b/l$a;->g:Lorg/mistergroup/shouldianswer/MyApp;

    const v1, 0x7f10022d

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->a(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    move-result-object p1

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->d(I)Landroidx/core/app/h$d;

    move-result-object p1

    const/4 v1, -0x1

    .line 60
    invoke-virtual {p1, v1}, Landroidx/core/app/h$d;->c(I)Landroidx/core/app/h$d;

    move-result-object p1

    .line 61
    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->d(Z)Landroidx/core/app/h$d;

    move-result-object p1

    .line 62
    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->f(I)Landroidx/core/app/h$d;

    move-result-object p1

    const/4 v0, 0x2

    .line 66
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->a(Landroid/net/Uri;)Landroidx/core/app/h$d;

    .line 70
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/l$a$1;->b:Lorg/mistergroup/shouldianswer/b/l$a;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/b/l$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/l$a$1;->b:Lorg/mistergroup/shouldianswer/b/l$a;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/b/l$a;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/l$a$1;->b:Lorg/mistergroup/shouldianswer/b/l$a;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/b/l$a;->g:Lorg/mistergroup/shouldianswer/MyApp;

    check-cast v0, Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->a(Landroid/app/PendingIntent;)Landroidx/core/app/h$d;

    .line 79
    :cond_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/y;->c()Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x29d03a14

    .line 80
    invoke-virtual {p1}, Landroidx/core/app/h$d;->b()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 81
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
