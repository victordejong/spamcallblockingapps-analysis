.class final Lorg/mistergroup/shouldianswer/b/e$a$a;
.super Lkotlin/c/b/a/k;
.source "MissedCallNotification.kt"

# interfaces
.implements Lkotlin/e/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/b/e$a;->b(Ljava/lang/Object;)Ljava/lang/Object;
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


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Ljava/lang/Object;

.field g:I

.field h:I

.field final synthetic i:I

.field final synthetic j:Lkotlin/e/b/m$b;

.field final synthetic k:Lkotlin/e/b/m$b;

.field final synthetic l:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field final synthetic m:Lorg/mistergroup/shouldianswer/b/e$a;

.field private n:Lkotlinx/coroutines/ad;


# direct methods
.method constructor <init>(ILkotlin/e/b/m$b;Lkotlin/e/b/m$b;Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/b/e$a;)V
    .locals 0

    iput p1, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->i:I

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->j:Lkotlin/e/b/m$b;

    iput-object p3, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->k:Lkotlin/e/b/m$b;

    iput-object p4, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->l:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p6, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->m:Lorg/mistergroup/shouldianswer/b/e$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/c/b/a/k;-><init>(ILkotlin/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/mistergroup/shouldianswer/b/e$a$a;->a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object p1

    check-cast p1, Lorg/mistergroup/shouldianswer/b/e$a$a;

    sget-object p2, Lkotlin/o;->a:Lkotlin/o;

    invoke-virtual {p1, p2}, Lorg/mistergroup/shouldianswer/b/e$a$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;Lkotlin/c/c;)Lkotlin/c/c;
    .locals 8
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

    new-instance v0, Lorg/mistergroup/shouldianswer/b/e$a$a;

    iget v2, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->i:I

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->j:Lkotlin/e/b/m$b;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->k:Lkotlin/e/b/m$b;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->l:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iget-object v7, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->m:Lorg/mistergroup/shouldianswer/b/e$a;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lorg/mistergroup/shouldianswer/b/e$a$a;-><init>(ILkotlin/e/b/m$b;Lkotlin/e/b/m$b;Lorg/mistergroup/shouldianswer/model/NumberInfo;Lkotlin/c/c;Lorg/mistergroup/shouldianswer/b/e$a;)V

    check-cast p1, Lkotlinx/coroutines/ad;

    iput-object p1, v0, Lorg/mistergroup/shouldianswer/b/e$a$a;->n:Lkotlinx/coroutines/ad;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/c/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    .line 56
    iget v1, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->h:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->f:Ljava/lang/Object;

    check-cast v0, Lorg/mistergroup/shouldianswer/model/ag$a;

    iget v1, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->g:I

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->e:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->d:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->c:Ljava/lang/Object;

    check-cast v6, Landroidx/core/app/h$d;

    iget-object v7, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->a:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/ad;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    move-object v9, v5

    move-object v5, v0

    move-object v0, v4

    move-object v4, v9

    goto/16 :goto_0

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_1
    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->n:Lkotlinx/coroutines/ad;

    .line 57
    new-instance v1, Landroidx/core/app/h$d;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->m:Lorg/mistergroup/shouldianswer/b/e$a;

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/b/e$a;->j:Lorg/mistergroup/shouldianswer/MyApp;

    check-cast v4, Landroid/content/Context;

    sget-object v5, Lorg/mistergroup/shouldianswer/utils/m;->a:Lorg/mistergroup/shouldianswer/utils/m;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/utils/m;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroidx/core/app/h$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    iget v4, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->i:I

    invoke-virtual {v1, v4}, Landroidx/core/app/h$d;->a(I)Landroidx/core/app/h$d;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v3}, Landroidx/core/app/h$d;->c(Z)Landroidx/core/app/h$d;

    move-result-object v1

    .line 60
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->j:Lkotlin/e/b/m$b;

    iget v4, v4, Lkotlin/e/b/m$b;->a:I

    invoke-virtual {v1, v4}, Landroidx/core/app/h$d;->e(I)Landroidx/core/app/h$d;

    move-result-object v1

    .line 61
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->m:Lorg/mistergroup/shouldianswer/b/e$a;

    iget-object v4, v4, Lorg/mistergroup/shouldianswer/b/e$a;->j:Lorg/mistergroup/shouldianswer/MyApp;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/MyApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->k:Lkotlin/e/b/m$b;

    iget v5, v5, Lkotlin/e/b/m$b;->a:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/h$d;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/h$d;

    move-result-object v6

    .line 62
    sget-object v1, Lkotlin/e/b/p;->a:Lkotlin/e/b/p;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->m:Lorg/mistergroup/shouldianswer/b/e$a;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/b/e$a;->j:Lorg/mistergroup/shouldianswer/MyApp;

    const v4, 0x7f100174

    invoke-virtual {v1, v4}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "context.getString(R.string.missed_call_s___s)"

    invoke-static {v7, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->l:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    sget-object v8, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    invoke-virtual {v5, v8}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ag;->e:Lorg/mistergroup/shouldianswer/model/ag$a;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->l:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->a:Ljava/lang/Object;

    iput-object v7, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->b:Ljava/lang/Object;

    iput-object v6, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->c:Ljava/lang/Object;

    iput-object v4, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->d:Ljava/lang/Object;

    iput-object v4, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->e:Ljava/lang/Object;

    iput v3, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->g:I

    iput-object v1, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->f:Ljava/lang/Object;

    iput v3, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->h:I

    invoke-virtual {v5, p0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->m(Lkotlin/c/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v5, v1

    move v1, v3

    move-object v0, v4

    .line 56
    :goto_0
    check-cast p1, Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {v5, p1}, Lorg/mistergroup/shouldianswer/model/ag$a;->a(Lorg/mistergroup/shouldianswer/model/ag;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    array-length p1, v4

    invoke-static {v4, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v7, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    .line 62
    invoke-virtual {v6, p1}, Landroidx/core/app/h$d;->a(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    move-result-object p1

    .line 63
    invoke-virtual {p1, v3}, Landroidx/core/app/h$d;->d(I)Landroidx/core/app/h$d;

    move-result-object p1

    const/4 v0, 0x5

    .line 64
    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->c(I)Landroidx/core/app/h$d;

    move-result-object p1

    const v0, -0xffff01

    const/16 v1, 0x3e8

    const/16 v4, 0x1f4

    .line 65
    invoke-virtual {p1, v0, v1, v4}, Landroidx/core/app/h$d;->a(III)Landroidx/core/app/h$d;

    move-result-object p1

    .line 66
    invoke-virtual {p1, v3}, Landroidx/core/app/h$d;->d(Z)Landroidx/core/app/h$d;

    move-result-object p1

    .line 67
    invoke-virtual {p1, v3}, Landroidx/core/app/h$d;->f(I)Landroidx/core/app/h$d;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->l:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->k()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->b(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    .line 71
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->a(Landroid/net/Uri;)Landroidx/core/app/h$d;

    .line 74
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment;->b:Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->m:Lorg/mistergroup/shouldianswer/b/e$a;

    iget-object v1, v1, Lorg/mistergroup/shouldianswer/b/e$a;->j:Lorg/mistergroup/shouldianswer/MyApp;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lorg/mistergroup/shouldianswer/b/e$a$a;->l:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    invoke-virtual {v0, v1, v2}, Lorg/mistergroup/shouldianswer/ui/number_detail/NumberDetailFragment$b;->a(Landroid/content/Context;Lorg/mistergroup/shouldianswer/model/NumberInfo;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Landroidx/core/app/h$d;->a(Landroid/app/PendingIntent;)Landroidx/core/app/h$d;

    .line 76
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/y;->c()Landroid/app/NotificationManager;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Landroidx/core/app/h$d;->b()Landroid/app/Notification;

    move-result-object p1

    const v1, 0x29d03a14

    .line 79
    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 80
    sget-object p1, Lkotlin/o;->a:Lkotlin/o;

    return-object p1
.end method
