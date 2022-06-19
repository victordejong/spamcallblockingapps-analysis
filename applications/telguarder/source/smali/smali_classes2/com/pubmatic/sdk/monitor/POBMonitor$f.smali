.class Lcom/pubmatic/sdk/monitor/POBMonitor$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/monitor/POBMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$f;->b:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubmatic/sdk/monitor/POBMonitor$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/pubmatic/sdk/monitor/POBMonitor$f;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/pubmatic/sdk/monitor/POBMonitor$f;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$f;->b:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic a(Lcom/pubmatic/sdk/monitor/POBMonitor$f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$f;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/pubmatic/sdk/monitor/POBMonitor$f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$f;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/pubmatic/sdk/monitor/POBMonitor$f;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$f;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic b(Lcom/pubmatic/sdk/monitor/POBMonitor$f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$f;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/pubmatic/sdk/monitor/POBMonitor$f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/pubmatic/sdk/monitor/POBMonitor$f;->a:Ljava/lang/String;

    return-object p0
.end method
