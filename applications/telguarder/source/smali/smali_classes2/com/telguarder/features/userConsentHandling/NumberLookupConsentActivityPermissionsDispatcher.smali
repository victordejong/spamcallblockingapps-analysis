.class final Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivityPermissionsDispatcher;
.super Ljava/lang/Object;
.source "NumberLookupConsentActivityPermissionsDispatcher.java"


# static fields
.field private static final PERMISSION_STARTNEXTACTIVITY:[Ljava/lang/String;

.field private static final REQUEST_STARTNEXTACTIVITY:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "android.permission.READ_PHONE_STATE"

    const-string v1, "android.permission.READ_CALL_LOG"

    const-string v2, "android.permission.READ_CONTACTS"

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v4, "android.permission.ANSWER_PHONE_CALLS"

    .line 12
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivityPermissionsDispatcher;->PERMISSION_STARTNEXTACTIVITY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onRequestPermissionsResult(Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;I[I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p2}, Lpermissions/dispatcher/PermissionUtils;->verifyPermissions([I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->startNextActivity()V

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->showDeniedForPermissions()V

    :goto_0
    return-void
.end method

.method static startNextActivityWithPermissionCheck(Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;)V
    .locals 2

    .line 18
    sget-object v0, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivityPermissionsDispatcher;->PERMISSION_STARTNEXTACTIVITY:[Ljava/lang/String;

    invoke-static {p0, v0}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/telguarder/features/userConsentHandling/NumberLookupConsentActivity;->startNextActivity()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 21
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
