.class public Lcom/criteo/publisher/Criteo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/Criteo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private adUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final application:Landroid/app/Application;

.field private final criteoPublisherId:Ljava/lang/String;

.field private isDebugLogsEnabled:Z

.field private mopubConsent:Ljava/lang/String;

.field private usPrivacyOptOut:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/Criteo$Builder;->adUnits:Ljava/util/List;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/criteo/publisher/Criteo$Builder;->isDebugLogsEnabled:Z

    .line 69
    iput-object p1, p0, Lcom/criteo/publisher/Criteo$Builder;->application:Landroid/app/Application;

    .line 70
    iput-object p2, p0, Lcom/criteo/publisher/Criteo$Builder;->criteoPublisherId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/criteo/publisher/Criteo$Builder;)Landroid/app/Application;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/criteo/publisher/Criteo$Builder;->application:Landroid/app/Application;

    return-object p0
.end method

.method static synthetic access$200(Lcom/criteo/publisher/Criteo$Builder;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/criteo/publisher/Criteo$Builder;->criteoPublisherId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/criteo/publisher/Criteo$Builder;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/criteo/publisher/Criteo$Builder;->isDebugLogsEnabled:Z

    return p0
.end method

.method static synthetic access$400(Lcom/criteo/publisher/Criteo$Builder;)Ljava/util/List;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/criteo/publisher/Criteo$Builder;->adUnits:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/criteo/publisher/Criteo$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/criteo/publisher/Criteo$Builder;->usPrivacyOptOut:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$600(Lcom/criteo/publisher/Criteo$Builder;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/criteo/publisher/Criteo$Builder;->mopubConsent:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public adUnits(Ljava/util/List;)Lcom/criteo/publisher/Criteo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/AdUnit;",
            ">;)",
            "Lcom/criteo/publisher/Criteo$Builder;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/criteo/publisher/Criteo$Builder;->adUnits:Ljava/util/List;

    return-object p0
.end method

.method public debugLogsEnabled(Z)Lcom/criteo/publisher/Criteo$Builder;
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/criteo/publisher/Criteo$Builder;->isDebugLogsEnabled:Z

    return-object p0
.end method

.method public init()Lcom/criteo/publisher/Criteo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/criteo/publisher/CriteoInitException;
        }
    .end annotation

    .line 98
    invoke-static {p0}, Lcom/criteo/publisher/Criteo;->access$000(Lcom/criteo/publisher/Criteo$Builder;)Lcom/criteo/publisher/Criteo;

    move-result-object v0

    return-object v0
.end method

.method public mopubConsent(Ljava/lang/String;)Lcom/criteo/publisher/Criteo$Builder;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/criteo/publisher/Criteo$Builder;->mopubConsent:Ljava/lang/String;

    return-object p0
.end method

.method public usPrivacyOptOut(Z)Lcom/criteo/publisher/Criteo$Builder;
    .locals 0

    .line 83
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/Criteo$Builder;->usPrivacyOptOut:Ljava/lang/Boolean;

    return-object p0
.end method
