.class Landroidx/work/impl/background/systemalarm/a;
.super Ljava/lang/Object;
.source "Alarms.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "Alarms"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroidx/work/impl/i;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 87
    invoke-virtual {p1}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->r()Landroidx/work/impl/b/h;

    move-result-object v0

    .line 89
    invoke-interface {v0, p2}, Landroidx/work/impl/b/h;->a(Ljava/lang/String;)Landroidx/work/impl/b/g;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_0

    .line 91
    iget v1, v1, Landroidx/work/impl/b/g;->b:I

    invoke-static {p0, p2, v1}, Landroidx/work/impl/background/systemalarm/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 92
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/background/systemalarm/a;->a:Ljava/lang/String;

    const-string/jumbo v3, "Removing SystemIdInfo for workSpecId (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    .line 93
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    .line 92
    invoke-virtual {v1, v2, v3, v4}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 94
    invoke-interface {v0, p2}, Landroidx/work/impl/b/h;->b(Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroidx/work/impl/i;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p1}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->r()Landroidx/work/impl/b/h;

    move-result-object v1

    .line 62
    invoke-interface {v1, p2}, Landroidx/work/impl/b/h;->a(Ljava/lang/String;)Landroidx/work/impl/b/g;

    move-result-object v2

    .line 63
    if-eqz v2, :cond_0

    .line 64
    iget v0, v2, Landroidx/work/impl/b/g;->b:I

    invoke-static {p0, p2, v0}, Landroidx/work/impl/background/systemalarm/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 65
    iget v0, v2, Landroidx/work/impl/b/g;->b:I

    invoke-static {p0, p2, v0, p3, p4}, Landroidx/work/impl/background/systemalarm/a;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 73
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v2, Landroidx/work/impl/utils/c;

    invoke-direct {v2, v0}, Landroidx/work/impl/utils/c;-><init>(Landroidx/work/impl/WorkDatabase;)V

    .line 68
    invoke-virtual {v2}, Landroidx/work/impl/utils/c;->a()I

    move-result v0

    .line 69
    new-instance v2, Landroidx/work/impl/b/g;

    invoke-direct {v2, p2, v0}, Landroidx/work/impl/b/g;-><init>(Ljava/lang/String;I)V

    .line 70
    invoke-interface {v1, v2}, Landroidx/work/impl/b/h;->a(Landroidx/work/impl/b/g;)V

    .line 71
    invoke-static {p0, p2, v0, p3, p4}, Landroidx/work/impl/background/systemalarm/a;->a(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 103
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 104
    invoke-static {p0, p1}, Landroidx/work/impl/background/systemalarm/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 105
    const/high16 v2, 0x20000000

    invoke-static {p0, p2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/systemalarm/a;->a:Ljava/lang/String;

    const-string/jumbo v4, "Cancelling existing alarm with (workSpecId, systemId) (%s, %s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    const/4 v6, 0x1

    .line 111
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 108
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v5}, Landroidx/work/l;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 114
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 123
    invoke-static {p0, p1}, Landroidx/work/impl/background/systemalarm/b;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 124
    const/high16 v2, 0x8000000

    invoke-static {p0, p2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 126
    if-eqz v0, :cond_0

    .line 127
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 128
    invoke-virtual {v0, v4, p3, p4, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {v0, v4, p3, p4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
