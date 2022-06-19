.class public Lcom/allinone/callerid/f/g;
.super Ljava/lang/Object;
.source "ReportDb.java"


# static fields
.field private static a:Lcom/allinone/callerid/f/g;


# instance fields
.field private b:Lorg/xutils/DbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    new-instance v0, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {v0}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    const-string v1, "com.report.reportnumber"

    .line 3
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    .line 5
    new-instance v1, Lcom/allinone/callerid/f/g$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/f/g$a;-><init>(Lcom/allinone/callerid/f/g;)V

    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    .line 6
    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/f/g;->b:Lorg/xutils/DbManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a()Lcom/allinone/callerid/f/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/f/g;->a:Lcom/allinone/callerid/f/g;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/f/g;

    invoke-direct {v0}, Lcom/allinone/callerid/f/g;-><init>()V

    sput-object v0, Lcom/allinone/callerid/f/g;->a:Lcom/allinone/callerid/f/g;

    .line 3
    :cond_0
    sget-object v0, Lcom/allinone/callerid/f/g;->a:Lcom/allinone/callerid/f/g;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/allinone/callerid/bean/ReportedContent;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/f/g;->b:Lorg/xutils/DbManager;

    const-class v1, Lcom/allinone/callerid/bean/ReportedContent;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/allinone/callerid/bean/ReportedContent;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/f/g;->b:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
