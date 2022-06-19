.class public Lcom/flurry/sdk/jk;
.super Lcom/flurry/sdk/lg;
.source ""

# interfaces
.implements Lcom/flurry/sdk/ly$a;


# static fields
.field private static final a:Ljava/lang/String; = "jk"


# instance fields
.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/jk;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 4

    const-class p1, Lcom/flurry/sdk/jk;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Analytics"

    invoke-direct {p0, v0, p1}, Lcom/flurry/sdk/lg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "AnalyticsData_"

    iput-object p1, p0, Lcom/flurry/sdk/lg;->c:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/lx;->a()Lcom/flurry/sdk/lx;

    move-result-object p1

    const-string v0, "UseHttps"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/sdk/jk;->g:Z

    invoke-virtual {p1, v0, p0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Lcom/flurry/sdk/ly$a;)V

    sget-object v0, Lcom/flurry/sdk/jk;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSettings, UseHttps = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/flurry/sdk/jk;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "ReportUrl"

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v1, p0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Lcom/flurry/sdk/ly$a;)V

    invoke-direct {p0, v3}, Lcom/flurry/sdk/jk;->b(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "initSettings, ReportUrl = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/lg;->b()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/jk;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/flurry/sdk/jk;)V
    .locals 0

    invoke-virtual {p0}, Lcom/flurry/sdk/lg;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/flurry/sdk/jk;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/lg;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, ".do"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/jk;->a:Ljava/lang/String;

    const-string v2, "overriding analytics agent report URL without an endpoint, are you sure?"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/jk;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "UseHttps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    const-string v0, "ReportUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x6

    sget-object p2, Lcom/flurry/sdk/jk;->a:Ljava/lang/String;

    const-string v0, "onSettingUpdate internal error!"

    invoke-static {p1, p2, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/flurry/sdk/jk;->b(Ljava/lang/String;)V

    sget-object p1, Lcom/flurry/sdk/jk;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, ReportUrl = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/flurry/sdk/jk;->g:Z

    sget-object p1, Lcom/flurry/sdk/jk;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSettingUpdate, UseHttps = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/flurry/sdk/jk;->g:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lcom/flurry/sdk/jk$2;

    invoke-direct {v0, p0, p3}, Lcom/flurry/sdk/jk$2;-><init>(Lcom/flurry/sdk/jk;I)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/lg;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final a([BLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/flurry/sdk/jk;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/jk;->g:Z

    if-eqz v0, :cond_1

    const-string v0, "https://data.flurry.com/aap.do"

    goto :goto_0

    :cond_1
    const-string v0, "http://data.flurry.com/aap.do"

    :goto_0
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/sdk/jk;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FlurryDataSender: start upload data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/flurry/sdk/la;

    invoke-direct {v1}, Lcom/flurry/sdk/la;-><init>()V

    iput-object v0, v1, Lcom/flurry/sdk/lc;->g:Ljava/lang/String;

    const v0, 0x186a0

    iput v0, v1, Lcom/flurry/sdk/mg;->u:I

    sget-object v0, Lcom/flurry/sdk/lc$a;->c:Lcom/flurry/sdk/lc$a;

    iput-object v0, v1, Lcom/flurry/sdk/lc;->h:Lcom/flurry/sdk/lc$a;

    const-string v0, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v0, v2}, Lcom/flurry/sdk/lc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/flurry/sdk/lk;

    invoke-direct {v0}, Lcom/flurry/sdk/lk;-><init>()V

    iput-object v0, v1, Lcom/flurry/sdk/la;->c:Lcom/flurry/sdk/lo;

    iput-object p1, v1, Lcom/flurry/sdk/la;->b:Ljava/lang/Object;

    new-instance p1, Lcom/flurry/sdk/jk$1;

    invoke-direct {p1, p0, p2, p3}, Lcom/flurry/sdk/jk$1;-><init>(Lcom/flurry/sdk/jk;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v1, Lcom/flurry/sdk/la;->a:Lcom/flurry/sdk/la$a;

    invoke-static {}, Lcom/flurry/sdk/ke;->a()Lcom/flurry/sdk/ke;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/flurry/sdk/kt;->a(Ljava/lang/Object;Lcom/flurry/sdk/mg;)V

    return-void
.end method
