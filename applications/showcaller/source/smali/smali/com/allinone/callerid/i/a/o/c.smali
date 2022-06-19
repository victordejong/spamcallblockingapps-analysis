.class public Lcom/allinone/callerid/i/a/o/c;
.super Ljava/lang/Object;
.source "IpDbManager.java"


# static fields
.field private static a:Lcom/allinone/callerid/i/a/o/c;


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

    const-string v1, "parseripdb"

    .line 3
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    .line 5
    new-instance v1, Lcom/allinone/callerid/i/a/o/c$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/i/a/o/c$a;-><init>(Lcom/allinone/callerid/i/a/o/c;)V

    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    .line 6
    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lcom/allinone/callerid/i/a/o/c;->b:Lorg/xutils/DbManager;
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

.method public static a()Lcom/allinone/callerid/i/a/o/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/i/a/o/c;->a:Lcom/allinone/callerid/i/a/o/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/i/a/o/c;

    invoke-direct {v0}, Lcom/allinone/callerid/i/a/o/c;-><init>()V

    sput-object v0, Lcom/allinone/callerid/i/a/o/c;->a:Lcom/allinone/callerid/i/a/o/c;

    .line 3
    :cond_0
    sget-object v0, Lcom/allinone/callerid/i/a/o/c;->a:Lcom/allinone/callerid/i/a/o/c;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/allinone/callerid/bean/ParserIpBean;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/allinone/callerid/i/a/o/c;->b:Lorg/xutils/DbManager;

    const-class v2, Lcom/allinone/callerid/bean/ParserIpBean;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/ParserIpBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public c(Lcom/allinone/callerid/bean/ParserIpBean;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/allinone/callerid/i/a/o/c;->b()Lcom/allinone/callerid/bean/ParserIpBean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/i/a/o/c;->b:Lorg/xutils/DbManager;

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->saveOrUpdate(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/ParserIpBean;->getTrue_ip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/ParserIpBean;->setTrue_ip(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/ParserIpBean;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/ParserIpBean;->setCountry(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/ParserIpBean;->getCountry_full()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/ParserIpBean;->setCountry_full(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/ParserIpBean;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/ParserIpBean;->setState(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/ParserIpBean;->getState_full()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/ParserIpBean;->setState_full(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/allinone/callerid/bean/ParserIpBean;->getCity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/bean/ParserIpBean;->setCity(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/i/a/o/c;->b:Lorg/xutils/DbManager;

    const-string v1, "true_ip"

    const-string v2, "country"

    const-string v3, "country_full"

    const-string v4, "state"

    const-string v5, "state_full"

    const-string v6, "city"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
