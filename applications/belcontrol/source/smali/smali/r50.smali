.class public Lr50;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Alarms"

    invoke-static {v0}, Lx40;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lr50;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lo50;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lo50;->n()Landroidx/work/impl/WorkDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->w()Lx60;

    move-result-object p1

    invoke-interface {p1, p2}, Lx60;->a(Ljava/lang/String;)Lw60;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lw60;->b:I

    invoke-static {p0, p2, v0}, Lr50;->b(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {}, Lx40;->c()Lx40;

    move-result-object p0

    sget-object v0, Lr50;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v3, "Removing SystemIdInfo for workSpecId (%s)"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v1, v2}, Lx40;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-interface {p1, p2}, Lx60;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {p0, p1}, Ls50;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x20000000

    invoke-static {p0, p2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lx40;->c()Lx40;

    move-result-object v1

    sget-object v2, Lr50;->a:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, p1

    const-string p1, "Cancelling existing alarm with (workSpecId, systemId) (%s, %s)"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, p1, p2}, Lx40;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;Lo50;Ljava/lang/String;J)V
    .locals 2

    invoke-virtual {p1}, Lo50;->n()Landroidx/work/impl/WorkDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->w()Lx60;

    move-result-object p1

    invoke-interface {p1, p2}, Lx60;->a(Ljava/lang/String;)Lw60;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p1, v0, Lw60;->b:I

    invoke-static {p0, p2, p1}, Lr50;->b(Landroid/content/Context;Ljava/lang/String;I)V

    iget p1, v0, Lw60;->b:I

    invoke-static {p0, p2, p1, p3, p4}, Lr50;->d(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_0

    :cond_0
    new-instance v0, Ll70;

    invoke-direct {v0, p0}, Ll70;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ll70;->b()I

    move-result v0

    new-instance v1, Lw60;

    invoke-direct {v1, p2, v0}, Lw60;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Lx60;->b(Lw60;)V

    invoke-static {p0, p2, v0, p3, p4}, Lr50;->d(Landroid/content/Context;Ljava/lang/String;IJ)V

    :goto_0
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 2

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {p0, p1}, Ls50;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, p2, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    const/4 v1, 0x0

    if-lt p1, p2, :cond_0

    invoke-virtual {v0, v1, p3, p4, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p3, p4, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_1
    :goto_0
    return-void
.end method
