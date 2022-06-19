.class public Lcom/mglab/scm/telephony/ForegroundService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Landroid/telecom/CallScreeningService;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static l:Z


# instance fields
.field public a:Ll8/w;

.field public b:Landroid/content/Context;

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/mglab/scm/telephony/ForegroundService;

    const-string v0, ""

    .line 2
    sput-object v0, Lcom/mglab/scm/telephony/ForegroundService;->h:Ljava/lang/String;

    .line 3
    sput-object v0, Lcom/mglab/scm/telephony/ForegroundService;->i:Ljava/lang/String;

    .line 4
    sput-object v0, Lcom/mglab/scm/telephony/ForegroundService;->j:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/mglab/scm/telephony/ForegroundService;->l:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mglab/scm/telephony/ForegroundService;->c:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/mglab/scm/telephony/ForegroundService;->d:I

    .line 4
    iput v0, p0, Lcom/mglab/scm/telephony/ForegroundService;->e:I

    .line 5
    iput v0, p0, Lcom/mglab/scm/telephony/ForegroundService;->f:I

    .line 6
    iput v0, p0, Lcom/mglab/scm/telephony/ForegroundService;->g:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const-string v0, "audio"

    const/16 v1, 0x17

    const/4 v2, -0x1

    .line 1
    :try_start_0
    iget v3, p0, Lcom/mglab/scm/telephony/ForegroundService;->d:I

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "notification"

    .line 2
    invoke-virtual {p0, v3}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v1, :cond_1

    .line 4
    invoke-virtual {v3}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    iget v4, p0, Lcom/mglab/scm/telephony/ForegroundService;->d:I

    .line 5
    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->setInterruptionFilter(I)V

    .line 6
    iput v2, p0, Lcom/mglab/scm/telephony/ForegroundService;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :cond_1
    :goto_0
    :try_start_1
    iget v3, p0, Lcom/mglab/scm/telephony/ForegroundService;->e:I

    if-ne v3, v2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 9
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    iget v4, p0, Lcom/mglab/scm/telephony/ForegroundService;->e:I

    .line 10
    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 11
    iput v2, p0, Lcom/mglab/scm/telephony/ForegroundService;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    :catch_1
    :goto_1
    :try_start_2
    iget v3, p0, Lcom/mglab/scm/telephony/ForegroundService;->f:I

    if-ne v3, v2, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    iget v4, p0, Lcom/mglab/scm/telephony/ForegroundService;->f:I

    .line 15
    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 16
    iput v2, p0, Lcom/mglab/scm/telephony/ForegroundService;->f:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_2
    const-string v0, "vibrate_when_ringing"

    .line 17
    :try_start_3
    iget v3, p0, Lcom/mglab/scm/telephony/ForegroundService;->g:I

    if-ne v3, v2, :cond_4

    goto :goto_3

    .line 18
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_5

    .line 19
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 20
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v3, p0, Lcom/mglab/scm/telephony/ForegroundService;->g:I

    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 21
    iput v2, p0, Lcom/mglab/scm/telephony/ForegroundService;->g:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_5
    :goto_3
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lcom/mglab/scm/telephony/ForegroundService;->b:Landroid/content/Context;

    invoke-static {p1}, Lf8/g;->N(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 17

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 1
    const-class v12, Lcom/mglab/scm/MainActivity;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v11, Lcom/mglab/scm/telephony/ForegroundService;->b:Landroid/content/Context;

    .line 2
    invoke-static {v1}, Lf8/g;->v(Landroid/content/Context;)V

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v13, "notification"

    if-eqz v0, :cond_3e

    const-string v3, "EXTRA_CHECK_NUMBER"

    .line 3
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "NUMBER: "

    const-string v4, "\n\n"

    .line 5
    invoke-static {v3, v0, v4}, Landroid/support/v4/media/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n\nDATABASE CHECK:\nHIDDEN: "

    .line 6
    invoke-static {v3, v4}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7
    invoke-static {v0}, Ln8/d;->d(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "TRUE"

    const-string v6, "false"

    if-eqz v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nWHITE LIST["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v2, [Lx8/a;

    .line 8
    new-instance v7, Lw8/o;

    invoke-direct {v7, v4}, Lw8/o;-><init>([Lx8/a;)V

    .line 9
    const-class v4, Lh8/w;

    .line 10
    new-instance v8, Lw8/g;

    invoke-direct {v8, v7, v4}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 11
    invoke-virtual {v8}, Lw8/e;->i()Lc9/g;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/database/CursorWrapper;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lh8/q;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v5

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\nBLACK LIST["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v2, [Lx8/a;

    .line 12
    new-instance v8, Lw8/o;

    invoke-direct {v8, v7}, Lw8/o;-><init>([Lx8/a;)V

    .line 13
    const-class v7, Lh8/c;

    .line 14
    new-instance v9, Lw8/g;

    invoke-direct {v9, v8, v7}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 15
    invoke-virtual {v9}, Lw8/e;->i()Lc9/g;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/database/CursorWrapper;->getCount()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lh8/q;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v5

    goto :goto_2

    :cond_2
    move-object v7, v6

    :goto_2
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\nCONTACTS["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v2, [Lx8/a;

    .line 16
    new-instance v8, Lw8/o;

    invoke-direct {v8, v7}, Lw8/o;-><init>([Lx8/a;)V

    .line 17
    const-class v7, Lh8/i;

    .line 18
    new-instance v9, Lw8/g;

    invoke-direct {v9, v8, v7}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 19
    invoke-virtual {v9}, Lw8/e;->i()Lc9/g;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/database/CursorWrapper;->getCount()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lh8/q;->f(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v5

    goto :goto_3

    :cond_3
    move-object v7, v6

    :goto_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\nFOREIGN: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {v1, v0}, Ln8/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v5

    goto :goto_4

    :cond_4
    move-object v1, v6

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nCACHE["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v2, [Lx8/a;

    .line 21
    new-instance v7, Lw8/o;

    invoke-direct {v7, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 22
    const-class v1, Lh8/g;

    .line 23
    new-instance v8, Lw8/g;

    invoke-direct {v8, v7, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 24
    invoke-virtual {v8}, Lw8/e;->i()Lc9/g;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/database/CursorWrapper;->getCount()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lh8/q;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v5

    goto :goto_5

    :cond_5
    move-object v1, v6

    :goto_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nDB["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v2, [Lx8/a;

    .line 25
    new-instance v2, Lw8/o;

    invoke-direct {v2, v1}, Lw8/o;-><init>([Lx8/a;)V

    .line 26
    const-class v1, Lh8/r;

    .line 27
    new-instance v7, Lw8/g;

    invoke-direct {v7, v2, v1}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    .line 28
    invoke-virtual {v7}, Lw8/e;->i()Lc9/g;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/database/CursorWrapper;->getCount()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lh8/q;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move-object v5, v6

    :goto_6
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {}, Lba/b;->b()Lba/b;

    move-result-object v1

    new-instance v2, Lk8/c;

    invoke-direct {v2, v0}, Lk8/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lba/b;->g(Ljava/lang/Object;)V

    goto/16 :goto_1b

    :cond_7
    const-string v3, "EXTRA_BUNDLE"

    .line 30
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 31
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "EXTRA_STATE"

    .line 32
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 34
    sget-object v4, Lcom/mglab/scm/telephony/ForegroundService;->j:Ljava/lang/String;

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 36
    sput-object v3, Lcom/mglab/scm/telephony/ForegroundService;->j:Ljava/lang/String;

    .line 37
    sget-object v4, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string v3, ""

    .line 39
    sput-object v3, Lcom/mglab/scm/telephony/ForegroundService;->i:Ljava/lang/String;

    .line 40
    sput-object v3, Lcom/mglab/scm/telephony/ForegroundService;->h:Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 43
    invoke-static {v14}, Lf8/h;->F(Landroid/content/Context;)I

    move-result v6

    const-string v7, "incoming_number"

    .line 44
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    const-string v8, ";rn="

    .line 45
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_8

    .line 46
    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_8
    const-string v8, ";verstat="

    .line 47
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_9

    .line 48
    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_9
    const-string v8, "subscription"

    .line 49
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 50
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "subscriber"

    .line 51
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 52
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_7

    :cond_a
    const-string v8, "simId"

    .line 53
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 54
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_7

    :cond_b
    const-string v8, "com.android.phone.extra.slot"

    .line 55
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 56
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_7

    :cond_c
    const-string v8, "phone_id"

    .line 57
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 58
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_7

    .line 59
    :cond_d
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "sim"

    .line 60
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 61
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 62
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_7

    :cond_f
    const/4 v8, -0x1

    .line 63
    :cond_10
    :goto_7
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_12

    const/16 v10, 0x16

    if-lt v9, v10, :cond_12

    .line 64
    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v9

    .line 65
    invoke-virtual {v9}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_12

    .line 66
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/SubscriptionInfo;

    .line 67
    invoke-static {v10}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v15

    if-ne v15, v8, :cond_11

    .line 69
    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v8

    .line 70
    :cond_12
    invoke-static {v14}, Lf8/h;->b0(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lt v8, v9, :cond_13

    if-ne v9, v1, :cond_14

    .line 71
    :cond_13
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v9, "psimfirstno"

    invoke-static {v14, v9, v1}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    :cond_14
    invoke-static {v14}, Lf8/h;->E(Landroid/content/Context;)Z

    move-result v1

    const/16 v9, 0xa

    if-eqz v1, :cond_25

    .line 73
    new-instance v1, Ll8/w;

    invoke-direct {v1, v14}, Ll8/w;-><init>(Landroid/content/Context;)V

    iput-object v1, v11, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    .line 74
    invoke-static {v14}, Lf8/h;->E(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-static {v14}, Lf8/h;->S(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_16

    const/4 v10, 0x1

    .line 75
    :goto_8
    iget-object v15, v1, Ll8/w;->b:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v10, v15, :cond_16

    .line 76
    iput v10, v1, Ll8/w;->c:I

    .line 77
    invoke-virtual {v1, v8}, Ll8/w;->a(I)Z

    move-result v15

    if-eqz v15, :cond_15

    goto :goto_9

    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 78
    :cond_16
    iput v2, v1, Ll8/w;->c:I

    const/4 v10, 0x0

    .line 79
    :goto_9
    iget-object v1, v11, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ll8/w;->f(I)Z

    move-result v1

    .line 80
    iget-object v2, v11, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Ll8/w;->f(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 81
    iget-object v2, v11, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    invoke-virtual {v2, v8}, Ll8/w;->a(I)Z

    :cond_17
    if-gtz v10, :cond_18

    if-nez v10, :cond_26

    .line 82
    iget-object v2, v11, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    .line 83
    invoke-virtual {v2, v8}, Ll8/w;->a(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 84
    :cond_18
    iget-boolean v2, v11, Lcom/mglab/scm/telephony/ForegroundService;->c:Z

    if-eqz v2, :cond_19

    .line 85
    invoke-static {v14}, Lf8/h;->G(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_19

    const/16 v9, -0x309

    goto/16 :goto_a

    .line 86
    :cond_19
    invoke-static {v7}, Ln8/d;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 87
    iget-object v2, v11, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    invoke-virtual {v2, v9}, Ll8/w;->f(I)Z

    move-result v9

    goto/16 :goto_a

    .line 88
    :cond_1a
    iget-object v2, v11, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/4 v10, 0x6

    invoke-virtual {v2, v10}, Ll8/w;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 89
    invoke-static {v7}, Lh8/q;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/16 v9, -0x64

    goto/16 :goto_a

    .line 90
    :cond_1b
    invoke-static {v7}, Lh8/q;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/16 v9, -0x5a

    goto/16 :goto_a

    .line 91
    :cond_1c
    iget-object v2, v11, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/4 v10, 0x7

    invoke-virtual {v2, v10}, Ll8/w;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v9, 0x7

    goto/16 :goto_a

    .line 92
    :cond_1d
    iget-object v2, v11, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/4 v10, 0x5

    invoke-virtual {v2, v10}, Ll8/w;->f(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 93
    invoke-static {v7}, Lh8/q;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/16 v9, 0x14

    goto :goto_a

    .line 94
    :cond_1e
    iget-object v2, v11, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Ll8/w;->f(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 95
    invoke-static {v7}, Lh8/q;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v9, -0xa

    goto :goto_a

    .line 96
    :cond_1f
    iget-object v2, v11, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/16 v10, 0x9

    invoke-virtual {v2, v10}, Ll8/w;->f(I)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v9, 0x5

    goto :goto_a

    .line 97
    :cond_20
    iget-object v2, v11, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/4 v10, 0x5

    invoke-virtual {v2, v10}, Ll8/w;->f(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 98
    invoke-static {v7}, Lh8/q;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v9, 0x19

    goto :goto_a

    .line 99
    :cond_21
    iget-object v2, v11, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/16 v10, 0xb

    invoke-virtual {v2, v10}, Ll8/w;->f(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 100
    invoke-static {v14, v7}, Ln8/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_a

    .line 101
    :cond_22
    iget-object v2, v11, Lcom/mglab/scm/telephony/ForegroundService;->a:Ll8/w;

    const/4 v9, 0x4

    invoke-virtual {v2, v9}, Ll8/w;->f(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 102
    invoke-static {v7}, Lh8/q;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    const/16 v9, 0x1e

    goto :goto_a

    .line 103
    :cond_23
    invoke-static {v7}, Lh8/q;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/16 v9, 0x28

    goto :goto_a

    :cond_24
    const/4 v9, 0x0

    goto :goto_a

    :cond_25
    const/4 v1, 0x0

    :cond_26
    const/16 v9, -0x3e8

    .line 104
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/mglab/scm/telephony/ForegroundService;->i:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mglab/scm/telephony/ForegroundService;->i:Ljava/lang/String;

    if-lez v9, :cond_3a

    if-eqz v6, :cond_30

    const/4 v0, 0x1

    if-eq v6, v0, :cond_27

    move/from16 p2, v9

    goto/16 :goto_16

    .line 105
    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf8/h;->X(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "audio"

    if-eqz v0, :cond_29

    .line 106
    iget v0, v11, Lcom/mglab/scm/telephony/ForegroundService;->d:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_28

    goto :goto_b

    .line 107
    :cond_28
    :try_start_0
    invoke-virtual {v11, v13}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 108
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v3, v6, :cond_2b

    .line 109
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    move-result v3

    iput v3, v11, Lcom/mglab/scm/telephony/ForegroundService;->d:I

    const/4 v3, 0x4

    .line 110
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->setInterruptionFilter(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    .line 111
    :cond_29
    iget v0, v11, Lcom/mglab/scm/telephony/ForegroundService;->e:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2a

    goto :goto_b

    .line 112
    :cond_2a
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 113
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    iput v3, v11, Lcom/mglab/scm/telephony/ForegroundService;->e:I

    const/4 v3, 0x0

    .line 114
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_b
    const/4 v0, 0x1

    goto :goto_c

    :catch_0
    :cond_2b
    const/4 v0, 0x0

    .line 115
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lf8/h;->Z(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const-string v2, "vibrate_when_ringing"

    .line 116
    iget v3, v11, Lcom/mglab/scm/telephony/ForegroundService;->g:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2c

    goto :goto_d

    .line 117
    :cond_2c
    :try_start_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v3, v6, :cond_2f

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x1

    invoke-static {v3, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v11, Lcom/mglab/scm/telephony/ForegroundService;->g:I

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v10, 0x0

    invoke-static {v3, v2, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_d

    .line 121
    :cond_2d
    iget v3, v11, Lcom/mglab/scm/telephony/ForegroundService;->f:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2e

    goto :goto_d

    .line 122
    :cond_2e
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    const/4 v3, 0x0

    .line 123
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v6

    iput v6, v11, Lcom/mglab/scm/telephony/ForegroundService;->f:I

    .line 124
    invoke-virtual {v2, v3, v3}, Landroid/media/AudioManager;->setVibrateSetting(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 125
    :catch_1
    :cond_2f
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SILENCED = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mglab/scm/telephony/ForegroundService;->h:Ljava/lang/String;

    move/from16 p2, v9

    goto/16 :goto_17

    .line 126
    :cond_30
    sput-object v3, Lcom/mglab/scm/telephony/ForegroundService;->h:Ljava/lang/String;

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const-string v3, "T"

    if-lt v0, v2, :cond_31

    const-string v2, "android.permission.ANSWER_PHONE_CALLS"

    .line 128
    invoke-static {v11, v2}, Ld0/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_31

    const/4 v0, 0x0

    move/from16 p2, v9

    goto/16 :goto_15

    :cond_31
    const/16 v2, 0x18

    if-lt v0, v2, :cond_32

    .line 129
    iget-object v2, v11, Lcom/mglab/scm/telephony/ForegroundService;->b:Landroid/content/Context;

    .line 130
    invoke-static {v2}, Lf8/h;->Y(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, v11, Lcom/mglab/scm/telephony/ForegroundService;->b:Landroid/content/Context;

    .line 131
    invoke-static {v2}, Lf8/g;->w(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v2, 0x1

    .line 132
    sput-boolean v2, Lcom/mglab/scm/telephony/ForegroundService;->l:Z

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/mglab/scm/telephony/ForegroundService;->h:Ljava/lang/String;

    const-string v15, "0T"

    invoke-static {v2, v6, v15}, Landroid/support/v4/media/b;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mglab/scm/telephony/ForegroundService;->h:Ljava/lang/String;

    const/4 v2, 0x1

    goto :goto_e

    :cond_32
    const/4 v2, 0x0

    :goto_e
    const/16 v6, 0x1c

    if-lt v0, v6, :cond_35

    .line 134
    :try_start_4
    iget-object v0, v11, Lcom/mglab/scm/telephony/ForegroundService;->b:Landroid/content/Context;

    const-string v15, "telecom"

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_34

    .line 135
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v15, "1T"

    goto :goto_f

    :cond_33
    const-string v15, "1F"

    .line 136
    :goto_f
    sput-object v15, Lcom/mglab/scm/telephony/ForegroundService;->h:Ljava/lang/String;

    move v2, v0

    goto :goto_10

    :cond_34
    const-string v0, "1N"

    .line 137
    sput-object v0, Lcom/mglab/scm/telephony/ForegroundService;->h:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_10

    :catch_2
    move-exception v0

    const-string v15, "1E"

    .line 138
    sput-object v15, Lcom/mglab/scm/telephony/ForegroundService;->h:Ljava/lang/String;

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    :cond_35
    :goto_10
    sget-object v0, Lcom/mglab/scm/telephony/ForegroundService;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v6, :cond_37

    .line 141
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "phone"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 142
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v15, "getITelephony"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move/from16 p1, v2

    const/4 v2, 0x0

    move/from16 p2, v9

    :try_start_6
    new-array v9, v2, [Ljava/lang/Class;

    .line 143
    invoke-virtual {v6, v15, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v9, 0x1

    .line 144
    invoke-virtual {v6, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    .line 145
    invoke-virtual {v6, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .line 146
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    move-result v0

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/mglab/scm/telephony/ForegroundService;->h:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_36

    const-string v0, "2T"

    goto :goto_11

    :cond_36
    const-string v0, "2F"

    :goto_11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mglab/scm/telephony/ForegroundService;->h:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    const/4 v0, 0x1

    goto :goto_14

    :catch_3
    move-exception v0

    goto :goto_12

    :catch_4
    move-exception v0

    move/from16 p1, v2

    move/from16 p2, v9

    .line 148
    :goto_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/mglab/scm/telephony/ForegroundService;->h:Ljava/lang/String;

    const-string v9, "2E"

    invoke-static {v2, v6, v9}, Landroid/support/v4/media/b;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mglab/scm/telephony/ForegroundService;->h:Ljava/lang/String;

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    :cond_37
    move/from16 p1, v2

    move/from16 p2, v9

    :goto_13
    move/from16 v0, p1

    .line 150
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/mglab/scm/telephony/ForegroundService;->h:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/mglab/scm/telephony/ForegroundService;->i:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/mglab/scm/telephony/ForegroundService;->i:Ljava/lang/String;

    :goto_15
    if-eqz v0, :cond_38

    .line 151
    sget-object v0, Lcom/mglab/scm/telephony/ForegroundService;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    goto :goto_17

    :cond_38
    :goto_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_39

    .line 152
    invoke-static {v14}, Lf8/h;->d(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "psbtd"

    invoke-static {v14, v2, v0}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lf8/g;->l(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "psbtdd"

    invoke-static {v14, v2, v0}, Lf8/h;->o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {v14}, Lf8/h;->e(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "psbt"

    invoke-static {v14, v2, v0}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    invoke-static {v14}, Lf8/h;->a(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "appblc"

    invoke-static {v14, v2, v0}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v1, :cond_3b

    .line 156
    invoke-static {v14}, Lf8/h;->c(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "psbb"

    invoke-static {v14, v1, v0}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    invoke-static {v14}, Lf8/g;->I(Landroid/content/Context;)V

    .line 159
    invoke-static {v14}, Lf8/g;->I(Landroid/content/Context;)V

    goto :goto_18

    :cond_39
    const/16 v0, -0x29a

    const/16 v6, -0x29a

    goto :goto_19

    :cond_3a
    move/from16 p2, v9

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/mglab/scm/telephony/ForegroundService;->a()V

    :cond_3b
    :goto_18
    move/from16 v6, p2

    .line 161
    :goto_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v9, v0, v4

    .line 162
    new-instance v0, Ljava/lang/Thread;

    new-instance v15, Ln8/c;

    const/16 v16, 0x1

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v7

    move v7, v8

    move-wide v8, v9

    move-object v10, v14

    invoke-direct/range {v1 .. v10}, Ln8/c;-><init>(Lcom/mglab/scm/telephony/ForegroundService;Ljava/lang/String;JIIJLandroid/content/Context;)V

    invoke-direct {v0, v15}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 163
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 165
    invoke-static {v14}, Lf8/h;->g(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "psctd"

    invoke-static {v14, v1, v0}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lf8/g;->l(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "psctdd"

    invoke-static {v14, v1, v0}, Lf8/h;->o0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {v14}, Lf8/h;->h(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "psct"

    invoke-static {v14, v1, v0}, Lf8/h;->j0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1a

    :cond_3c
    const/4 v0, 0x1

    .line 168
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v1, 0x0

    .line 169
    iput-boolean v1, v11, Lcom/mglab/scm/telephony/ForegroundService;->c:Z

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 171
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lf8/c;

    const/4 v5, 0x2

    invoke-direct {v4, v2, v5}, Lf8/c;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 172
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 173
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 174
    invoke-static {v2, v1}, Lf8/g;->E(Landroid/content/Context;Z)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/mglab/scm/telephony/ForegroundService;->a()V

    goto :goto_1a

    :cond_3d
    const/4 v1, 0x0

    .line 176
    iput-boolean v0, v11, Lcom/mglab/scm/telephony/ForegroundService;->c:Z

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/mglab/scm/telephony/ForegroundService;->a()V

    :goto_1a
    const/4 v0, 0x0

    goto :goto_1c

    :cond_3e
    :goto_1b
    const/4 v0, 0x0

    const/16 v16, 0x1

    :goto_1c
    const/4 v1, 0x1

    .line 178
    iget-object v2, v11, Lcom/mglab/scm/telephony/ForegroundService;->b:Landroid/content/Context;

    invoke-static {v2}, Lf8/h;->K(Landroid/content/Context;)Z

    move-result v2

    const/16 v3, 0x1f

    const/high16 v4, 0x2000000

    const v5, 0x10008000

    const v7, 0x7f11002f

    if-eqz v2, :cond_47

    .line 179
    iget-object v2, v11, Lcom/mglab/scm/telephony/ForegroundService;->b:Landroid/content/Context;

    .line 180
    invoke-static {v2}, Lf8/h;->E(Landroid/content/Context;)Z

    move-result v8

    .line 181
    new-instance v9, Ljava/util/Locale;

    invoke-static {v2}, Lf8/h;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-static {v9, v7, v2}, Lcom/mglab/scm/visual/MGNotification;->a(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v8, :cond_3f

    const v10, 0x7f11017d

    .line 183
    invoke-static {v9, v10, v2}, Lcom/mglab/scm/visual/MGNotification;->a(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1d

    :cond_3f
    const v10, 0x7f110184

    .line 184
    invoke-static {v9, v10, v2}, Lcom/mglab/scm/visual/MGNotification;->a(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 185
    :goto_1d
    new-instance v10, Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f0c00cf

    invoke-direct {v10, v14, v15}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v14, 0x7f090195

    if-eqz v8, :cond_40

    const/high16 v15, 0x7f0e0000

    goto :goto_1e

    :cond_40
    const v15, 0x7f0e0001

    .line 186
    :goto_1e
    invoke-virtual {v10, v14, v15}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    if-eqz v8, :cond_41

    const v8, 0x7f080166

    goto :goto_1f

    :cond_41
    const v8, 0x7f080165

    :goto_1f
    const v14, 0x7f09008c

    .line 187
    invoke-virtual {v10, v14, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    const v8, 0x7f090383

    .line 188
    invoke-virtual {v10, v8, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v7, 0x7f090352

    .line 189
    invoke-virtual {v10, v7, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 190
    invoke-static {v2}, Lf8/h;->Q(Landroid/content/Context;)Z

    move-result v9

    .line 191
    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v6, 0x1030203

    .line 192
    invoke-virtual {v15, v2, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    if-eqz v9, :cond_42

    .line 193
    invoke-static {v2}, Lf8/h;->P(Landroid/content/Context;)I

    move-result v6

    goto :goto_20

    :cond_42
    invoke-virtual {v15}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    :goto_20
    invoke-virtual {v10, v8, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v6, 0x1030201

    .line 194
    invoke-virtual {v15, v2, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    if-eqz v9, :cond_43

    .line 195
    invoke-static {v2}, Lf8/h;->P(Landroid/content/Context;)I

    move-result v6

    goto :goto_21

    :cond_43
    invoke-virtual {v15}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    :goto_21
    invoke-virtual {v10, v7, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 196
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v3, :cond_44

    .line 199
    invoke-static {v2, v0, v6, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    goto :goto_22

    .line 200
    :cond_44
    invoke-static {v2, v0, v6, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 201
    :goto_22
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/mglab/scm/visual/MGNotification$notificationButtonListener;

    invoke-direct {v8, v2, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-lt v7, v3, :cond_45

    .line 202
    invoke-static {v2, v0, v8, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    goto :goto_23

    .line 203
    :cond_45
    invoke-static {v2, v0, v8, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 204
    :goto_23
    invoke-virtual {v10, v14, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 205
    new-instance v7, Lc0/m;

    const-string v8, "SCM_SERVICE"

    invoke-direct {v7, v2, v8}, Lc0/m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    iget-object v8, v7, Lc0/m;->q:Landroid/app/Notification;

    iput-object v10, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 207
    iput-boolean v0, v7, Lc0/m;->j:Z

    const v9, 0x7f08010c

    .line 208
    iput v9, v8, Landroid/app/Notification;->icon:I

    .line 209
    iput-object v6, v7, Lc0/m;->g:Landroid/app/PendingIntent;

    const/4 v6, 0x2

    .line 210
    invoke-virtual {v7, v6, v1}, Lc0/m;->e(IZ)V

    const/16 v6, 0x8

    .line 211
    invoke-virtual {v7, v6, v1}, Lc0/m;->e(IZ)V

    const/4 v6, -0x1

    .line 212
    iput v6, v7, Lc0/m;->n:I

    .line 213
    invoke-virtual {v7}, Lc0/m;->a()Landroid/app/Notification;

    move-result-object v6

    .line 214
    invoke-static {v2}, Lf8/h;->L(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_46

    const/4 v2, -0x2

    .line 215
    iput v2, v6, Landroid/app/Notification;->priority:I

    :cond_46
    const v2, 0xb8848

    .line 216
    invoke-virtual {v11, v2, v6}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_24

    :cond_47
    const v2, 0xb8848

    .line 217
    iget-object v6, v11, Lcom/mglab/scm/telephony/ForegroundService;->b:Landroid/content/Context;

    .line 218
    invoke-virtual {v6, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 219
    invoke-virtual {v6, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 220
    :goto_24
    iget-object v2, v11, Lcom/mglab/scm/telephony/ForegroundService;->b:Landroid/content/Context;

    .line 221
    invoke-static {v2}, Lf8/h;->c(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const v7, 0xb8849

    if-nez v6, :cond_48

    .line 222
    invoke-virtual {v2, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 223
    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_26

    .line 224
    :cond_48
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_49

    .line 227
    invoke-static {v2, v0, v6, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    goto :goto_25

    .line 228
    :cond_49
    invoke-static {v2, v0, v6, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 229
    :goto_25
    new-instance v4, Ljava/util/Locale;

    invoke-static {v2}, Lf8/h;->N(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const v5, 0x7f11002f

    .line 230
    invoke-static {v4, v5, v2}, Lcom/mglab/scm/visual/MGNotification;->a(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 231
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f110036

    invoke-static {v4, v8, v2}, Lcom/mglab/scm/visual/MGNotification;->a(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-static {v2}, Lf8/h;->c(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 233
    new-instance v6, Lc0/m;

    const-string v8, "SCM_BLOCKED"

    invoke-direct {v6, v2, v8}, Lc0/m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v6, v5}, Lc0/m;->d(Ljava/lang/CharSequence;)Lc0/m;

    .line 235
    invoke-virtual {v6, v4}, Lc0/m;->c(Ljava/lang/CharSequence;)Lc0/m;

    .line 236
    iput-boolean v1, v6, Lc0/m;->j:Z

    const/16 v4, 0x10

    .line 237
    invoke-virtual {v6, v4, v1}, Lc0/m;->e(IZ)V

    .line 238
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0e0000

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v6, v4}, Lc0/m;->f(Landroid/graphics/Bitmap;)Lc0/m;

    const v4, 0x7f0800da

    .line 239
    iget-object v5, v6, Lc0/m;->q:Landroid/app/Notification;

    iput v4, v5, Landroid/app/Notification;->icon:I

    .line 240
    iput-object v3, v6, Lc0/m;->g:Landroid/app/PendingIntent;

    const/4 v3, 0x2

    .line 241
    invoke-virtual {v6, v3, v0}, Lc0/m;->e(IZ)V

    .line 242
    invoke-virtual {v6}, Lc0/m;->a()Landroid/app/Notification;

    move-result-object v0

    .line 243
    invoke-virtual {v2, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 244
    invoke-virtual {v2, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_26
    return v1
.end method
