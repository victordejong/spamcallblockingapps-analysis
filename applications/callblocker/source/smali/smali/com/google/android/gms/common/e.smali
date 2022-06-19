.class public Lcom/google/android/gms/common/e;
.super Lcom/google/android/gms/common/f;
.source "com.google.android.gms:play-services-base@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/e$a;
    }
.end annotation


# static fields
.field public static final a:I

.field private static final c:Ljava/lang/Object;

.field private static final d:Lcom/google/android/gms/common/e;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/e;->c:Ljava/lang/Object;

    .line 203
    new-instance v0, Lcom/google/android/gms/common/e;

    invoke-direct {v0}, Lcom/google/android/gms/common/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/e;->d:Lcom/google/android/gms/common/e;

    .line 204
    sget v0, Lcom/google/android/gms/common/f;->b:I

    sput v0, Lcom/google/android/gms/common/e;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/f;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    new-instance v0, Landroid/widget/ProgressBar;

    const v1, 0x101007a

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 51
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 52
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 54
    const/16 v0, 0x12

    .line 55
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/e;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 57
    const-string/jumbo v0, ""

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 59
    const-string/jumbo v1, "GooglePlayServicesUpdatingDialog"

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/common/e;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 60
    return-object v0
.end method

.method static a(Landroid/content/Context;ILcom/google/android/gms/common/internal/f;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 105
    if-nez p1, :cond_0

    .line 125
    :goto_0
    return-object v0

    .line 108
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    const-string/jumbo v2, "Theme.Dialog.Alert"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 114
    :cond_1
    if-nez v0, :cond_2

    .line 115
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/e;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    if-eqz p3, :cond_3

    .line 118
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/e;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 120
    if-eqz v1, :cond_4

    .line 121
    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    :cond_4
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/e;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_5

    .line 124
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 125
    :cond_5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Lcom/google/android/gms/common/e;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/common/e;->d:Lcom/google/android/gms/common/e;

    return-object v0
.end method

.method static a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    .prologue
    .line 126
    instance-of v0, p0, Landroidx/fragment/app/d;

    .line 127
    if-eqz v0, :cond_0

    .line 128
    check-cast p0, Landroidx/fragment/app/d;

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/d;->m()Landroidx/fragment/app/i;

    move-result-object v0

    .line 131
    invoke-static {p1, p3}, Lcom/google/android/gms/common/k;->a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/k;

    move-result-object v1

    .line 132
    invoke-virtual {v1, v0, p2}, Lcom/google/android/gms/common/k;->a(Landroidx/fragment/app/i;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 135
    invoke-static {p1, p3}, Lcom/google/android/gms/common/c;->a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/c;

    move-result-object v1

    .line 136
    invoke-virtual {v1, v0, p2}, Lcom/google/android/gms/common/c;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final a(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 138
    const/16 v0, 0x12

    if-ne p2, v0, :cond_1

    .line 139
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/e;->b(Landroid/content/Context;)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    if-nez p4, :cond_2

    .line 142
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 143
    const-string/jumbo v0, "GoogleApiAvailability"

    const-string/jumbo v1, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/e;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/e;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 148
    const-string/jumbo v0, "notification"

    .line 149
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 150
    new-instance v4, Landroidx/core/app/h$c;

    invoke-direct {v4, p1}, Landroidx/core/app/h$c;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {v4, v5}, Landroidx/core/app/h$c;->b(Z)Landroidx/core/app/h$c;

    move-result-object v4

    .line 152
    invoke-virtual {v4, v5}, Landroidx/core/app/h$c;->a(Z)Landroidx/core/app/h$c;

    move-result-object v4

    .line 153
    invoke-virtual {v4, v1}, Landroidx/core/app/h$c;->a(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    move-result-object v1

    new-instance v4, Landroidx/core/app/h$b;

    invoke-direct {v4}, Landroidx/core/app/h$b;-><init>()V

    .line 154
    invoke-virtual {v4, v2}, Landroidx/core/app/h$b;->a(Ljava/lang/CharSequence;)Landroidx/core/app/h$b;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/core/app/h$c;->a(Landroidx/core/app/h$d;)Landroidx/core/app/h$c;

    move-result-object v4

    .line 155
    invoke-static {p1}, Lcom/google/android/gms/common/util/i;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 156
    invoke-static {}, Lcom/google/android/gms/common/util/m;->g()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/s;->a(Z)V

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v4, v1}, Landroidx/core/app/h$c;->a(I)Landroidx/core/app/h$c;

    move-result-object v1

    const/4 v2, 0x2

    .line 159
    invoke-virtual {v1, v2}, Landroidx/core/app/h$c;->b(I)Landroidx/core/app/h$c;

    .line 160
    invoke-static {p1}, Lcom/google/android/gms/common/util/i;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 161
    sget v1, Lcom/google/android/gms/a/a$a;->common_full_open_on_phone:I

    sget v2, Lcom/google/android/gms/a/a$b;->common_open_on_phone:I

    .line 162
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v4, v1, v2, p4}, Landroidx/core/app/h$c;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/h$c;

    .line 172
    :goto_1
    invoke-static {}, Lcom/google/android/gms/common/util/m;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    invoke-static {}, Lcom/google/android/gms/common/util/m;->k()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/s;->a(Z)V

    .line 175
    invoke-direct {p0}, Lcom/google/android/gms/common/e;->c()Ljava/lang/String;

    move-result-object v1

    .line 176
    if-nez v1, :cond_3

    .line 177
    const-string/jumbo v1, "com.google.android.gms.availability"

    .line 179
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    .line 181
    invoke-static {p1}, Lcom/google/android/gms/common/internal/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 182
    if-nez v2, :cond_7

    .line 183
    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v5, 0x4

    invoke-direct {v2, v1, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 189
    :cond_3
    :goto_2
    invoke-virtual {v4, v1}, Landroidx/core/app/h$c;->a(Ljava/lang/String;)Landroidx/core/app/h$c;

    .line 190
    :cond_4
    invoke-virtual {v4}, Landroidx/core/app/h$c;->b()Landroid/app/Notification;

    move-result-object v2

    .line 191
    packed-switch p2, :pswitch_data_0

    .line 195
    const v1, 0x9b6d

    .line 197
    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 164
    :cond_5
    invoke-virtual {v4, p4}, Landroidx/core/app/h$c;->a(Landroid/app/PendingIntent;)Landroidx/core/app/h$c;

    goto :goto_1

    .line 165
    :cond_6
    const v1, 0x108008a

    .line 166
    invoke-virtual {v4, v1}, Landroidx/core/app/h$c;->a(I)Landroidx/core/app/h$c;

    move-result-object v1

    sget v5, Lcom/google/android/gms/a/a$b;->common_google_play_services_notification_ticker:I

    .line 167
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/h$c;->c(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    move-result-object v1

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroidx/core/app/h$c;->a(J)Landroidx/core/app/h$c;

    move-result-object v1

    .line 169
    invoke-virtual {v1, p4}, Landroidx/core/app/h$c;->a(Landroid/app/PendingIntent;)Landroidx/core/app/h$c;

    move-result-object v1

    .line 170
    invoke-virtual {v1, v2}, Landroidx/core/app/h$c;->b(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;

    goto :goto_1

    .line 184
    :cond_7
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 185
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_2

    .line 192
    :pswitch_0
    const/16 v1, 0x28c4

    .line 193
    sget-object v3, Lcom/google/android/gms/common/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    sget-object v1, Lcom/google/android/gms/common/e;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/e;->e:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/google/android/gms/common/f;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "d"

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 17
    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/internal/f;->a(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/f;

    move-result-object v0

    .line 18
    invoke-static {p1, p2, v0, p4}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;ILcom/google/android/gms/common/internal/f;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/f;->a(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/common/b;)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p2}, Lcom/google/android/gms/common/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p2}, Lcom/google/android/gms/common/b;->d()Landroid/app/PendingIntent;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/b;->c()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/f;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/af;)Lcom/google/android/gms/common/api/internal/ag;
    .locals 2

    .prologue
    .line 61
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v0, "package"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/google/android/gms/common/api/internal/ag;

    invoke-direct {v0, p2}, Lcom/google/android/gms/common/api/internal/ag;-><init>(Lcom/google/android/gms/common/api/internal/af;)V

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/ag;->a(Landroid/content/Context;)V

    .line 66
    const-string/jumbo v1, "com.google.android.gms"

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/af;->a()V

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ag;->a()V

    .line 69
    const/4 v0, 0x0

    .line 70
    :cond_0
    return-object v0
.end method

.method public a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 33
    .line 34
    const/4 v0, 0x0

    const-string/jumbo v1, "n"

    .line 35
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/common/f;->a(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 36
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 37
    return-void
.end method

.method public final a(I)Z
    .locals 1

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/google/android/gms/common/f;->a(I)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/i;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 2

    .prologue
    .line 20
    const-string/jumbo v0, "d"

    invoke-virtual {p0, p1, p3, v0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/common/internal/f;->a(Lcom/google/android/gms/common/api/internal/i;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/f;

    move-result-object v0

    .line 23
    invoke-static {p1, p3, v0, p5}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;ILcom/google/android/gms/common/internal/f;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0

    .line 26
    :cond_0
    const-string/jumbo v1, "GooglePlayServicesErrorDialog"

    invoke-static {p1, v0, v1, p5}, Lcom/google/android/gms/common/e;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 27
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/common/b;I)Z
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;Lcom/google/android/gms/common/b;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p2}, Lcom/google/android/gms/common/b;->c()I

    move-result v1

    const/4 v2, 0x0

    .line 45
    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 46
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 47
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;I)I
    .locals 1

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/common/f;->b(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/google/android/gms/common/f;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 198
    new-instance v0, Lcom/google/android/gms/common/e$a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/e$a;-><init>(Lcom/google/android/gms/common/e;Landroid/content/Context;)V

    .line 199
    const/4 v1, 0x1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 200
    return-void
.end method

.method public b(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/e;->a(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    .line 31
    :cond_0
    const-string/jumbo v1, "GooglePlayServicesErrorDialog"

    invoke-static {p1, v0, v1, p4}, Lcom/google/android/gms/common/e;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 32
    const/4 v0, 0x1

    goto :goto_0
.end method
