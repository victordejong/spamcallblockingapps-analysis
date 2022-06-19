.class final Lcom/telguarder/features/main/MainActivityPermissionsDispatcher;
.super Ljava/lang/Object;
.source "MainActivityPermissionsDispatcher.java"


# static fields
.field private static final PERMISSION_INITCONTENT:[Ljava/lang/String;

.field private static final PERMISSION_SYSTEMALERTWINDOW:[Ljava/lang/String;

.field private static final REQUEST_INITCONTENT:I = 0x0

.field private static final REQUEST_SYSTEMALERTWINDOW:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "android.permission.READ_PHONE_STATE"

    const-string v1, "android.permission.READ_CALL_LOG"

    const-string v2, "android.permission.READ_CONTACTS"

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v4, "android.permission.ANSWER_PHONE_CALLS"

    const-string v5, "android.permission.CALL_PHONE"

    .line 15
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/telguarder/features/main/MainActivityPermissionsDispatcher;->PERMISSION_INITCONTENT:[Ljava/lang/String;

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 19
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/telguarder/features/main/MainActivityPermissionsDispatcher;->PERMISSION_SYSTEMALERTWINDOW:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initContentWithPermissionCheck(Lcom/telguarder/features/main/MainActivity;)V
    .locals 2

    .line 25
    sget-object v0, Lcom/telguarder/features/main/MainActivityPermissionsDispatcher;->PERMISSION_INITCONTENT:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->initContent()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 28
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method static onActivityResult(Lcom/telguarder/features/main/MainActivity;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    sget-object p1, Lcom/telguarder/features/main/MainActivityPermissionsDispatcher;->PERMISSION_SYSTEMALERTWINDOW:[Ljava/lang/String;

    invoke-static {p0, p1}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->systemAlertWindow()V

    :cond_2
    :goto_0
    return-void
.end method

.method static onRequestPermissionsResult(Lcom/telguarder/features/main/MainActivity;I[I)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->initContent()V

    :cond_1
    :goto_0
    return-void
.end method

.method static systemAlertWindowWithPermissionCheck(Lcom/telguarder/features/main/MainActivity;)V
    .locals 3

    .line 33
    sget-object v0, Lcom/telguarder/features/main/MainActivityPermissionsDispatcher;->PERMISSION_SYSTEMALERTWINDOW:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, 0x1

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/telguarder/features/main/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/telguarder/features/main/MainActivity;->systemAlertWindow()V

    :goto_1
    return-void
.end method
