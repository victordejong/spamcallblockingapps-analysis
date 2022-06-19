.class public Lw31;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc41;

.field public final b:Lc41;

.field public final c:Z

.field public final d:Lz31;

.field public final e:Lb41;


# direct methods
.method public constructor <init>(Lz31;Lb41;Lc41;Lc41;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw31;->d:Lz31;

    iput-object p2, p0, Lw31;->e:Lb41;

    iput-object p3, p0, Lw31;->a:Lc41;

    if-nez p4, :cond_0

    sget-object p1, Lc41;->d:Lc41;

    iput-object p1, p0, Lw31;->b:Lc41;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lw31;->b:Lc41;

    :goto_0
    iput-boolean p5, p0, Lw31;->c:Z

    return-void
.end method

.method public static a(Lz31;Lb41;Lc41;Lc41;Z)Lw31;
    .locals 7

    const-string v0, "CreativeType is null"

    invoke-static {p0, v0}, Lb51;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ImpressionType is null"

    invoke-static {p1, v0}, Lb51;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Impression owner is null"

    invoke-static {p2, v0}, Lb51;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0, p1}, Lb51;->b(Lc41;Lz31;Lb41;)V

    new-instance v0, Lw31;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lw31;-><init>(Lz31;Lb41;Lc41;Lc41;Z)V

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 2

    sget-object v0, Lc41;->b:Lc41;

    iget-object v1, p0, Lw31;->a:Lc41;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 2

    sget-object v0, Lc41;->b:Lc41;

    iget-object v1, p0, Lw31;->b:Lc41;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lw31;->a:Lc41;

    const-string v2, "impressionOwner"

    invoke-static {v0, v2, v1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lw31;->b:Lc41;

    const-string v2, "mediaEventsOwner"

    invoke-static {v0, v2, v1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lw31;->d:Lz31;

    const-string v2, "creativeType"

    invoke-static {v0, v2, v1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lw31;->e:Lb41;

    const-string v2, "impressionType"

    invoke-static {v0, v2, v1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lw31;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isolateVerificationScripts"

    invoke-static {v0, v2, v1}, Ly41;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
