.class public Lcom/allinone/callerid/util/j1/a;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/util/j1/a$g;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field private static e:[Ljava/lang/String;

.field private static f:[Ljava/lang/String;

.field private static g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "android.permission.READ_PHONE_STATE"

    const-string v1, "android.permission.READ_PHONE_NUMBERS"

    const-string v2, "android.permission.CALL_PHONE"

    const-string v3, "android.permission.READ_CALL_LOG"

    const-string v4, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/allinone/callerid/util/j1/a;->a:[Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "android.permission.READ_PHONE_NUMBERS"

    const-string v3, "android.permission.CALL_PHONE"

    const-string v4, "android.permission.READ_CALL_LOG"

    const-string v5, "android.permission.ANSWER_PHONE_CALLS"

    const-string v6, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 2
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/allinone/callerid/util/j1/a;->b:[Ljava/lang/String;

    const-string v0, "android.permission.READ_CONTACTS"

    const-string v1, "android.permission.WRITE_CONTACTS"

    const-string v2, "android.permission.GET_ACCOUNTS"

    .line 3
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/allinone/callerid/util/j1/a;->c:[Ljava/lang/String;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/allinone/callerid/util/j1/a;->d:[Ljava/lang/String;

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "android.permission.READ_PHONE_NUMBERS"

    const-string v5, "android.permission.CALL_PHONE"

    const-string v6, "android.permission.READ_CALL_LOG"

    const-string v7, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v8, "android.permission.READ_CONTACTS"

    const-string v9, "android.permission.WRITE_CONTACTS"

    const-string v10, "android.permission.GET_ACCOUNTS"

    .line 5
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/allinone/callerid/util/j1/a;->e:[Ljava/lang/String;

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "android.permission.READ_PHONE_NUMBERS"

    const-string v5, "android.permission.CALL_PHONE"

    const-string v6, "android.permission.ANSWER_PHONE_CALLS"

    const-string v7, "android.permission.READ_CALL_LOG"

    const-string v8, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v9, "android.permission.READ_CONTACTS"

    const-string v10, "android.permission.WRITE_CONTACTS"

    const-string v11, "android.permission.GET_ACCOUNTS"

    .line 6
    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/allinone/callerid/util/j1/a;->f:[Ljava/lang/String;

    const-string v2, "android.permission.RECORD_AUDIO"

    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/allinone/callerid/util/j1/a;->g:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/j1/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/allinone/callerid/util/j1/a;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/allinone/callerid/util/j1/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/allinone/callerid/util/j1/a;->k(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 2
    invoke-static {p0, v0}, Lcom/allinone/callerid/util/j1/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 3
    invoke-static {p0, v0}, Lcom/allinone/callerid/util/j1/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 4
    invoke-static {p0, v0}, Lcom/allinone/callerid/util/j1/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    const-string v0, "android.permission.READ_CONTACTS"

    .line 2
    invoke-static {p0, v0}, Lcom/allinone/callerid/util/j1/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.WRITE_CONTACTS"

    .line 3
    invoke-static {p0, v0}, Lcom/allinone/callerid/util/j1/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.GET_ACCOUNTS"

    .line 4
    invoke-static {p0, v0}, Lcom/allinone/callerid/util/j1/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 8

    .line 1
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

    .line 2
    invoke-static {p0, v7}, Lcom/allinone/callerid/util/j1/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, v5}, Lcom/allinone/callerid/util/j1/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0, v4}, Lcom/allinone/callerid/util/j1/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    .line 5
    invoke-static {p0, v0}, Lcom/allinone/callerid/util/j1/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p0, v3}, Lcom/allinone/callerid/util/j1/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 7
    :cond_1
    invoke-static {p0, v7}, Lcom/allinone/callerid/util/j1/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {p0, v5}, Lcom/allinone/callerid/util/j1/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {p0, v4}, Lcom/allinone/callerid/util/j1/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-static {p0, v3}, Lcom/allinone/callerid/util/j1/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1
    invoke-static {p0, v0}, Lcom/allinone/callerid/util/j1/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    invoke-static {p0, v0}, Lcom/allinone/callerid/util/j1/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "accessibility"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 4
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wbb"

    invoke-static {v2, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.allinone.callerid/.service.MyAccessibilityService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static h()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

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

.method public static i(Landroid/content/Context;)Z
    .locals 4

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "telecom"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-boolean v1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "default_dialer"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
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

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static j()Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/j1/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static l()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_notification_listeners"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static m(Landroid/app/Activity;Lcom/allinone/callerid/util/j1/a$g;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/hjq/permissions/d;->d(Landroid/app/Activity;)Lcom/hjq/permissions/d;

    move-result-object v0

    sget-object v1, Lcom/allinone/callerid/util/j1/a;->c:[Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/d;->b([Ljava/lang/String;)Lcom/hjq/permissions/d;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/util/j1/a$c;

    invoke-direct {v1, p1, p0}, Lcom/allinone/callerid/util/j1/a$c;-><init>(Lcom/allinone/callerid/util/j1/a$g;Landroid/app/Activity;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/d;->c(Lcom/hjq/permissions/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static n(Landroid/app/Activity;Lcom/allinone/callerid/util/j1/a$g;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/hjq/permissions/d;->d(Landroid/app/Activity;)Lcom/hjq/permissions/d;

    move-result-object v0

    sget-object v1, Lcom/allinone/callerid/util/j1/a;->g:[Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/d;->b([Ljava/lang/String;)Lcom/hjq/permissions/d;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/util/j1/a$d;

    invoke-direct {v1, p1, p0}, Lcom/allinone/callerid/util/j1/a$d;-><init>(Lcom/allinone/callerid/util/j1/a$g;Landroid/app/Activity;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/d;->c(Lcom/hjq/permissions/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static o(Landroid/app/Activity;Lcom/allinone/callerid/util/j1/a$g;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/hjq/permissions/d;->d(Landroid/app/Activity;)Lcom/hjq/permissions/d;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/allinone/callerid/util/j1/a;->f:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/allinone/callerid/util/j1/a;->e:[Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/d;->b([Ljava/lang/String;)Lcom/hjq/permissions/d;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/util/j1/a$a;

    invoke-direct {v1, p1, p0}, Lcom/allinone/callerid/util/j1/a$a;-><init>(Lcom/allinone/callerid/util/j1/a$g;Landroid/app/Activity;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/d;->c(Lcom/hjq/permissions/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public static p(Landroid/content/Context;)V
    .locals 4

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/allinone/callerid/util/j1/a$f;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/util/j1/a$f;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static q(Landroid/app/Activity;Lcom/allinone/callerid/util/j1/a$g;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/hjq/permissions/d;->d(Landroid/app/Activity;)Lcom/hjq/permissions/d;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/allinone/callerid/util/j1/a;->b:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/allinone/callerid/util/j1/a;->a:[Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/d;->b([Ljava/lang/String;)Lcom/hjq/permissions/d;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/util/j1/a$b;

    invoke-direct {v1, p1, p0}, Lcom/allinone/callerid/util/j1/a$b;-><init>(Lcom/allinone/callerid/util/j1/a$g;Landroid/app/Activity;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/d;->c(Lcom/hjq/permissions/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public static r(Landroid/app/Activity;Lcom/allinone/callerid/util/j1/a$g;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/hjq/permissions/d;->d(Landroid/app/Activity;)Lcom/hjq/permissions/d;

    move-result-object v0

    sget-object v1, Lcom/allinone/callerid/util/j1/a;->d:[Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/d;->b([Ljava/lang/String;)Lcom/hjq/permissions/d;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/util/j1/a$e;

    invoke-direct {v1, p1, p0}, Lcom/allinone/callerid/util/j1/a$e;-><init>(Lcom/allinone/callerid/util/j1/a$g;Landroid/app/Activity;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/d;->c(Lcom/hjq/permissions/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static s(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
