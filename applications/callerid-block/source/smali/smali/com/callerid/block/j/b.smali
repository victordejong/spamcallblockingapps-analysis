.class public Lcom/callerid/block/j/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lcom/callerid/block/j/b;


# instance fields
.field private a:Lcom/lidroid/xutils/DbUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    const-string v1, "parseripdb"

    const/4 v2, 0x1

    new-instance v3, Lcom/callerid/block/j/b$a;

    invoke-direct {v3, p0}, Lcom/callerid/block/j/b$a;-><init>(Lcom/callerid/block/j/b;)V

    invoke-static {v0, v1, v2, v3}, Lcom/lidroid/xutils/DbUtils;->create(Landroid/content/Context;Ljava/lang/String;ILcom/lidroid/xutils/DbUtils$DbUpgradeListener;)Lcom/lidroid/xutils/DbUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/callerid/block/j/b;->a:Lcom/lidroid/xutils/DbUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a()Lcom/callerid/block/j/b;
    .locals 1

    sget-object v0, Lcom/callerid/block/j/b;->b:Lcom/callerid/block/j/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/callerid/block/j/b;

    invoke-direct {v0}, Lcom/callerid/block/j/b;-><init>()V

    sput-object v0, Lcom/callerid/block/j/b;->b:Lcom/callerid/block/j/b;

    :cond_0
    sget-object v0, Lcom/callerid/block/j/b;->b:Lcom/callerid/block/j/b;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/callerid/block/bean/ParserIpBean;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/callerid/block/j/b;->a:Lcom/lidroid/xutils/DbUtils;

    const-class v2, Lcom/callerid/block/bean/ParserIpBean;

    invoke-virtual {v1, v2}, Lcom/lidroid/xutils/DbUtils;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callerid/block/bean/ParserIpBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public c(Lcom/callerid/block/bean/ParserIpBean;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/callerid/block/j/b;->b()Lcom/callerid/block/bean/ParserIpBean;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/j/b;->a:Lcom/lidroid/xutils/DbUtils;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdate(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/callerid/block/bean/ParserIpBean;->getTrue_ip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/ParserIpBean;->setTrue_ip(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/bean/ParserIpBean;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/ParserIpBean;->setCountry(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/bean/ParserIpBean;->getCountry_full()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/ParserIpBean;->setCountry_full(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/bean/ParserIpBean;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/ParserIpBean;->setState(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/bean/ParserIpBean;->getState_full()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callerid/block/bean/ParserIpBean;->setState_full(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callerid/block/bean/ParserIpBean;->getCity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callerid/block/bean/ParserIpBean;->setCity(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/j/b;->a:Lcom/lidroid/xutils/DbUtils;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "true_ip"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "country"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "country_full"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "state"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "state_full"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "city"

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/lidroid/xutils/DbUtils;->update(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
