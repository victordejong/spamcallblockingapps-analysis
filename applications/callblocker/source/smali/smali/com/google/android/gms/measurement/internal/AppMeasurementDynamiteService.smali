.class public Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;
.super Lcom/google/android/gms/internal/measurement/mh;
.source "com.google.android.gms:play-services-measurement-sdk@@17.4.2"


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$a;,
        Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$b;
    }
.end annotation


# instance fields
.field a:Lcom/google/android/gms/measurement/internal/fd;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/measurement/internal/gi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/mh;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 3
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Ljava/util/Map;

    return-void
.end method

.method private final a()V
    .locals 2

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attempting to perform action before initialize."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_0
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/measurement/mj;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;Ljava/lang/String;)V

    .line 231
    return-void
.end method


# virtual methods
.method public beginAdUnitExposure(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->z()Lcom/google/android/gms/measurement/internal/ab;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/ab;->a(Ljava/lang/String;J)V

    .line 70
    return-void
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 198
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    .line 199
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/gk;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 200
    return-void
.end method

.method public endAdUnitExposure(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->z()Lcom/google/android/gms/measurement/internal/ab;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/ab;->b(Ljava/lang/String;J)V

    .line 73
    return-void
.end method

.method public generateEventId(Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 3

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jw;->c()J

    move-result-wide v0

    .line 66
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;J)V

    .line 67
    return-void
.end method

.method public getAppInstanceId(Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/hg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/hg;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/mj;)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method public getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/gk;->H()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a(Lcom/google/android/gms/internal/measurement/mj;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 2

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 203
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/ig;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/ig;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/mj;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method public getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/gk;->K()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a(Lcom/google/android/gms/internal/measurement/mj;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public getCurrentScreenName(Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/gk;->J()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a(Lcom/google/android/gms/internal/measurement/mj;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public getGmpAppId(Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/gk;->L()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a(Lcom/google/android/gms/internal/measurement/mj;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public getMaxUserProperties(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;I)V

    .line 46
    return-void
.end method

.method public getTestFlag(Lcom/google/android/gms/internal/measurement/mj;I)V
    .locals 5

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 207
    packed-switch p2, :pswitch_data_0

    .line 229
    :goto_0
    return-void

    .line 208
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 209
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 210
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/gk;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/gk;->E()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;J)V

    goto :goto_0

    .line 214
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 215
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 216
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/gk;->G()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 217
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 218
    const-string/jumbo v4, "r"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 219
    :try_start_0
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/mj;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/jw;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Error returning double value to wrapper"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 224
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/gk;->F()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;I)V

    goto :goto_0

    .line 226
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 227
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 228
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/gk;->C()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;Z)V

    goto/16 :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/mj;)V
    .locals 7

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 159
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/measurement/internal/jh;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/jh;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/mj;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 160
    invoke-virtual {v6, v0}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method

.method public initForTests(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 75
    return-void
.end method

.method public initialize(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/measurement/b;J)V
    .locals 3

    .prologue
    .line 7
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    if-nez v1, :cond_0

    .line 9
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/b;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 11
    :goto_0
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Attempting to initialize multiple times"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isDataCollectionEnabled(Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 2

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 236
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 237
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/ka;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/ka;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/mj;)V

    .line 238
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 239
    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V
    .locals 8

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    .line 14
    return-void
.end method

.method public logEventAndBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/mj;J)V
    .locals 7

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 77
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    const-string/jumbo v3, "app"

    .line 79
    if-eqz p3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 80
    :goto_0
    const-string/jumbo v1, "_o"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/google/android/gms/measurement/internal/r;

    new-instance v2, Lcom/google/android/gms/measurement/internal/m;

    invoke-direct {v2, p3}, Lcom/google/android/gms/measurement/internal/m;-><init>(Landroid/os/Bundle;)V

    move-object v1, p2

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/r;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/m;Ljava/lang/String;J)V

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 83
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/gh;

    invoke-direct {v2, p0, p4, v0, p1}, Lcom/google/android/gms/measurement/internal/gh;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/mj;Lcom/google/android/gms/measurement/internal/r;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 85
    return-void

    .line 79
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public logHealthData(ILjava/lang/String;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 162
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 163
    if-nez p3, :cond_0

    move-object v5, v7

    .line 164
    :goto_0
    if-nez p4, :cond_1

    move-object v6, v7

    .line 165
    :goto_1
    if-nez p5, :cond_2

    .line 166
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/dy;->a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    return-void

    .line 163
    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 164
    :cond_1
    invoke-static {p4}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 165
    :cond_2
    invoke-static {p5}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2
.end method

.method public onActivityCreated(Lcom/google/android/gms/dynamic/a;Landroid/os/Bundle;J)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    .line 107
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/gk;->a:Lcom/google/android/gms/measurement/internal/hd;

    .line 109
    if-eqz v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/gk;->B()V

    .line 111
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v0, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 112
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Lcom/google/android/gms/dynamic/a;J)V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    .line 116
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/gk;->a:Lcom/google/android/gms/measurement/internal/hd;

    .line 118
    if-eqz v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/gk;->B()V

    .line 120
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onActivityPaused(Lcom/google/android/gms/dynamic/a;J)V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 124
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    .line 125
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/gk;->a:Lcom/google/android/gms/measurement/internal/hd;

    .line 127
    if-eqz v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/gk;->B()V

    .line 129
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onActivityResumed(Lcom/google/android/gms/dynamic/a;J)V
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 133
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    .line 134
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/gk;->a:Lcom/google/android/gms/measurement/internal/hd;

    .line 136
    if-eqz v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/gk;->B()V

    .line 138
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 139
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/measurement/mj;J)V
    .locals 3

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 141
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 142
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    .line 143
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/gk;->a:Lcom/google/android/gms/measurement/internal/hd;

    .line 145
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 146
    if-eqz v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/gk;->B()V

    .line 148
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v0, v2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 149
    :cond_0
    :try_start_0
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/measurement/mj;->a(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Error returning bundle value to wrapper"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onActivityStarted(Lcom/google/android/gms/dynamic/a;J)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 88
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    .line 89
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/gk;->a:Lcom/google/android/gms/measurement/internal/hd;

    .line 91
    if-eqz v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/gk;->B()V

    .line 93
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 94
    :cond_0
    return-void
.end method

.method public onActivityStopped(Lcom/google/android/gms/dynamic/a;J)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 97
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    .line 98
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/gk;->a:Lcom/google/android/gms/measurement/internal/hd;

    .line 100
    if-eqz v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/gk;->B()V

    .line 102
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 103
    :cond_0
    return-void
.end method

.method public performAction(Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/mj;J)V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 155
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/measurement/mj;->a(Landroid/os/Bundle;)V

    .line 156
    return-void
.end method

.method public registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/mn;)V
    .locals 3

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 176
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/mn;->r_()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/gi;

    .line 177
    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$b;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$b;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/mn;)V

    .line 179
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/mn;->r_()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/gk;->a(Lcom/google/android/gms/measurement/internal/gi;)V

    .line 181
    return-void
.end method

.method public resetAnalyticsData(J)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/gk;->c(J)V

    .line 34
    return-void
.end method

.method public setConditionalUserProperty(Landroid/os/Bundle;J)V
    .locals 2

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 191
    if-nez p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Conditional user property must not be null"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/gk;->a(Landroid/os/Bundle;J)V

    goto :goto_0
.end method

.method public setCurrentScreen(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->s()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v1

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0, p2, p3}, Lcom/google/android/gms/measurement/internal/ho;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public setDataCollectionEnabled(Z)V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 233
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/gk;->b(Z)V

    .line 234
    return-void
.end method

.method public setDefaultEventParameters(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 241
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v1

    .line 242
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 243
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/gj;

    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/measurement/internal/gj;-><init>(Lcom/google/android/gms/measurement/internal/gk;Landroid/os/Bundle;)V

    .line 244
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 245
    return-void

    .line 242
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setEventInterceptor(Lcom/google/android/gms/internal/measurement/mn;)V
    .locals 4

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$a;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/mn;)V

    .line 170
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 171
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 172
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/gs;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/measurement/internal/gs;-><init>(Lcom/google/android/gms/measurement/internal/gk;Lcom/google/android/gms/measurement/internal/ge;)V

    .line 173
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method public setInstanceIdProvider(Lcom/google/android/gms/internal/measurement/mo;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 189
    return-void
.end method

.method public setMeasurementEnabled(ZJ)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/gk;->a(Z)V

    .line 31
    return-void
.end method

.method public setMinimumSessionDuration(J)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/gk;->a(J)V

    .line 37
    return-void
.end method

.method public setSessionTimeoutDuration(J)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/gk;->b(J)V

    .line 40
    return-void
.end method

.method public setUserId(Ljava/lang/String;J)V
    .locals 8

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    const/4 v5, 0x1

    move-object v4, p1

    move-wide v6, p2

    .line 22
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    .line 23
    return-void
.end method

.method public setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/dynamic/a;ZJ)V
    .locals 9

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 16
    invoke-static {p3}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v4

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZJ)V

    .line 18
    return-void
.end method

.method public unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/mn;)V
    .locals 2

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a()V

    .line 183
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->b:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/mn;->r_()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/gi;

    .line 184
    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$b;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService$b;-><init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/mn;)V

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/gk;->b(Lcom/google/android/gms/measurement/internal/gi;)V

    .line 187
    return-void
.end method
