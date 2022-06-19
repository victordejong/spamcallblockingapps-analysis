.class public Lcom/criteo/publisher/Bid;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/criteo/publisher/m0/a;

.field private final b:D

.field private final c:Lcom/criteo/publisher/h;

.field private d:Lcom/criteo/publisher/model/s;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/m0/a;Lcom/criteo/publisher/h;Lcom/criteo/publisher/model/s;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->b()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/criteo/publisher/Bid;->b:D

    .line 49
    iput-object p1, p0, Lcom/criteo/publisher/Bid;->a:Lcom/criteo/publisher/m0/a;

    .line 50
    iput-object p3, p0, Lcom/criteo/publisher/Bid;->d:Lcom/criteo/publisher/model/s;

    .line 51
    iput-object p2, p0, Lcom/criteo/publisher/Bid;->c:Lcom/criteo/publisher/h;

    return-void
.end method

.method private static synthetic a(Lcom/criteo/publisher/model/s;)Lcom/criteo/publisher/model/s;
    .locals 0

    return-object p0
.end method

.method private declared-synchronized a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/criteo/publisher/model/s;",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/criteo/publisher/Bid;->d:Lcom/criteo/publisher/model/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/criteo/publisher/Bid;->c:Lcom/criteo/publisher/h;

    invoke-virtual {v0, v2}, Lcom/criteo/publisher/model/s;->a(Lcom/criteo/publisher/h;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/criteo/publisher/Bid;->d:Lcom/criteo/publisher/model/s;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 95
    iput-object v1, p0, Lcom/criteo/publisher/Bid;->d:Lcom/criteo/publisher/model/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-object p1

    .line 88
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic lambda$WEs9SoAmX1RMoItE_GwFmu0EoGk(Lcom/criteo/publisher/model/s;)Lcom/criteo/publisher/model/s;
    .locals 0

    invoke-static {p0}, Lcom/criteo/publisher/Bid;->a(Lcom/criteo/publisher/model/s;)Lcom/criteo/publisher/model/s;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/criteo/publisher/model/s;
    .locals 1

    .line 66
    sget-object v0, Lcom/criteo/publisher/-$$Lambda$Bid$WEs9SoAmX1RMoItE_GwFmu0EoGk;->INSTANCE:Lcom/criteo/publisher/-$$Lambda$Bid$WEs9SoAmX1RMoItE_GwFmu0EoGk;

    invoke-direct {p0, v0}, Lcom/criteo/publisher/Bid;->a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/model/s;

    return-object v0
.end method

.method public final a(Lcom/criteo/publisher/m0/a;)Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/criteo/publisher/Bid;->a:Lcom/criteo/publisher/m0/a;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 76
    :cond_0
    sget-object p1, Lcom/criteo/publisher/-$$Lambda$WsfvYMY9Z-f_1HmNNQ3FsFhESSo;->INSTANCE:Lcom/criteo/publisher/-$$Lambda$WsfvYMY9Z-f_1HmNNQ3FsFhESSo;

    invoke-direct {p0, p1}, Lcom/criteo/publisher/Bid;->a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final b()Lcom/criteo/publisher/model/b0/n;
    .locals 1

    .line 82
    sget-object v0, Lcom/criteo/publisher/-$$Lambda$FzypGrEcxtd_5WAE2Zz1rJdiDU8;->INSTANCE:Lcom/criteo/publisher/-$$Lambda$FzypGrEcxtd_5WAE2Zz1rJdiDU8;

    invoke-direct {p0, v0}, Lcom/criteo/publisher/Bid;->a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/model/b0/n;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/criteo/publisher/Bid;->b:D

    return-wide v0
.end method
