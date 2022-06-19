.class public final Lorg/mistergroup/shouldianswer/utils/y;
.super Ljava/lang/Object;
.source "SystemServices.kt"


# static fields
.field static final synthetic a:[Lkotlin/g/e;

.field public static final b:Lorg/mistergroup/shouldianswer/utils/y;

.field private static final c:Lkotlin/e;

.field private static final d:Lkotlin/e;

.field private static final e:Lkotlin/e;

.field private static final f:Lkotlin/e;

.field private static final g:Lkotlin/e;

.field private static final h:Lkotlin/e;

.field private static final i:Lkotlin/e;

.field private static final j:Lkotlin/e;

.field private static final k:Lkotlin/e;

.field private static final l:Lkotlin/e;

.field private static final m:Lkotlin/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lorg/mistergroup/shouldianswer/utils/y;

    const/16 v1, 0xb

    new-array v1, v1, [Lkotlin/g/e;

    new-instance v2, Lkotlin/e/b/l;

    invoke-static {v0}, Lkotlin/e/b/n;->a(Ljava/lang/Class;)Lkotlin/g/b;

    move-result-object v3

    const-string v4, "clipboardManager"

    const-string v5, "getClipboardManager()Landroid/content/ClipboardManager;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/e/b/l;-><init>(Lkotlin/g/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/e/b/n;->a(Lkotlin/e/b/k;)Lkotlin/g/f;

    move-result-object v2

    check-cast v2, Lkotlin/g/e;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/e/b/l;

    invoke-static {v0}, Lkotlin/e/b/n;->a(Ljava/lang/Class;)Lkotlin/g/b;

    move-result-object v3

    const-string v4, "packageManager"

    const-string v5, "getPackageManager()Landroid/content/pm/PackageManager;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/e/b/l;-><init>(Lkotlin/g/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/e/b/n;->a(Lkotlin/e/b/k;)Lkotlin/g/f;

    move-result-object v2

    check-cast v2, Lkotlin/g/e;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/e/b/l;

    invoke-static {v0}, Lkotlin/e/b/n;->a(Ljava/lang/Class;)Lkotlin/g/b;

    move-result-object v3

    const-string v4, "notificationManager"

    const-string v5, "getNotificationManager()Landroid/app/NotificationManager;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/e/b/l;-><init>(Lkotlin/g/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/e/b/n;->a(Lkotlin/e/b/k;)Lkotlin/g/f;

    move-result-object v2

    check-cast v2, Lkotlin/g/e;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/e/b/l;

    invoke-static {v0}, Lkotlin/e/b/n;->a(Ljava/lang/Class;)Lkotlin/g/b;

    move-result-object v3

    const-string v4, "telephonyManager"

    const-string v5, "getTelephonyManager()Landroid/telephony/TelephonyManager;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/e/b/l;-><init>(Lkotlin/g/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/e/b/n;->a(Lkotlin/e/b/k;)Lkotlin/g/f;

    move-result-object v2

    check-cast v2, Lkotlin/g/e;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/e/b/l;

    invoke-static {v0}, Lkotlin/e/b/n;->a(Ljava/lang/Class;)Lkotlin/g/b;

    move-result-object v3

    const-string v4, "activityManager"

    const-string v5, "getActivityManager()Landroid/app/ActivityManager;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/e/b/l;-><init>(Lkotlin/g/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/e/b/n;->a(Lkotlin/e/b/k;)Lkotlin/g/f;

    move-result-object v2

    check-cast v2, Lkotlin/g/e;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/e/b/l;

    invoke-static {v0}, Lkotlin/e/b/n;->a(Ljava/lang/Class;)Lkotlin/g/b;

    move-result-object v3

    const-string v4, "subscriptionManager"

    const-string v5, "getSubscriptionManager()Landroid/telephony/SubscriptionManager;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/e/b/l;-><init>(Lkotlin/g/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/e/b/n;->a(Lkotlin/e/b/k;)Lkotlin/g/f;

    move-result-object v2

    check-cast v2, Lkotlin/g/e;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/e/b/l;

    invoke-static {v0}, Lkotlin/e/b/n;->a(Ljava/lang/Class;)Lkotlin/g/b;

    move-result-object v3

    const-string v4, "connectivityManager"

    const-string v5, "getConnectivityManager()Landroid/net/ConnectivityManager;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/e/b/l;-><init>(Lkotlin/g/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/e/b/n;->a(Lkotlin/e/b/k;)Lkotlin/g/f;

    move-result-object v2

    check-cast v2, Lkotlin/g/e;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/e/b/l;

    invoke-static {v0}, Lkotlin/e/b/n;->a(Ljava/lang/Class;)Lkotlin/g/b;

    move-result-object v3

    const-string v4, "windowManager"

    const-string v5, "getWindowManager()Landroid/view/WindowManager;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/e/b/l;-><init>(Lkotlin/g/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/e/b/n;->a(Lkotlin/e/b/k;)Lkotlin/g/f;

    move-result-object v2

    check-cast v2, Lkotlin/g/e;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/e/b/l;

    invoke-static {v0}, Lkotlin/e/b/n;->a(Ljava/lang/Class;)Lkotlin/g/b;

    move-result-object v3

    const-string v4, "telecomManager"

    const-string v5, "getTelecomManager()Landroid/telecom/TelecomManager;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/e/b/l;-><init>(Lkotlin/g/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/e/b/n;->a(Lkotlin/e/b/k;)Lkotlin/g/f;

    move-result-object v2

    check-cast v2, Lkotlin/g/e;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/e/b/l;

    invoke-static {v0}, Lkotlin/e/b/n;->a(Ljava/lang/Class;)Lkotlin/g/b;

    move-result-object v3

    const-string v4, "inputMethodManager"

    const-string v5, "getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/e/b/l;-><init>(Lkotlin/g/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/e/b/n;->a(Lkotlin/e/b/k;)Lkotlin/g/f;

    move-result-object v2

    check-cast v2, Lkotlin/g/e;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/e/b/l;

    invoke-static {v0}, Lkotlin/e/b/n;->a(Ljava/lang/Class;)Lkotlin/g/b;

    move-result-object v0

    const-string v3, "powerManager"

    const-string v4, "getPowerManager()Landroid/os/PowerManager;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/e/b/l;-><init>(Lkotlin/g/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/e/b/n;->a(Lkotlin/e/b/k;)Lkotlin/g/f;

    move-result-object v0

    check-cast v0, Lkotlin/g/e;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    sput-object v1, Lorg/mistergroup/shouldianswer/utils/y;->a:[Lkotlin/g/e;

    .line 17
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/y;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/utils/y;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    .line 18
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y$b;->a:Lorg/mistergroup/shouldianswer/utils/y$b;

    check-cast v0, Lkotlin/e/a/a;

    invoke-static {v0}, Lkotlin/f;->a(Lkotlin/e/a/a;)Lkotlin/e;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/y;->c:Lkotlin/e;

    .line 22
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y$f;->a:Lorg/mistergroup/shouldianswer/utils/y$f;

    check-cast v0, Lkotlin/e/a/a;

    invoke-static {v0}, Lkotlin/f;->a(Lkotlin/e/a/a;)Lkotlin/e;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/y;->d:Lkotlin/e;

    .line 26
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y$e;->a:Lorg/mistergroup/shouldianswer/utils/y$e;

    check-cast v0, Lkotlin/e/a/a;

    invoke-static {v0}, Lkotlin/f;->a(Lkotlin/e/a/a;)Lkotlin/e;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/y;->e:Lkotlin/e;

    .line 30
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y$j;->a:Lorg/mistergroup/shouldianswer/utils/y$j;

    check-cast v0, Lkotlin/e/a/a;

    invoke-static {v0}, Lkotlin/f;->a(Lkotlin/e/a/a;)Lkotlin/e;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/y;->f:Lkotlin/e;

    .line 34
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y$a;->a:Lorg/mistergroup/shouldianswer/utils/y$a;

    check-cast v0, Lkotlin/e/a/a;

    invoke-static {v0}, Lkotlin/f;->a(Lkotlin/e/a/a;)Lkotlin/e;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/y;->g:Lkotlin/e;

    .line 38
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y$h;->a:Lorg/mistergroup/shouldianswer/utils/y$h;

    check-cast v0, Lkotlin/e/a/a;

    invoke-static {v0}, Lkotlin/f;->a(Lkotlin/e/a/a;)Lkotlin/e;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/y;->h:Lkotlin/e;

    .line 42
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y$c;->a:Lorg/mistergroup/shouldianswer/utils/y$c;

    check-cast v0, Lkotlin/e/a/a;

    invoke-static {v0}, Lkotlin/f;->a(Lkotlin/e/a/a;)Lkotlin/e;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/y;->i:Lkotlin/e;

    .line 45
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y$k;->a:Lorg/mistergroup/shouldianswer/utils/y$k;

    check-cast v0, Lkotlin/e/a/a;

    invoke-static {v0}, Lkotlin/f;->a(Lkotlin/e/a/a;)Lkotlin/e;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/y;->j:Lkotlin/e;

    .line 48
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y$i;->a:Lorg/mistergroup/shouldianswer/utils/y$i;

    check-cast v0, Lkotlin/e/a/a;

    invoke-static {v0}, Lkotlin/f;->a(Lkotlin/e/a/a;)Lkotlin/e;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/y;->k:Lkotlin/e;

    .line 52
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y$d;->a:Lorg/mistergroup/shouldianswer/utils/y$d;

    check-cast v0, Lkotlin/e/a/a;

    invoke-static {v0}, Lkotlin/f;->a(Lkotlin/e/a/a;)Lkotlin/e;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/y;->l:Lkotlin/e;

    .line 56
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y$g;->a:Lorg/mistergroup/shouldianswer/utils/y$g;

    check-cast v0, Lkotlin/e/a/a;

    invoke-static {v0}, Lkotlin/f;->a(Lkotlin/e/a/a;)Lkotlin/e;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/y;->m:Lkotlin/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ClipboardManager;
    .locals 3

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y;->c:Lkotlin/e;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/y;->a:[Lkotlin/g/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    return-object v0
.end method

.method public final b()Landroid/content/pm/PackageManager;
    .locals 3

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y;->d:Lkotlin/e;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/y;->a:[Lkotlin/g/e;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public final c()Landroid/app/NotificationManager;
    .locals 3

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y;->e:Lkotlin/e;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/y;->a:[Lkotlin/g/e;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method public final d()Landroid/telephony/TelephonyManager;
    .locals 3

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y;->f:Lkotlin/e;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/y;->a:[Lkotlin/g/e;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public final e()Landroid/telephony/SubscriptionManager;
    .locals 3

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y;->h:Lkotlin/e;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/y;->a:[Lkotlin/g/e;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method public final f()Landroid/net/ConnectivityManager;
    .locals 3

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y;->i:Lkotlin/e;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/y;->a:[Lkotlin/g/e;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public final g()Landroid/view/WindowManager;
    .locals 3

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y;->j:Lkotlin/e;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/y;->a:[Lkotlin/g/e;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method public final h()Landroid/telecom/TelecomManager;
    .locals 3

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y;->k:Lkotlin/e;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/y;->a:[Lkotlin/g/e;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public final i()Landroid/view/inputmethod/InputMethodManager;
    .locals 3

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y;->l:Lkotlin/e;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/y;->a:[Lkotlin/g/e;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public final j()Landroid/os/PowerManager;
    .locals 3

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y;->m:Lkotlin/e;

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/y;->a:[Lkotlin/g/e;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    return-object v0
.end method
