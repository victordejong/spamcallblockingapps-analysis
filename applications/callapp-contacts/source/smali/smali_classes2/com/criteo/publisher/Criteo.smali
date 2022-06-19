.class public abstract Lcom/criteo/publisher/Criteo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/Criteo$Builder;
    }
.end annotation


# static fields
.field private static criteo:Lcom/criteo/publisher/Criteo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/criteo/publisher/Criteo$Builder;)Lcom/criteo/publisher/Criteo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/criteo/publisher/CriteoInitException;
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lcom/criteo/publisher/Criteo;->init(Lcom/criteo/publisher/Criteo$Builder;)Lcom/criteo/publisher/Criteo;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/criteo/publisher/Criteo;
    .locals 2

    .line 150
    sget-object v0, Lcom/criteo/publisher/Criteo;->criteo:Lcom/criteo/publisher/Criteo;

    if-eqz v0, :cond_0

    return-object v0

    .line 151
    :cond_0
    new-instance v0, Lcom/criteo/publisher/p;

    const-string v1, "You must initialize the SDK before calling Criteo.getInstance()"

    invoke-direct {v0, v1}, Lcom/criteo/publisher/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 2

    .line 190
    :try_start_0
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/q;->o()Lcom/criteo/publisher/m0/g;

    invoke-static {}, Lcom/criteo/publisher/m0/g;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 192
    const-class v1, Lcom/criteo/publisher/Criteo;

    invoke-static {v1}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v1

    .line 193
    invoke-static {v0}, Lcom/criteo/publisher/t;->a(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    const-string v0, ""

    return-object v0
.end method

.method private static init(Lcom/criteo/publisher/Criteo$Builder;)Lcom/criteo/publisher/Criteo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/criteo/publisher/CriteoInitException;
        }
    .end annotation

    .line 103
    const-class v0, Lcom/criteo/publisher/Criteo;

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v1

    .line 105
    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v2, Lcom/criteo/publisher/Criteo;->criteo:Lcom/criteo/publisher/Criteo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_2

    .line 108
    :try_start_1
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    move-result-object v8

    .line 109
    invoke-static {p0}, Lcom/criteo/publisher/Criteo$Builder;->access$100(Lcom/criteo/publisher/Criteo$Builder;)Landroid/app/Application;

    move-result-object v2

    .line 1147
    iput-object v2, v8, Lcom/criteo/publisher/q;->b:Landroid/app/Application;

    .line 1148
    invoke-virtual {v8}, Lcom/criteo/publisher/q;->b()V

    .line 110
    invoke-static {p0}, Lcom/criteo/publisher/Criteo$Builder;->access$200(Lcom/criteo/publisher/Criteo$Builder;)Ljava/lang/String;

    move-result-object v2

    .line 1152
    iput-object v2, v8, Lcom/criteo/publisher/q;->c:Ljava/lang/String;

    .line 1153
    invoke-virtual {v8}, Lcom/criteo/publisher/q;->c()V

    .line 112
    invoke-static {p0}, Lcom/criteo/publisher/Criteo$Builder;->access$300(Lcom/criteo/publisher/Criteo$Builder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v8}, Lcom/criteo/publisher/q;->B()Lcom/criteo/publisher/logging/c;

    move-result-object v2

    const/4 v3, 0x4

    .line 2031
    iput v3, v2, Lcom/criteo/publisher/logging/c;->a:I

    .line 116
    :cond_0
    invoke-virtual {v8}, Lcom/criteo/publisher/q;->g()Lcom/criteo/publisher/m0/k;

    .line 117
    invoke-static {}, Lcom/criteo/publisher/m0/k;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    new-instance v2, Lcom/criteo/publisher/l;

    .line 119
    invoke-static {p0}, Lcom/criteo/publisher/Criteo$Builder;->access$100(Lcom/criteo/publisher/Criteo$Builder;)Landroid/app/Application;

    move-result-object v4

    .line 120
    invoke-static {p0}, Lcom/criteo/publisher/Criteo$Builder;->access$400(Lcom/criteo/publisher/Criteo$Builder;)Ljava/util/List;

    move-result-object v5

    .line 121
    invoke-static {p0}, Lcom/criteo/publisher/Criteo$Builder;->access$500(Lcom/criteo/publisher/Criteo$Builder;)Ljava/lang/Boolean;

    move-result-object v6

    .line 122
    invoke-static {p0}, Lcom/criteo/publisher/Criteo$Builder;->access$600(Lcom/criteo/publisher/Criteo$Builder;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/criteo/publisher/l;-><init>(Landroid/app/Application;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Lcom/criteo/publisher/q;)V

    sput-object v2, Lcom/criteo/publisher/Criteo;->criteo:Lcom/criteo/publisher/Criteo;

    .line 126
    invoke-static {p0}, Lcom/criteo/publisher/Criteo$Builder;->access$200(Lcom/criteo/publisher/Criteo$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/criteo/publisher/Criteo$Builder;->access$400(Lcom/criteo/publisher/Criteo$Builder;)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/criteo/publisher/Criteo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p0, v3}, Lcom/criteo/publisher/w;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/criteo/publisher/logging/e;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    goto :goto_0

    .line 128
    :cond_1
    new-instance p0, Lcom/criteo/publisher/s;

    invoke-direct {p0}, Lcom/criteo/publisher/s;-><init>()V

    sput-object p0, Lcom/criteo/publisher/Criteo;->criteo:Lcom/criteo/publisher/Criteo;

    .line 130
    invoke-static {}, Lcom/criteo/publisher/w;->a()Lcom/criteo/publisher/logging/e;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 133
    :try_start_2
    new-instance v2, Lcom/criteo/publisher/s;

    invoke-direct {v2}, Lcom/criteo/publisher/s;-><init>()V

    sput-object v2, Lcom/criteo/publisher/Criteo;->criteo:Lcom/criteo/publisher/Criteo;

    .line 135
    new-instance v2, Lcom/criteo/publisher/CriteoInitException;

    const-string v3, "Internal error initializing Criteo instance."

    invoke-direct {v2, v3, p0}, Lcom/criteo/publisher/CriteoInitException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    invoke-static {v2}, Lcom/criteo/publisher/w;->a(Lcom/criteo/publisher/CriteoInitException;)Lcom/criteo/publisher/logging/e;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 140
    throw v2

    .line 143
    :cond_2
    invoke-static {}, Lcom/criteo/publisher/w;->b()Lcom/criteo/publisher/logging/e;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 145
    :goto_0
    sget-object p0, Lcom/criteo/publisher/Criteo;->criteo:Lcom/criteo/publisher/Criteo;

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    .line 146
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method static setInstance(Lcom/criteo/publisher/Criteo;)V
    .locals 0

    .line 160
    sput-object p0, Lcom/criteo/publisher/Criteo;->criteo:Lcom/criteo/publisher/Criteo;

    return-void
.end method


# virtual methods
.method public abstract createBannerController(Lcom/criteo/publisher/CriteoBannerView;)Lcom/criteo/publisher/k;
.end method

.method public abstract enrichAdObjectWithBid(Ljava/lang/Object;Lcom/criteo/publisher/Bid;)V
.end method

.method abstract getBidForAdUnit(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/d;)V
.end method

.method abstract getConfig()Lcom/criteo/publisher/model/t;
.end method

.method abstract getDeviceInfo()Lcom/criteo/publisher/model/u;
.end method

.method abstract getInterstitialActivityHelper()Lcom/criteo/publisher/j/a;
.end method

.method public loadBid(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/BidResponseListener;)V
    .locals 1

    .line 175
    new-instance v0, Lcom/criteo/publisher/context/ContextData;

    invoke-direct {v0}, Lcom/criteo/publisher/context/ContextData;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/criteo/publisher/Criteo;->loadBid(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/BidResponseListener;)V

    return-void
.end method

.method public abstract loadBid(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/BidResponseListener;)V
.end method

.method public abstract setMopubConsent(Ljava/lang/String;)V
.end method

.method public abstract setUsPrivacyOptOut(Z)V
.end method

.method public abstract setUserData(Lcom/criteo/publisher/context/UserData;)V
.end method
