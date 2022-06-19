.class public Lcom/allinone/callerid/util/k;
.super Ljava/lang/Object;
.source "EZBlackNameHelper.java"


# static fields
.field private static a:Lcom/allinone/callerid/util/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/allinone/callerid/util/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/k;->a:Lcom/allinone/callerid/util/k;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/util/k;

    invoke-direct {v0}, Lcom/allinone/callerid/util/k;-><init>()V

    sput-object v0, Lcom/allinone/callerid/util/k;->a:Lcom/allinone/callerid/util/k;

    .line 3
    :cond_0
    sget-object v0, Lcom/allinone/callerid/util/k;->a:Lcom/allinone/callerid/util/k;

    return-object v0
.end method


# virtual methods
.method public b()Lorg/xutils/DbManager;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {v0}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    const-string v1, "blacklist"

    .line 2
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    const/4 v1, 0x6

    .line 3
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/util/k$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/util/k$c;-><init>(Lcom/allinone/callerid/util/k;)V

    .line 4
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/util/k$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/util/k$b;-><init>(Lcom/allinone/callerid/util/k;)V

    .line 5
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/util/k$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/util/k$a;-><init>(Lcom/allinone/callerid/util/k;)V

    .line 6
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setTableCreateListener(Lorg/xutils/DbManager$TableCreateListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
