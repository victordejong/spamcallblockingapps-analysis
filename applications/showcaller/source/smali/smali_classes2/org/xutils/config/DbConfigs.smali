.class public final enum Lorg/xutils/config/DbConfigs;
.super Ljava/lang/Enum;
.source "DbConfigs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/xutils/config/DbConfigs;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COOKIE:Lorg/xutils/config/DbConfigs;

.field public static final enum HTTP:Lorg/xutils/config/DbConfigs;

.field private static final synthetic d:[Lorg/xutils/config/DbConfigs;


# instance fields
.field private config:Lorg/xutils/DbManager$DaoConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/xutils/config/DbConfigs;

    new-instance v1, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {v1}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    const-string v2, "xUtils_http_cache.db"

    .line 2
    invoke-virtual {v1, v2}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v1

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v1, v2}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v1

    new-instance v3, Lorg/xutils/config/DbConfigs$b;

    invoke-direct {v3}, Lorg/xutils/config/DbConfigs$b;-><init>()V

    .line 4
    invoke-virtual {v1, v3}, Lorg/xutils/DbManager$DaoConfig;->setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v1

    new-instance v3, Lorg/xutils/config/DbConfigs$a;

    invoke-direct {v3}, Lorg/xutils/config/DbConfigs$a;-><init>()V

    .line 5
    invoke-virtual {v1, v3}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v1

    const-string v3, "HTTP"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1}, Lorg/xutils/config/DbConfigs;-><init>(Ljava/lang/String;ILorg/xutils/DbManager$DaoConfig;)V

    sput-object v0, Lorg/xutils/config/DbConfigs;->HTTP:Lorg/xutils/config/DbConfigs;

    .line 6
    new-instance v1, Lorg/xutils/config/DbConfigs;

    new-instance v3, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {v3}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    const-string v5, "xUtils_http_cookie.db"

    .line 7
    invoke-virtual {v3, v5}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v3

    const/4 v5, 0x1

    .line 8
    invoke-virtual {v3, v5}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v3

    new-instance v6, Lorg/xutils/config/DbConfigs$d;

    invoke-direct {v6}, Lorg/xutils/config/DbConfigs$d;-><init>()V

    .line 9
    invoke-virtual {v3, v6}, Lorg/xutils/DbManager$DaoConfig;->setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v3

    new-instance v6, Lorg/xutils/config/DbConfigs$c;

    invoke-direct {v6}, Lorg/xutils/config/DbConfigs$c;-><init>()V

    .line 10
    invoke-virtual {v3, v6}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v3

    const-string v6, "COOKIE"

    invoke-direct {v1, v6, v5, v3}, Lorg/xutils/config/DbConfigs;-><init>(Ljava/lang/String;ILorg/xutils/DbManager$DaoConfig;)V

    sput-object v1, Lorg/xutils/config/DbConfigs;->COOKIE:Lorg/xutils/config/DbConfigs;

    new-array v2, v2, [Lorg/xutils/config/DbConfigs;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    .line 11
    sput-object v2, Lorg/xutils/config/DbConfigs;->d:[Lorg/xutils/config/DbConfigs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/xutils/DbManager$DaoConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/DbManager$DaoConfig;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lorg/xutils/config/DbConfigs;->config:Lorg/xutils/DbManager$DaoConfig;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xutils/config/DbConfigs;
    .locals 1

    .line 1
    const-class v0, Lorg/xutils/config/DbConfigs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/xutils/config/DbConfigs;

    return-object p0
.end method

.method public static values()[Lorg/xutils/config/DbConfigs;
    .locals 1

    .line 1
    sget-object v0, Lorg/xutils/config/DbConfigs;->d:[Lorg/xutils/config/DbConfigs;

    invoke-virtual {v0}, [Lorg/xutils/config/DbConfigs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xutils/config/DbConfigs;

    return-object v0
.end method


# virtual methods
.method public getConfig()Lorg/xutils/DbManager$DaoConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xutils/config/DbConfigs;->config:Lorg/xutils/DbManager$DaoConfig;

    return-object v0
.end method
