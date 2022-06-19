.class public Lcom/allinone/callerid/util/l;
.super Ljava/lang/Object;
.source "EZCustomBlockHelper.java"


# static fields
.field public static a:Ljava/lang/String; = "block.db"

.field private static b:Lcom/allinone/callerid/util/l;


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

.method public static a()Lcom/allinone/callerid/util/l;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/l;->b:Lcom/allinone/callerid/util/l;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/util/l;

    invoke-direct {v0}, Lcom/allinone/callerid/util/l;-><init>()V

    sput-object v0, Lcom/allinone/callerid/util/l;->b:Lcom/allinone/callerid/util/l;

    .line 3
    :cond_0
    sget-object v0, Lcom/allinone/callerid/util/l;->b:Lcom/allinone/callerid/util/l;

    return-object v0
.end method


# virtual methods
.method public b()Lorg/xutils/DbManager;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {v0}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    sget-object v1, Lcom/allinone/callerid/util/l;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/util/l$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/util/l$c;-><init>(Lcom/allinone/callerid/util/l;)V

    .line 4
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/util/l$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/util/l$b;-><init>(Lcom/allinone/callerid/util/l;)V

    .line 5
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/util/l$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/util/l$a;-><init>(Lcom/allinone/callerid/util/l;)V

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
