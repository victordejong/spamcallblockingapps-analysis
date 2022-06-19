.class final Lorg/mistergroup/shouldianswer/b/i$b$1;
.super Lkotlin/c/b/a/k;
.source "RingingNotification.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/b/i$b;->b(Ljava/lang/Object;)Ljava/lang/Object;
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
    b = "RingingNotification.kt"
    c = {}
    d = "invokeSuspend"
    e = "org.mistergroup.shouldianswer.notifications.RingingNotification$show$1$1"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lorg/mistergroup/shouldianswer/b/i$b;

.field final synthetic c:I

.field final synthetic d:Lkotlin/e/b/m$b;

.field final synthetic e:Lkotlin/e/b/m$b;

.field final synthetic f:Lkotlin/e/b/m$c;

.field final synthetic g:Ljava/lang/String;

.field private h:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/b/i$b;ILkotlin/e/b/m$b;Lkotlin/e/b/m$b;Lkotlin/e/b/m$c;Ljava/lang/String;Lkotlin/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->b:Lorg/mistergroup/shouldianswer/b/i$b;

    iput p2, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->c:I

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->d:Lkotlin/e/b/m$b;

    iput-object p4, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->e:Lkotlin/e/b/m$b;

    iput-object p5, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->f:Lkotlin/e/b/m$c;

    iput-object p6, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->g:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/b/i$b$1;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/b/i$b$1;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/b/i$b$1;->b(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Lorg/mistergroup/shouldianswer/b/i$b$1;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->b:Lorg/mistergroup/shouldianswer/b/i$b;

    iget v3, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->c:I

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->d:Lkotlin/e/b/m$b;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->e:Lkotlin/e/b/m$b;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->f:Lkotlin/e/b/m$c;

    iget-object v7, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->g:Ljava/lang/String;

    move-object v1, v0

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lorg/mistergroup/shouldianswer/b/i$b$1;-><init>(Lorg/mistergroup/shouldianswer/b/i$b;ILkotlin/e/b/m$b;Lkotlin/e/b/m$b;Lkotlin/e/b/m$c;Ljava/lang/String;Lkotlin/c/c;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/b/i$b$1;->h:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    .line 74
    iget v0, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->a:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->h:Lkotlinx/coroutines/ad;

    .line 75
    new-instance p1, Landroidx/core/app/h$d;

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->b:Lorg/mistergroup/shouldianswer/b/i$b;

    iget-object v0, v0, Lorg/mistergroup/shouldianswer/b/i$b;->j:Lorg/mistergroup/shouldianswer/MyApp;

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/m;->a:Lorg/mistergroup/shouldianswer/utils/m;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroidx/core/app/h$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->c:I

    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->a(I)Landroidx/core/app/h$d;

    move-result-object p1

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->c(Z)Landroidx/core/app/h$d;

    move-result-object p1

    .line 78
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->d:Lkotlin/e/b/m$b;

    iget v1, v1, Lkotlin/e/b/m$b;->a:I

    invoke-virtual {p1, v1}, Landroidx/core/app/h$d;->e(I)Landroidx/core/app/h$d;

    move-result-object p1

    .line 79
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->b:Lorg/mistergroup/shouldianswer/b/i$b;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/b/i$b;->j:Lorg/mistergroup/shouldianswer/MyApp;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/MyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->e:Lkotlin/e/b/m$b;

    iget v2, v2, Lkotlin/e/b/m$b;->a:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/core/app/h$d;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/h$d;

    move-result-object p1

    .line 80
    sget-object v1, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->b:Lorg/mistergroup/shouldianswer/b/i$b;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/b/i$b;->k:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->f:Lkotlin/e/b/m$c;

    iget-object v3, v3, Lkotlin/e/b/m$c;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v0

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s - %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroidx/core/app/h$d;->a(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    move-result-object p1

    .line 81
    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->d(I)Landroidx/core/app/h$d;

    move-result-object p1

    const/4 v2, -0x1

    .line 82
    invoke-virtual {p1, v2}, Landroidx/core/app/h$d;->c(I)Landroidx/core/app/h$d;

    move-result-object p1

    .line 83
    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->d(Z)Landroidx/core/app/h$d;

    move-result-object p1

    .line 84
    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->f(I)Landroidx/core/app/h$d;

    move-result-object p1

    .line 88
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->g:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_1

    .line 89
    sget-object v2, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->b:Lorg/mistergroup/shouldianswer/b/i$b;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/b/i$b;->j:Lorg/mistergroup/shouldianswer/MyApp;

    const v5, 0x7f10018d

    invoke-virtual {v2, v5}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "context.getString(R.stri\u2026otification_ringing_text)"

    invoke-static {v2, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->g:Ljava/lang/String;

    aput-object v6, v5, v4

    array-length v4, v5

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroidx/core/app/h$d;->b(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    .line 91
    :cond_1
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 92
    invoke-virtual {p1, v1}, Landroidx/core/app/h$d;->a(Landroid/net/Uri;)Landroidx/core/app/h$d;

    .line 94
    sget-object v1, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->b:Lorg/mistergroup/shouldianswer/b/i$b;

    iget-object v2, v2, Lorg/mistergroup/shouldianswer/b/i$b;->j:Lorg/mistergroup/shouldianswer/MyApp;

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/i$b$1;->b:Lorg/mistergroup/shouldianswer/b/i$b;

    iget-object v3, v3, Lorg/mistergroup/shouldianswer/b/i$b;->i:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v1, v2, v3}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;->a(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/NumberInfo;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 95
    invoke-virtual {p1, v1}, Landroidx/core/app/h$d;->a(Landroid/app/PendingIntent;)Landroidx/core/app/h$d;

    .line 96
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/y;->c()Landroid/app/NotificationManager;

    move-result-object v1

    .line 97
    invoke-static {}, Lorg/mistergroup/shouldianswer/b/i;->a()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v2}, Lorg/mistergroup/shouldianswer/b/i;->a(I)V

    const v0, 0xf4240

    .line 98
    invoke-static {}, Lorg/mistergroup/shouldianswer/b/i;->a()I

    move-result v2

    add-int/2addr v2, v0

    .line 99
    invoke-virtual {p1}, Landroidx/core/app/h$d;->b()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 100
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
