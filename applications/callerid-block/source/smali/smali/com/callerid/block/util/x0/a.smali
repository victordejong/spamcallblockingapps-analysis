.class public Lcom/callerid/block/util/x0/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/util/x0/a$g;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field private static d:[Ljava/lang/String;

.field private static e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "android.permission.CAMERA"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lcom/callerid/block/util/x0/a;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v2, v0

    sput-object v2, Lcom/callerid/block/util/x0/a;->b:[Ljava/lang/String;

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "android.permission.SEND_SMS"

    aput-object v5, v4, v3

    const-string v6, "android.permission.RECEIVE_SMS"

    aput-object v6, v4, v0

    const-string v7, "android.permission.READ_SMS"

    aput-object v7, v4, v1

    const/4 v8, 0x3

    const-string v9, "android.permission.RECEIVE_MMS"

    aput-object v9, v4, v8

    sput-object v4, Lcom/callerid/block/util/x0/a;->c:[Ljava/lang/String;

    const/16 v4, 0xb

    new-array v10, v4, [Ljava/lang/String;

    const-string v11, "android.permission.READ_PHONE_STATE"

    aput-object v11, v10, v3

    const-string v12, "android.permission.CALL_PHONE"

    aput-object v12, v10, v0

    const-string v13, "android.permission.READ_CALL_LOG"

    aput-object v13, v10, v1

    const-string v14, "android.permission.PROCESS_OUTGOING_CALLS"

    aput-object v14, v10, v8

    const-string v15, "android.permission.READ_CONTACTS"

    aput-object v15, v10, v2

    const/16 v16, 0x5

    const-string v17, "android.permission.WRITE_CONTACTS"

    aput-object v17, v10, v16

    const/16 v18, 0x6

    const-string v19, "android.permission.GET_ACCOUNTS"

    aput-object v19, v10, v18

    const/16 v20, 0x7

    aput-object v5, v10, v20

    const/16 v21, 0x8

    aput-object v6, v10, v21

    const/16 v22, 0x9

    aput-object v7, v10, v22

    const/16 v23, 0xa

    aput-object v9, v10, v23

    sput-object v10, Lcom/callerid/block/util/x0/a;->d:[Ljava/lang/String;

    const/16 v10, 0xc

    new-array v10, v10, [Ljava/lang/String;

    aput-object v11, v10, v3

    aput-object v12, v10, v0

    aput-object v13, v10, v1

    aput-object v14, v10, v8

    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    aput-object v0, v10, v2

    aput-object v15, v10, v16

    aput-object v17, v10, v18

    aput-object v19, v10, v20

    aput-object v5, v10, v21

    aput-object v6, v10, v22

    const/16 v0, 0xa

    aput-object v7, v10, v0

    aput-object v9, v10, v4

    sput-object v10, Lcom/callerid/block/util/x0/a;->e:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/callerid/block/util/x0/a;->h(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    invoke-static {p0, p1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    const-string v0, "android.permission.READ_CONTACTS"

    invoke-static {p0, v0}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.WRITE_CONTACTS"

    invoke-static {p0, v0}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v0}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    const/16 v2, 0x1c

    const-string v3, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v4, "android.permission.READ_CALL_LOG"

    const-string v5, "android.permission.READ_PHONE_STATE"

    const/4 v6, 0x0

    const-string v7, "android.permission.CALL_PHONE"

    if-lt v0, v2, :cond_1

    invoke-static {p0, v7}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v5}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v4}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    invoke-static {p0, v0}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v3}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-static {p0, v7}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, v5}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, v4}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, v3}, Lcom/callerid/block/util/x0/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method public static e(Landroid/content/Context;)V
    .locals 5

    const/high16 v0, 0x10000000

    const-wide/16 v1, 0x1f4

    :try_start_0
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/callerid/block/util/x0/a$e;

    invoke-direct {v4, p0}, Lcom/callerid/block/util/x0/a$e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/callerid/block/util/x0/a$f;

    invoke-direct {v4, p0}, Lcom/callerid/block/util/x0/a$f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$NotificationAccessSettingsActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, ":settings:show_fragment"

    const-string v2, "NotificationAccessSettings"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static f()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 4

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/callerid/block/util/w;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "default_dialer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "enabled_notification_listeners"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static i(Landroid/app/Activity;Lcom/callerid/block/util/x0/a$g;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/hjq/permissions/d;->d(Landroid/app/Activity;)Lcom/hjq/permissions/d;

    move-result-object v0

    sget-object v1, Lcom/callerid/block/util/x0/a;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hjq/permissions/d;->b([Ljava/lang/String;)Lcom/hjq/permissions/d;

    new-instance v1, Lcom/callerid/block/util/x0/a$b;

    invoke-direct {v1, p1, p0}, Lcom/callerid/block/util/x0/a$b;-><init>(Lcom/callerid/block/util/x0/a$g;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/hjq/permissions/d;->c(Lcom/hjq/permissions/a;)V

    :cond_0
    return-void
.end method

.method public static j(Landroid/app/Activity;Lcom/callerid/block/util/x0/a$g;)V
    .locals 3

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/hjq/permissions/d;->d(Landroid/app/Activity;)Lcom/hjq/permissions/d;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/callerid/block/util/x0/a;->e:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/callerid/block/util/x0/a;->d:[Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/d;->b([Ljava/lang/String;)Lcom/hjq/permissions/d;

    new-instance v1, Lcom/callerid/block/util/x0/a$a;

    invoke-direct {v1, p1, p0}, Lcom/callerid/block/util/x0/a$a;-><init>(Lcom/callerid/block/util/x0/a$g;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/hjq/permissions/d;->c(Lcom/hjq/permissions/a;)V

    :cond_1
    return-void
.end method

.method public static k(Landroid/app/Activity;Lcom/callerid/block/util/x0/a$g;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/hjq/permissions/d;->d(Landroid/app/Activity;)Lcom/hjq/permissions/d;

    move-result-object v0

    sget-object v1, Lcom/callerid/block/util/x0/a;->c:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hjq/permissions/d;->b([Ljava/lang/String;)Lcom/hjq/permissions/d;

    new-instance v1, Lcom/callerid/block/util/x0/a$d;

    invoke-direct {v1, p1, p0}, Lcom/callerid/block/util/x0/a$d;-><init>(Lcom/callerid/block/util/x0/a$g;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/hjq/permissions/d;->c(Lcom/hjq/permissions/a;)V

    :cond_0
    return-void
.end method

.method public static l(Landroid/app/Activity;Lcom/callerid/block/util/x0/a$g;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/hjq/permissions/d;->d(Landroid/app/Activity;)Lcom/hjq/permissions/d;

    move-result-object v0

    sget-object v1, Lcom/callerid/block/util/x0/a;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hjq/permissions/d;->b([Ljava/lang/String;)Lcom/hjq/permissions/d;

    new-instance v1, Lcom/callerid/block/util/x0/a$c;

    invoke-direct {v1, p1, p0}, Lcom/callerid/block/util/x0/a$c;-><init>(Lcom/callerid/block/util/x0/a$g;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/hjq/permissions/d;->c(Lcom/hjq/permissions/a;)V

    :cond_0
    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/callerid/block/service/NLService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/callerid/block/service/NLService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
