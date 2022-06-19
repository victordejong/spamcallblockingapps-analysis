.class public Lcom/allinone/callerid/service/b;
.super Ljava/lang/Object;
.source "RecordCallService.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;


# static fields
.field private static final a:Lcom/allinone/callerid/service/b;


# instance fields
.field private b:Lcom/allinone/callerid/bean/recorder/RecordCall;

.field c:Z

.field d:Landroid/media/MediaRecorder;

.field e:Lcom/allinone/callerid/util/recorder/AudioRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/service/b;

    invoke-direct {v0}, Lcom/allinone/callerid/service/b;-><init>()V

    sput-object v0, Lcom/allinone/callerid/service/b;->a:Lcom/allinone/callerid/service/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/allinone/callerid/service/b;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/service/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/service/b;->g()V

    return-void
.end method

.method static synthetic b(Lcom/allinone/callerid/service/b;)Lcom/allinone/callerid/bean/recorder/RecordCall;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/service/b;->b:Lcom/allinone/callerid/bean/recorder/RecordCall;

    return-object p0
.end method

.method static synthetic c(Lcom/allinone/callerid/service/b;Lcom/allinone/callerid/bean/recorder/RecordCall;)Lcom/allinone/callerid/bean/recorder/RecordCall;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/b;->b:Lcom/allinone/callerid/bean/recorder/RecordCall;

    return-object p1
.end method

.method static synthetic d(Lcom/allinone/callerid/service/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/service/b;->e(Z)V

    return-void
.end method

.method private e(Z)V
    .locals 10

    const-string p1, "com.allinone.callerid_notfication_N"

    const-string v0, "Showcaller"

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/h1;->q0()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 3
    new-instance v2, Landroidx/core/app/h$e;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroidx/core/app/h$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 5
    new-instance v4, Landroid/app/NotificationChannel;

    const/4 v5, 0x3

    invoke-direct {v4, p1, v0, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 7
    invoke-virtual {v2, p1}, Landroidx/core/app/h$e;->g(Ljava/lang/String;)Landroidx/core/app/h$e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    const/16 p1, 0x15

    if-lt v3, p1, :cond_1

    .line 8
    :try_start_1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const v3, 0x7f080270

    invoke-virtual {v0, v3}, Landroid/app/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 9
    :try_start_2
    invoke-virtual {v2, v3}, Landroidx/core/app/h$e;->v(I)Landroidx/core/app/h$e;

    .line 10
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f06003a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/core/app/h$e;->h(I)Landroidx/core/app/h$e;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_1
    const v0, 0x7f080196

    .line 12
    invoke-virtual {v2, v0}, Landroidx/core/app/h$e;->v(I)Landroidx/core/app/h$e;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 13
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v3

    const-class v4, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "record_success"

    const/4 v4, 0x1

    .line 16
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v3, 0x10008000

    .line 17
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v5

    const/high16 v6, 0xc000000

    const v7, 0xfeed

    invoke-static {v5, v7, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 19
    new-instance v5, Landroid/content/Intent;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v8

    const-class v9, Lcom/allinone/callerid/mvc/controller/recorder/RecorderActivity;

    invoke-direct {v5, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "record_success_upload"

    .line 20
    invoke-virtual {v5, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 21
    invoke-virtual {v5, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v3

    invoke-static {v3, v7, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 23
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v3

    const v5, 0x7f100015

    invoke-virtual {v3, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/h$e;->k(Ljava/lang/CharSequence;)Landroidx/core/app/h$e;

    move-result-object v3

    new-instance v5, Landroidx/core/app/h$c;

    invoke-direct {v5}, Landroidx/core/app/h$c;-><init>()V

    .line 24
    invoke-virtual {v3, v5}, Landroidx/core/app/h$e;->x(Landroidx/core/app/h$f;)Landroidx/core/app/h$e;

    move-result-object v3

    const v5, 0x7f080189

    .line 25
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v6

    const v7, 0x7f1001e4

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-virtual {v3, v5, v6, v0}, Landroidx/core/app/h$e;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/h$e;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 27
    :try_start_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, p1, :cond_2

    const/16 p1, 0x17

    if-gt v3, p1, :cond_2

    .line 28
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0802ab

    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/core/app/h$e;->o(Landroid/graphics/Bitmap;)Landroidx/core/app/h$e;

    goto :goto_1

    .line 29
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f0802b4

    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/core/app/h$e;->o(Landroid/graphics/Bitmap;)Landroidx/core/app/h$e;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 30
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    :goto_1
    invoke-virtual {v2, v4}, Landroidx/core/app/h$e;->f(Z)Landroidx/core/app/h$e;

    .line 32
    invoke-virtual {v2, v0}, Landroidx/core/app/h$e;->i(Landroid/app/PendingIntent;)Landroidx/core/app/h$e;

    const/16 p1, 0x25eb

    .line 33
    invoke-virtual {v2}, Landroidx/core/app/h$e;->b()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 34
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "record_push_show"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public static f()Lcom/allinone/callerid/service/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/service/b;->a:Lcom/allinone/callerid/service/b;

    return-object v0
.end method

.method private g()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/allinone/callerid/service/b$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/service/b$b;-><init>(Lcom/allinone/callerid/service/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private h()V
    .locals 5

    .line 1
    new-instance v0, Lcom/allinone/callerid/util/recorder/AudioRecorder;

    new-instance v1, Lcom/allinone/callerid/util/recorder/a;

    invoke-direct {v1}, Lcom/allinone/callerid/util/recorder/a;-><init>()V

    iget-object v2, p0, Lcom/allinone/callerid/service/b;->b:Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {v2}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getFilename()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/allinone/callerid/service/b;->b:Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {v3}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getFilepath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->a()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/allinone/callerid/util/recorder/AudioRecorder;-><init>(Lcom/allinone/callerid/util/recorder/a;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/allinone/callerid/service/b;->e:Lcom/allinone/callerid/util/recorder/AudioRecorder;

    .line 2
    invoke-virtual {v0}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->n()V

    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/service/b;->d:Landroid/media/MediaRecorder;

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/service/b;->d:Landroid/media/MediaRecorder;

    const v1, 0xac44

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/service/b;->d:Landroid/media/MediaRecorder;

    const v1, 0x17700

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/service/b;->d:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/service/b;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/service/b;->d:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/allinone/callerid/service/b;->b:Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getFilepath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/service/b;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/service/b;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/service/b;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/service/b;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    return-void
.end method

.method private j()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/service/b;->c:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/allinone/callerid/service/b;->c:Z

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "_yyyyMMdd_HHmmss_"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/recorder/c;->a()Ljava/io/File;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/allinone/callerid/service/b;->b:Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {v5}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getShowName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".amr"

    .line 7
    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    :try_start_1
    iget-object v3, p0, Lcom/allinone/callerid/service/b;->b:Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setFilepath(Ljava/lang/String;)V

    .line 9
    iget-object v3, p0, Lcom/allinone/callerid/service/b;->b:Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {v3, v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setFilename(Ljava/lang/String;)V

    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    .line 11
    invoke-direct {p0}, Lcom/allinone/callerid/service/b;->i()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/allinone/callerid/service/b;->h()V

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/allinone/callerid/service/b;->b:Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setStarttime(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v0

    .line 14
    :goto_1
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v3, :cond_1

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wbb"

    invoke-static {v4, v3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcom/allinone/callerid/service/b;->c:Z

    if-eqz v2, :cond_2

    .line 18
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 19
    :cond_2
    iput-object v0, p0, Lcom/allinone/callerid/service/b;->b:Lcom/allinone/callerid/bean/recorder/RecordCall;

    .line 20
    iput-boolean v1, p0, Lcom/allinone/callerid/service/b;->c:Z

    :cond_3
    :goto_2
    return-void
.end method

.method private l()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/service/b;->c:Z

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/service/b;->b:Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/bean/recorder/RecordCall;->setEndtime(J)V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/service/b;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/service/b;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/service/b;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/allinone/callerid/service/b;->d:Landroid/media/MediaRecorder;

    .line 8
    invoke-direct {p0}, Lcom/allinone/callerid/service/b;->g()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/service/b;->e:Lcom/allinone/callerid/util/recorder/AudioRecorder;

    new-instance v1, Lcom/allinone/callerid/service/b$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/service/b$a;-><init>(Lcom/allinone/callerid/service/b;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->o(Lcom/allinone/callerid/util/recorder/AudioRecorder$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public k(Lcom/allinone/callerid/bean/recorder/RecordCall;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/b;->b:Lcom/allinone/callerid/bean/recorder/RecordCall;

    .line 2
    invoke-direct {p0}, Lcom/allinone/callerid/service/b;->j()V

    return-void
.end method

.method public m(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/service/b;->l()V

    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 0

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    return-void
.end method
