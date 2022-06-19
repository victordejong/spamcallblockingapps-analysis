.class public Lcom/callerid/block/sms/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static d:Lcom/callerid/block/sms/g;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/callerid/block/sms/g;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/callerid/block/sms/g;->b(Landroid/content/Context;Z)Lcom/callerid/block/sms/g;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Z)Lcom/callerid/block/sms/g;
    .locals 1

    sget-object v0, Lcom/callerid/block/sms/g;->d:Lcom/callerid/block/sms/g;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/callerid/block/sms/g;->f(Landroid/content/Context;)Lcom/callerid/block/sms/g;

    move-result-object p0

    sput-object p0, Lcom/callerid/block/sms/g;->d:Lcom/callerid/block/sms/g;

    :cond_1
    sget-object p0, Lcom/callerid/block/sms/g;->d:Lcom/callerid/block/sms/g;

    return-object p0
.end method

.method private static f(Landroid/content/Context;)Lcom/callerid/block/sms/g;
    .locals 3

    new-instance v0, Lcom/callerid/block/sms/g;

    invoke-direct {v0}, Lcom/callerid/block/sms/g;-><init>()V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "mmsc_url"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/callerid/block/sms/g;->a:Ljava/lang/String;

    const-string v1, "mms_proxy"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/callerid/block/sms/g;->b:Ljava/lang/String;

    const-string v1, "mms_port"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/callerid/block/sms/g;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/sms/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/sms/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/sms/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings{mmsc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callerid/block/sms/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mmsProxy=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/sms/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mmsPort=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/callerid/block/sms/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
