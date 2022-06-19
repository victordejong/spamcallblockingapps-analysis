.class public final Lorg/mistergroup/shouldianswer/utils/o;
.super Ljava/lang/Object;
.source "PermissionHelper.kt"


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/utils/o;

.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/o;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/utils/o;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 58
    :try_start_0
    invoke-static {p1, p2}, Landroidx/core/a/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    .line 60
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p2, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/utils/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final a()Z
    .locals 2

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()Z
    .locals 2

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 2

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d()Landroid/content/Context;
    .locals 2

    .line 54
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/utils/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MyApp.instance.createDev\u2026ProtectedStorageContext()"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_0
    return-object v0
.end method

.method public final e()Z
    .locals 2

    .line 67
    sget-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-direct {p0, v0, v1}, Lorg/mistergroup/shouldianswer/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->b:Z

    .line 68
    :cond_0
    sget-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->b:Z

    return v0
.end method

.method public final f()Z
    .locals 2

    .line 72
    sget-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-direct {p0, v0, v1}, Lorg/mistergroup/shouldianswer/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->c:Z

    .line 73
    :cond_0
    sget-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->c:Z

    return v0
.end method

.method public final g()Z
    .locals 2

    .line 77
    sget-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->d:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-direct {p0, v0, v1}, Lorg/mistergroup/shouldianswer/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->d:Z

    .line 78
    :cond_0
    sget-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->d:Z

    return v0
.end method

.method public final h()Z
    .locals 2

    .line 82
    sget-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->e:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, v0, v1}, Lorg/mistergroup/shouldianswer/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->e:Z

    .line 83
    :cond_0
    sget-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->e:Z

    return v0
.end method

.method public final i()Z
    .locals 2

    .line 87
    sget-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->f:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-direct {p0, v0, v1}, Lorg/mistergroup/shouldianswer/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->f:Z

    .line 88
    :cond_0
    sget-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->f:Z

    return v0
.end method

.method public final j()Z
    .locals 2

    .line 92
    sget-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->g:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-direct {p0, v0, v1}, Lorg/mistergroup/shouldianswer/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->g:Z

    .line 93
    :cond_0
    sget-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->g:Z

    return v0
.end method

.method public final k()Z
    .locals 2

    .line 97
    sget-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->h:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-direct {p0, v0, v1}, Lorg/mistergroup/shouldianswer/utils/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->h:Z

    .line 98
    :cond_0
    sget-boolean v0, Lorg/mistergroup/shouldianswer/utils/o;->h:Z

    return v0
.end method

.method public final l()Z
    .locals 10

    const/4 v0, 0x0

    .line 104
    :try_start_0
    sget-object v1, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/utils/o;->c()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 108
    :try_start_1
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/y;->g()Landroid/view/WindowManager;

    move-result-object v1

    .line 109
    new-instance v2, Landroid/view/View;

    sget-object v3, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x7f6

    const/16 v8, 0x18

    const/4 v9, -0x2

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 112
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    check-cast v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 117
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 122
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public final m()Z
    .locals 1

    .line 129
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
