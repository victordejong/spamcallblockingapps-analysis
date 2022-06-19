.class public final Lcom/flurry/sdk/lx;
.super Lcom/flurry/sdk/ly;
.source ""


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/Integer;

.field public static final c:Ljava/lang/Integer;

.field public static final d:Ljava/lang/Integer;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/Boolean;

.field public static final g:Ljava/lang/Boolean;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/Boolean;

.field public static final j:Landroid/location/Criteria;

.field public static final k:Landroid/location/Location;

.field public static final l:Ljava/lang/Long;

.field public static final m:Ljava/lang/Boolean;

.field public static final n:Ljava/lang/Long;

.field public static final o:Ljava/lang/Byte;

.field public static final p:Ljava/lang/Boolean;

.field public static final q:Ljava/lang/String;

.field public static final r:Ljava/lang/Boolean;

.field private static s:Lcom/flurry/sdk/lx;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xec

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/lx;->a:Ljava/lang/Integer;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/lx;->b:Ljava/lang/Integer;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/lx;->c:Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/lx;->d:Ljava/lang/Integer;

    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/lx;->e:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lcom/flurry/sdk/lx;->f:Ljava/lang/Boolean;

    sput-object v1, Lcom/flurry/sdk/lx;->g:Ljava/lang/Boolean;

    sput-object v0, Lcom/flurry/sdk/lx;->h:Ljava/lang/String;

    sput-object v1, Lcom/flurry/sdk/lx;->i:Ljava/lang/Boolean;

    sput-object v0, Lcom/flurry/sdk/lx;->j:Landroid/location/Criteria;

    sput-object v0, Lcom/flurry/sdk/lx;->k:Landroid/location/Location;

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lcom/flurry/sdk/lx;->l:Ljava/lang/Long;

    sput-object v1, Lcom/flurry/sdk/lx;->m:Ljava/lang/Boolean;

    sput-object v0, Lcom/flurry/sdk/lx;->n:Ljava/lang/Long;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    sput-object v2, Lcom/flurry/sdk/lx;->o:Ljava/lang/Byte;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v2, Lcom/flurry/sdk/lx;->p:Ljava/lang/Boolean;

    sput-object v0, Lcom/flurry/sdk/lx;->q:Ljava/lang/String;

    sput-object v1, Lcom/flurry/sdk/lx;->r:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/flurry/sdk/ly;-><init>()V

    sget-object v0, Lcom/flurry/sdk/lx;->a:Ljava/lang/Integer;

    const-string v1, "AgentVersion"

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/lx;->b:Ljava/lang/Integer;

    const-string v1, "ReleaseMajorVersion"

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/lx;->c:Ljava/lang/Integer;

    const-string v1, "ReleaseMinorVersion"

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/lx;->d:Ljava/lang/Integer;

    const-string v1, "ReleasePatchVersion"

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ReleaseBetaVersion"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/lx;->e:Ljava/lang/String;

    const-string v2, "VersionName"

    invoke-virtual {p0, v2, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/lx;->f:Ljava/lang/Boolean;

    const-string v2, "CaptureUncaughtExceptions"

    invoke-virtual {p0, v2, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/lx;->g:Ljava/lang/Boolean;

    const-string v2, "UseHttps"

    invoke-virtual {p0, v2, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/lx;->h:Ljava/lang/String;

    const-string v2, "ReportUrl"

    invoke-virtual {p0, v2, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/lx;->i:Ljava/lang/Boolean;

    const-string v2, "ReportLocation"

    invoke-virtual {p0, v2, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/lx;->k:Landroid/location/Location;

    const-string v2, "ExplicitLocation"

    invoke-virtual {p0, v2, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/lx;->l:Ljava/lang/Long;

    const-string v2, "ContinueSessionMillis"

    invoke-virtual {p0, v2, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/lx;->m:Ljava/lang/Boolean;

    const-string v2, "LogEvents"

    invoke-virtual {p0, v2, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/lx;->n:Ljava/lang/Long;

    const-string v2, "Age"

    invoke-virtual {p0, v2, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/lx;->o:Ljava/lang/Byte;

    const-string v2, "Gender"

    invoke-virtual {p0, v2, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "UserId"

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/lx;->p:Ljava/lang/Boolean;

    const-string v1, "ProtonEnabled"

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/lx;->q:Ljava/lang/String;

    const-string v1, "ProtonConfigUrl"

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/flurry/sdk/lx;->r:Ljava/lang/Boolean;

    const-string v1, "analyticsEnabled"

    invoke-virtual {p0, v1, v0}, Lcom/flurry/sdk/ly;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/lx;
    .locals 2

    const-class v0, Lcom/flurry/sdk/lx;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/lx;->s:Lcom/flurry/sdk/lx;

    if-nez v1, :cond_0

    new-instance v1, Lcom/flurry/sdk/lx;

    invoke-direct {v1}, Lcom/flurry/sdk/lx;-><init>()V

    sput-object v1, Lcom/flurry/sdk/lx;->s:Lcom/flurry/sdk/lx;

    :cond_0
    sget-object v1, Lcom/flurry/sdk/lx;->s:Lcom/flurry/sdk/lx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
