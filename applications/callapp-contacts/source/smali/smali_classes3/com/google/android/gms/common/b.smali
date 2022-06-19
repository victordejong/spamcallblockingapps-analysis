.class public final Lcom/google/android/gms/common/b;
.super Lcom/google/android/gms/common/c;
.source "SourceFile"


# static fields
.field public static final a:I

.field private static final c:Ljava/lang/Object;

.field private static final d:Lcom/google/android/gms/common/b;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/b;->c:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/b;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/common/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/b;->d:Lcom/google/android/gms/common/b;

    sget v0, Lcom/google/android/gms/common/c;->b:I

    sput v0, Lcom/google/android/gms/common/b;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/c;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;ILcom/google/android/gms/common/internal/ac;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    .line 1
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme.Dialog.Alert"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_1
    if-nez v0, :cond_2

    .line 6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/y;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_3

    .line 8
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 9
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/y;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 10
    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11
    :cond_4
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/y;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 12
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_5
    new-array p0, v4, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, p2

    const-string p1, "Creating dialog for Google Play services availability issue. ConnectionResult=%s"

    .line 14
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string p2, "GoogleApiAvailability"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/google/android/gms/common/b;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/b;->d:Lcom/google/android/gms/common/b;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .line 1
    instance-of v0, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 7
    invoke-static {p1, p3}, Lcom/google/android/gms/common/g;->a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/g;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/common/g;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 3
    invoke-static {p1, p3}, Lcom/google/android/gms/common/ErrorDialogFragment;->a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/ErrorDialogFragment;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/common/ErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "GMS core API Availability. ConnectionResult=%s, tag=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v5, "GoogleApiAvailability"

    invoke-static {v5, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x12

    if-ne p2, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/b;->b(Landroid/content/Context;)V

    return-void

    :cond_0
    if-nez p3, :cond_2

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    const-string p1, "GoogleApiAvailability"

    const-string p2, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 5
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/y;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/y;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "notification"

    .line 8
    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 9
    new-instance v7, Landroidx/core/app/g$e;

    invoke-direct {v7, p1}, Landroidx/core/app/g$e;-><init>(Landroid/content/Context;)V

    .line 2215
    iput-boolean v4, v7, Landroidx/core/app/g$e;->x:Z

    .line 11
    invoke-virtual {v7, v4}, Landroidx/core/app/g$e;->a(Z)Landroidx/core/app/g$e;

    move-result-object v7

    .line 12
    invoke-virtual {v7, v1}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v1

    new-instance v7, Landroidx/core/app/g$c;

    invoke-direct {v7}, Landroidx/core/app/g$c;-><init>()V

    .line 13
    invoke-virtual {v7, v2}, Landroidx/core/app/g$c;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$c;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/core/app/g$e;->a(Landroidx/core/app/g$i;)Landroidx/core/app/g$e;

    move-result-object v1

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/common/util/j;->a(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 15
    invoke-static {}, Lcom/google/android/gms/common/util/n;->f()Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->a(Z)V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v2}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    move-result-object v2

    .line 2275
    iput v0, v2, Landroidx/core/app/g$e;->l:I

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/common/util/j;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 19
    sget v2, Lcom/google/android/gms/a/a$b;->common_full_open_on_phone:I

    sget v7, Lcom/google/android/gms/a/a$c;->common_open_on_phone:I

    .line 20
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v1, v2, v5, p3}, Landroidx/core/app/g$e;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/g$e;

    goto :goto_0

    .line 2975
    :cond_3
    iput-object p3, v1, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_4
    const v7, 0x108008a

    .line 22
    invoke-virtual {v1, v7}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    move-result-object v7

    sget v8, Lcom/google/android/gms/a/a$c;->common_google_play_services_notification_ticker:I

    .line 23
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroidx/core/app/g$e;->c(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v5

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Landroidx/core/app/g$e;->a(J)Landroidx/core/app/g$e;

    move-result-object v5

    .line 3975
    iput-object p3, v5, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    .line 26
    invoke-virtual {v5, v2}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    .line 27
    :goto_0
    invoke-static {}, Lcom/google/android/gms/common/util/n;->j()Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_2

    .line 28
    :cond_5
    invoke-static {}, Lcom/google/android/gms/common/util/n;->j()Z

    move-result p3

    invoke-static {p3}, Lcom/google/android/gms/common/internal/o;->a(Z)V

    sget-object p3, Lcom/google/android/gms/common/b;->c:Ljava/lang/Object;

    .line 29
    monitor-enter p3

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/common/b;->e:Ljava/lang/String;

    .line 30
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_7

    const-string v2, "com.google.android.gms.availability"

    .line 32
    invoke-virtual {v6, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p3

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/common/internal/y;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p3, :cond_6

    .line 34
    new-instance p3, Landroid/app/NotificationChannel;

    const/4 v5, 0x4

    invoke-direct {p3, v2, p1, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v6, p3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_1

    .line 35
    :cond_6
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 36
    invoke-virtual {p3, p1}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v6, p3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 2571
    :cond_7
    :goto_1
    iput-object v2, v1, Landroidx/core/app/g$e;->I:Ljava/lang/String;

    .line 39
    :goto_2
    invoke-virtual {v1}, Landroidx/core/app/g$e;->b()Landroid/app/Notification;

    move-result-object p1

    if-eq p2, v4, :cond_8

    if-eq p2, v0, :cond_8

    const/4 p3, 0x3

    if-eq p2, p3, :cond_8

    const p2, 0x9b6d

    goto :goto_3

    .line 40
    :cond_8
    sget-object p2, Lcom/google/android/gms/common/d;->sCanceledAvailabilityNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 p2, 0x28c4

    .line 41
    :goto_3
    invoke-virtual {v6, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/common/c;->a(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public final a(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1

    const-string v0, "d"

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/internal/ac;->a(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/ac;

    move-result-object p3

    .line 3
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;ILcom/google/android/gms/common/internal/ac;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/c;->a(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/c;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "n"

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public final a(I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/common/c;->a(I)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 3

    .line 4002
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4003
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 4004
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    .line 5001
    invoke-super {p0, p1, v0, v1}, Lcom/google/android/gms/common/c;->a(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p2

    const/4 v2, 0x1

    .line 3
    invoke-static {p1, v0, p3, v2}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object p3

    const/high16 v0, 0x8000000

    .line 4
    invoke-static {p1, v1, p3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    return v2

    :cond_1
    return v1
.end method

.method public final b(Landroid/content/Context;I)I
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/common/c;->b(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public final b(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/common/c;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final b(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/h;

    .line 1
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/h;-><init>(Lcom/google/android/gms/common/b;Landroid/content/Context;)V

    const/4 p1, 0x1

    const-wide/32 v1, 0x1d4c0

    .line 2
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final b(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/b;->a(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    .line 3
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/b;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method
