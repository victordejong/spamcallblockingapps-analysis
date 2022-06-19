.class public final Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0002\u0008\u001d\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 F2\u00020\u0001:\u0001FB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00103\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00104\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00105\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00106\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00107\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00108\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u00109\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u0010:\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u000102H\u0002J\u001a\u0010;\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u000102H\u0002J\u0018\u0010<\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0008\u00101\u001a\u0004\u0018\u000102J\u0018\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020\u00042\u0006\u0010@\u001a\u00020\u0004H\u0002J\u0006\u0010A\u001a\u00020.J\u0018\u0010B\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u0010C\u001a\u00020\u0004H\u0002J*\u0010D\u001a\u00020E2\u0006\u0010/\u001a\u0002002\u0006\u0010?\u001a\u00020\u00042\u0006\u0010@\u001a\u00020\u00042\u0008\u00101\u001a\u0004\u0018\u000102H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006G"
    }
    d2 = {
        "Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;",
        "",
        "()V",
        "BRAND_ASUS",
        "",
        "BRAND_HONOR",
        "BRAND_HUAWEI",
        "BRAND_LETV",
        "BRAND_NOKIA",
        "BRAND_ONE_PLUS",
        "BRAND_OPPO",
        "BRAND_SAMSUNG",
        "BRAND_VIVO",
        "BRAND_XIAOMI",
        "BRAND_XIAOMI_REDMI",
        "PACKAGES_TO_CHECK_FOR_PERMISSION",
        "",
        "PACKAGE_ASUS_COMPONENT",
        "PACKAGE_ASUS_COMPONENT_FALLBACK",
        "PACKAGE_ASUS_MAIN",
        "PACKAGE_HONOR_COMPONENT",
        "PACKAGE_HONOR_MAIN",
        "PACKAGE_HUAWEI_COMPONENT",
        "PACKAGE_HUAWEI_COMPONENT_FALLBACK",
        "PACKAGE_HUAWEI_MAIN",
        "PACKAGE_LETV_COMPONENT",
        "PACKAGE_LETV_MAIN",
        "PACKAGE_NOKIA_COMPONENT",
        "PACKAGE_NOKIA_MAIN",
        "PACKAGE_ONE_PLUS_COMPONENT",
        "PACKAGE_ONE_PLUS_MAIN",
        "PACKAGE_OPPO_COMPONENT",
        "PACKAGE_OPPO_COMPONENT_FALLBACK",
        "PACKAGE_OPPO_COMPONENT_FALLBACK_A",
        "PACKAGE_OPPO_FALLBACK",
        "PACKAGE_OPPO_MAIN",
        "PACKAGE_SAMSUNG_COMPONENT",
        "PACKAGE_SAMSUNG_MAIN",
        "PACKAGE_VIVO_COMPONENT",
        "PACKAGE_VIVO_COMPONENT_FALLBACK",
        "PACKAGE_VIVO_COMPONENT_FALLBACK_A",
        "PACKAGE_VIVO_FALLBACK",
        "PACKAGE_VIVO_MAIN",
        "PACKAGE_XIAOMI_COMPONENT",
        "PACKAGE_XIAOMI_MAIN",
        "autoStartAsus",
        "",
        "context",
        "Landroid/content/Context;",
        "activityResult",
        "Lcom/callapp/contacts/manager/popup/ActivityResult;",
        "autoStartHonor",
        "autoStartHuawei",
        "autoStartLetv",
        "autoStartNokia",
        "autoStartOnePlus",
        "autoStartOppo",
        "autoStartSamsung",
        "autoStartVivo",
        "autoStartXiaomi",
        "getAutoStartPermission",
        "getIntent",
        "Landroid/content/Intent;",
        "packageName",
        "componentName",
        "isAutoStartPermissionAvailable",
        "isPackageExists",
        "targetPackage",
        "startIntent",
        "",
        "Companion",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper$Companion;


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field private final D:Ljava/lang/String;

.field private final E:Ljava/lang/String;

.field private final F:Ljava/lang/String;

.field private final G:Ljava/lang/String;

.field private final H:Ljava/lang/String;

.field private final I:Ljava/lang/String;

.field private final J:Ljava/lang/String;

.field private final K:Ljava/lang/String;

.field private final L:Ljava/lang/String;

.field private final M:Ljava/lang/String;

.field private final N:Ljava/lang/String;

.field private final O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a:Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 13

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "xiaomi"

    .line 17
    iput-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->b:Ljava/lang/String;

    const-string v0, "redmi"

    .line 18
    iput-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->c:Ljava/lang/String;

    const-string v0, "com.miui.securitycenter"

    .line 19
    iput-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->d:Ljava/lang/String;

    const-string v1, "com.miui.permcenter.autostart.AutoStartManagementActivity"

    .line 20
    iput-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->e:Ljava/lang/String;

    const-string v1, "letv"

    .line 25
    iput-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->f:Ljava/lang/String;

    const-string v1, "com.letv.android.letvsafe"

    .line 26
    iput-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->g:Ljava/lang/String;

    const-string v2, "com.letv.android.letvsafe.AutobootManageActivity"

    .line 27
    iput-object v2, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->h:Ljava/lang/String;

    const-string v2, "asus"

    .line 32
    iput-object v2, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->i:Ljava/lang/String;

    const-string v2, "com.asus.mobilemanager"

    .line 33
    iput-object v2, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->j:Ljava/lang/String;

    const-string v3, "com.asus.mobilemanager.powersaver.PowerSaverSettings"

    .line 34
    iput-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->k:Ljava/lang/String;

    const-string v3, "com.asus.mobilemanager.autostart.AutoStartActivity"

    .line 35
    iput-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->l:Ljava/lang/String;

    const-string v3, "honor"

    .line 40
    iput-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->m:Ljava/lang/String;

    const-string v3, "com.huawei.systemmanager"

    .line 41
    iput-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->n:Ljava/lang/String;

    const-string v4, "com.huawei.systemmanager.optimize.process.ProtectActivity"

    .line 42
    iput-object v4, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->o:Ljava/lang/String;

    const-string v5, "huawei"

    .line 47
    iput-object v5, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->p:Ljava/lang/String;

    .line 48
    iput-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->q:Ljava/lang/String;

    const-string v5, "com.huawei.systemmanager.startupmgr.ui.StartupNormalAppListActivity"

    .line 49
    iput-object v5, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->r:Ljava/lang/String;

    .line 50
    iput-object v4, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->s:Ljava/lang/String;

    const-string v4, "oppo"

    .line 55
    iput-object v4, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->t:Ljava/lang/String;

    const-string v4, "com.coloros.safecenter"

    .line 56
    iput-object v4, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->u:Ljava/lang/String;

    const-string v5, "com.oppo.safe"

    .line 57
    iput-object v5, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->v:Ljava/lang/String;

    const-string v6, "com.coloros.safecenter.permission.startup.StartupAppListActivity"

    .line 58
    iput-object v6, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->w:Ljava/lang/String;

    const-string v6, "com.oppo.safe.permission.startup.StartupAppListActivity"

    .line 59
    iput-object v6, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->x:Ljava/lang/String;

    const-string v6, "com.coloros.safecenter.startupapp.StartupAppListActivity"

    .line 60
    iput-object v6, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->y:Ljava/lang/String;

    const-string v6, "vivo"

    .line 66
    iput-object v6, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->z:Ljava/lang/String;

    const-string v6, "com.iqoo.secure"

    .line 67
    iput-object v6, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->A:Ljava/lang/String;

    const-string v7, "com.vivo.permissionmanager"

    .line 68
    iput-object v7, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->B:Ljava/lang/String;

    const-string v8, "com.iqoo.secure.ui.phoneoptimize.AddWhiteListActivity"

    .line 69
    iput-object v8, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->C:Ljava/lang/String;

    const-string v8, "com.vivo.permissionmanager.activity.BgStartUpManagerActivity"

    .line 70
    iput-object v8, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->D:Ljava/lang/String;

    const-string v8, "com.iqoo.secure.ui.phoneoptimize.BgStartUpManager"

    .line 71
    iput-object v8, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->E:Ljava/lang/String;

    const-string v8, "nokia"

    .line 77
    iput-object v8, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->F:Ljava/lang/String;

    const-string v8, "com.evenwell.powersaving.g3"

    .line 78
    iput-object v8, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->G:Ljava/lang/String;

    const-string v9, "com.evenwell.powersaving.g3.exception.PowerSaverExceptionActivity"

    .line 79
    iput-object v9, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->H:Ljava/lang/String;

    const-string v9, "samsung"

    .line 84
    iput-object v9, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->I:Ljava/lang/String;

    const-string v9, "com.samsung.android.lool"

    .line 85
    iput-object v9, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->J:Ljava/lang/String;

    const-string v10, "com.samsung.android.sm.ui.battery.BatteryActivity"

    .line 86
    iput-object v10, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->K:Ljava/lang/String;

    const-string v10, "oneplus"

    .line 91
    iput-object v10, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->L:Ljava/lang/String;

    const-string v10, "com.oneplus.security"

    .line 92
    iput-object v10, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->M:Ljava/lang/String;

    const-string v11, "com.oneplus.security.chainlaunch.view.ChainLaunchAppListActivity"

    .line 93
    iput-object v11, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->N:Ljava/lang/String;

    const/16 v11, 0xc

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    const/4 v2, 0x1

    aput-object v0, v11, v2

    const/4 v0, 0x2

    aput-object v1, v11, v0

    const/4 v0, 0x3

    aput-object v3, v11, v0

    const/4 v0, 0x4

    aput-object v4, v11, v0

    const/4 v0, 0x5

    aput-object v5, v11, v0

    const/4 v0, 0x6

    aput-object v6, v11, v0

    const/4 v0, 0x7

    aput-object v7, v11, v0

    const/16 v0, 0x8

    aput-object v8, v11, v0

    const/16 v0, 0x9

    aput-object v3, v11, v0

    const/16 v0, 0xa

    aput-object v9, v11, v0

    const/16 v0, 0xb

    aput-object v10, v11, v0

    .line 95
    invoke-static {v11}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->O:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 208
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/ActivityResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 395
    :try_start_0
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 396
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 397
    invoke-static {p0, p1, p3}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/callapp/contacts/manager/popup/ActivityResult;)V

    return-void

    .line 399
    :cond_0
    new-instance p0, Lcom/mopub/exceptions/IntentNotResolvableException;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 402
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 403
    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 411
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    const-string v1, "pm.getInstalledApplications(0)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 413
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private final b(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->e:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/ActivityResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method private final c(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->k:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/ActivityResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    :try_start_1
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->l:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/ActivityResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_1
    move-exception p1

    .line 236
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method private final d(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->h:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/ActivityResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 252
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method private final e(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->n:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->o:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/ActivityResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 267
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method private final f(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->q:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->r:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/ActivityResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    :try_start_1
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->q:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->s:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/ActivityResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_1
    move-exception p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method private final g(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->u:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->v:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 300
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->w:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/ActivityResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    :try_start_1
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->v:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->x:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/ActivityResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    :try_start_2
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->y:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/ActivityResult;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    const/4 p1, 0x1

    return p1

    :catch_2
    move-exception p1

    .line 310
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static final getInstance()Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;
    .locals 1

    sget-object v0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a:Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper$Companion;->getInstance()Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;

    move-result-object v0

    return-object v0
.end method

.method private final h(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->A:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->B:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 325
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->A:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->C:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/ActivityResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 327
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    :try_start_1
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->B:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->D:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/ActivityResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 333
    :try_start_2
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->A:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->E:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/ActivityResult;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    const/4 p1, 0x1

    return p1

    :catch_2
    move-exception p1

    .line 335
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method private final i(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->G:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->G:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->H:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/ActivityResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 352
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method private final j(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->J:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->J:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->K:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/ActivityResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 367
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method

.method private final k(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->M:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->M:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->N:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/ActivityResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 382
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "Build.BRAND"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->c(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z

    move-result p1

    return p1

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->d(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z

    move-result p1

    return p1

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->e(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z

    move-result p1

    return p1

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->f(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z

    move-result p1

    return p1

    .line 114
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->g(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z

    move-result p1

    return p1

    .line 116
    :cond_5
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->z:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->h(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z

    move-result p1

    return p1

    .line 118
    :cond_6
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->F:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->i(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z

    move-result p1

    return p1

    .line 120
    :cond_7
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->I:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->j(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z

    move-result p1

    return p1

    .line 122
    :cond_8
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->L:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->k(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1

    .line 106
    :cond_a
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->b(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ActivityResult;)Z

    move-result p1

    return p1
.end method

.method public final isAutoStartPermissionAvailable()Z
    .locals 4

    .line 132
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "Build.BRAND"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 138
    iget-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->i:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->j:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->l:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 144
    :cond_0
    iget-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->c:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_0

    .line 149
    :cond_1
    iget-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->f:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->g:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->h:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 154
    :cond_2
    iget-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->m:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 155
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->n:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->o:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 159
    :cond_3
    iget-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->p:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 160
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->q:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->r:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->s:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 165
    :cond_4
    iget-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->t:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 166
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->u:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->w:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->x:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->y:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 172
    :cond_5
    iget-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->z:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 173
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->A:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->C:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->B:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->D:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->A:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->E:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    :cond_6
    iget-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->F:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 180
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->G:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->H:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 184
    :cond_7
    iget-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->I:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 185
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->J:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->K:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    :cond_8
    iget-object v3, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->L:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 190
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->M:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->N:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    :cond_9
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->d:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/callappRomHelper/AutoStartPermissionHelper;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_a
    :goto_1
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 196
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 197
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method
