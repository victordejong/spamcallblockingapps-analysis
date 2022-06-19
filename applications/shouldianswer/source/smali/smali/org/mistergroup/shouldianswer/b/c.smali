.class public final Lorg/mistergroup/shouldianswer/b/c;
.super Ljava/lang/Object;
.source "DisabledOverlayNotification.kt"


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lorg/mistergroup/shouldianswer/b/c;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/b/c;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/b/c;->a:Lorg/mistergroup/shouldianswer/b/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 17
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    .line 18
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "NOTIFICATION: DisabledOverlayNotification.show"

    invoke-static {v1, v4, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 19
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v3, "DisabledOverlayNotification.Show"

    invoke-virtual {v1, v3}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    .line 20
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/m;->a:Lorg/mistergroup/shouldianswer/utils/m;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/m;->h()V

    const v1, 0x7f10008e

    .line 21
    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.string.app_name)"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f100186

    .line 22
    invoke-virtual {v0, v4}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "context.getString(R.stri\u2026disabled_overlay_message)"

    invoke-static {v4, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v5, Landroidx/core/app/h$d;

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    sget-object v7, Lorg/mistergroup/shouldianswer/utils/m;->a:Lorg/mistergroup/shouldianswer/utils/m;

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/utils/m;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroidx/core/app/h$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v7, 0x7f0800d2

    .line 24
    invoke-virtual {v5, v7}, Landroidx/core/app/h$d;->a(I)Landroidx/core/app/h$d;

    move-result-object v5

    .line 25
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroidx/core/app/h$d;->a(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    move-result-object v3

    .line 26
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroidx/core/app/h$d;->b(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    move-result-object v3

    const/4 v5, 0x1

    .line 27
    invoke-virtual {v3, v5}, Landroidx/core/app/h$d;->d(I)Landroidx/core/app/h$d;

    move-result-object v3

    const/4 v7, -0x1

    .line 28
    invoke-virtual {v3, v7}, Landroidx/core/app/h$d;->c(I)Landroidx/core/app/h$d;

    move-result-object v3

    .line 29
    invoke-virtual {v3, v5}, Landroidx/core/app/h$d;->d(Z)Landroidx/core/app/h$d;

    move-result-object v3

    .line 30
    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/core/app/h$d;->b(Ljava/lang/String;)Landroidx/core/app/h$d;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v5}, Landroidx/core/app/h$d;->f(I)Landroidx/core/app/h$d;

    move-result-object v0

    .line 32
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Landroidx/core/app/h$d;->a(Landroid/net/Uri;)Landroidx/core/app/h$d;

    .line 35
    new-instance v1, Landroidx/core/app/h$c;

    invoke-direct {v1}, Landroidx/core/app/h$c;-><init>()V

    .line 36
    invoke-virtual {v1, v4}, Landroidx/core/app/h$c;->a(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    .line 37
    check-cast v1, Landroidx/core/app/h$f;

    invoke-virtual {v0, v1}, Landroidx/core/app/h$d;->a(Landroidx/core/app/h$f;)Landroidx/core/app/h$d;

    .line 42
    sget-object v1, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->b:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;

    invoke-virtual {v1, v6}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroidx/core/app/h$d;->a(Landroid/app/PendingIntent;)Landroidx/core/app/h$d;

    .line 44
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/y;->c()Landroid/app/NotificationManager;

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Landroidx/core/app/h$d;->b()Landroid/app/Notification;

    move-result-object v0

    const v2, 0x4a6ff01

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
