.class public final Lorg/mistergroup/shouldianswer/b/k;
.super Ljava/lang/Object;
.source "UpdateDatabaseNotification.kt"


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/b/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lorg/mistergroup/shouldianswer/b/k;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/b/k;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/b/k;->a:Lorg/mistergroup/shouldianswer/b/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b()V
    .locals 8

    .line 53
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    .line 54
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "NOTIFICATION: UpdateDatabaseNotification.show"

    invoke-static {v1, v4, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 55
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/m;->a:Lorg/mistergroup/shouldianswer/utils/m;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/m;->h()V

    const v1, 0x7f10008e

    .line 57
    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.string.app_name)"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f10018e

    .line 58
    invoke-virtual {v0, v4}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "context.getString(R.stri\u2026_update_database_message)"

    invoke-static {v4, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v5, Landroidx/core/app/h$d;

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    sget-object v7, Lorg/mistergroup/shouldianswer/utils/m;->a:Lorg/mistergroup/shouldianswer/utils/m;

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/utils/m;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroidx/core/app/h$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v7, 0x7f0800d2

    .line 60
    invoke-virtual {v5, v7}, Landroidx/core/app/h$d;->a(I)Landroidx/core/app/h$d;

    move-result-object v5

    .line 61
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v5, v3}, Landroidx/core/app/h$d;->a(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    move-result-object v3

    .line 62
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroidx/core/app/h$d;->b(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;

    move-result-object v3

    const/4 v5, 0x1

    .line 63
    invoke-virtual {v3, v5}, Landroidx/core/app/h$d;->d(I)Landroidx/core/app/h$d;

    move-result-object v3

    const/4 v7, -0x1

    .line 64
    invoke-virtual {v3, v7}, Landroidx/core/app/h$d;->c(I)Landroidx/core/app/h$d;

    move-result-object v3

    .line 65
    invoke-virtual {v3, v5}, Landroidx/core/app/h$d;->d(Z)Landroidx/core/app/h$d;

    move-result-object v3

    .line 66
    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/MyApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/core/app/h$d;->b(Ljava/lang/String;)Landroidx/core/app/h$d;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v5}, Landroidx/core/app/h$d;->f(I)Landroidx/core/app/h$d;

    move-result-object v0

    .line 68
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Landroidx/core/app/h$d;->a(Landroid/net/Uri;)Landroidx/core/app/h$d;

    .line 71
    new-instance v1, Landroidx/core/app/h$c;

    invoke-direct {v1}, Landroidx/core/app/h$c;-><init>()V

    .line 72
    invoke-virtual {v1, v4}, Landroidx/core/app/h$c;->a(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    .line 73
    check-cast v1, Landroidx/core/app/h$f;

    invoke-virtual {v0, v1}, Landroidx/core/app/h$d;->a(Landroidx/core/app/h$f;)Landroidx/core/app/h$d;

    .line 75
    sget-object v1, Lorg/mistergroup/shouldianswer/ui/main/MainFragment;->b:Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;

    invoke-virtual {v1, v6}, Lorg/mistergroup/shouldianswer/ui/main/MainFragment$b;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroidx/core/app/h$d;->a(Landroid/app/PendingIntent;)Landroidx/core/app/h$d;

    .line 77
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/y;->c()Landroid/app/NotificationManager;

    move-result-object v1

    .line 79
    invoke-virtual {v0}, Landroidx/core/app/h$d;->b()Landroid/app/Notification;

    move-result-object v0

    const v2, 0x4a6ff01

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 11

    .line 23
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "UpdateDatabaseNotification.check"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 24
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->I()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const v0, 0x14997000

    int-to-long v5, v0

    cmp-long v0, v3, v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_3

    .line 26
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->F()J

    move-result-wide v5

    .line 27
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v5, v7, v5

    .line 28
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->h()J

    move-result-wide v9

    cmp-long v0, v5, v9

    if-lez v0, :cond_3

    .line 29
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->G()J

    move-result-wide v5

    sub-long v5, v7, v5

    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->k()J

    move-result-wide v9

    cmp-long v0, v5, v9

    if-lez v0, :cond_2

    .line 30
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v5, "UpdateDatabaseNotification - its time"

    invoke-static {v0, v5, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 32
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v5, 0x8

    if-lt v0, v5, :cond_1

    const/16 v5, 0x14

    if-gt v0, v5, :cond_1

    .line 34
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v5, "notifyupdatedb"

    invoke-virtual {v0, v5}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    .line 35
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0, v7, v8}, Lorg/mistergroup/shouldianswer/model/c;->c(J)V

    .line 36
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/b/k;->b()V

    return v3

    .line 39
    :cond_1
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "UpdateDatabaseNotification.check Bad day time"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 42
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    .line 45
    :cond_2
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "UpdateDatabaseNotification - its time, but notification was displayed in near history..need wait more"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    :goto_1
    return v4
.end method
