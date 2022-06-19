.class public Lcom/google/android/gms/measurement/AppMeasurement;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;,
        Lcom/google/android/gms/measurement/AppMeasurement$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile a:Lcom/google/android/gms/measurement/AppMeasurement;


# instance fields
.field private final b:Lcom/google/android/gms/measurement/internal/fd;

.field private final c:Lcom/google/android/gms/measurement/internal/hf;

.field private final d:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/fd;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->c:Lcom/google/android/gms/measurement/internal/hf;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    .line 47
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/hf;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->c:Lcom/google/android/gms/measurement/internal/hf;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    .line 53
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 3

    .prologue
    .line 13
    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/measurement/AppMeasurement;

    if-nez v0, :cond_1

    .line 14
    const-class v1, Lcom/google/android/gms/measurement/AppMeasurement;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/measurement/AppMeasurement;

    if-nez v0, :cond_0

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/AppMeasurement;->b(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/hf;

    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    new-instance v2, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {v2, v0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/measurement/internal/hf;)V

    sput-object v2, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/measurement/AppMeasurement;

    .line 22
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object v0

    .line 20
    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0, v0, v2, p1}, Lcom/google/android/gms/measurement/internal/fd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v0

    .line 21
    new-instance v2, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {v2, v0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    sput-object v2, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/measurement/AppMeasurement;

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 4

    .prologue
    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/measurement/AppMeasurement;

    if-nez v0, :cond_1

    .line 3
    const-class v1, Lcom/google/android/gms/measurement/AppMeasurement;

    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/measurement/AppMeasurement;

    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/AppMeasurement;->b(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/hf;

    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    new-instance v2, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {v2, v0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/measurement/internal/hf;)V

    sput-object v2, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/measurement/AppMeasurement;

    .line 11
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_1
    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object v0

    .line 9
    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-static {p0, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/fd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v0

    .line 10
    new-instance v2, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {v2, v0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    sput-object v2, Lcom/google/android/gms/measurement/AppMeasurement;->a:Lcom/google/android/gms/measurement/AppMeasurement;

    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static b(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/hf;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 24
    :try_start_0
    const-string/jumbo v0, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 28
    :try_start_1
    const-string/jumbo v2, "getScionFrontendApiImplementation"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    .line 29
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 30
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    check-cast v0, Lcom/google/android/gms/measurement/internal/hf;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    :goto_0
    return-object v0

    .line 27
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 33
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Lcom/google/android/gms/measurement/AppMeasurement;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->c:Lcom/google/android/gms/measurement/internal/hf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/hf;->a(Z)V

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/gk;->b(Z)V

    goto :goto_0
.end method

.method public beginAdUnitExposure(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->c:Lcom/google/android/gms/measurement/internal/hf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/hf;->a(Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->z()Lcom/google/android/gms/measurement/internal/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    .line 107
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/ab;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->c:Lcom/google/android/gms/measurement/internal/hf;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/hf;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    .line 126
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/gk;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected clearConditionalUserPropertyAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    .line 132
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 134
    return-void
.end method

.method public endAdUnitExposure(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->c:Lcom/google/android/gms/measurement/internal/hf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/hf;->b(Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->z()Lcom/google/android/gms/measurement/internal/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/measurement/internal/ab;->b(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public generateEventId()J
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->c:Lcom/google/android/gms/measurement/internal/hf;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/hf;->e()J

    move-result-wide v0

    .line 102
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jw;->c()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getAppInstanceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->c:Lcom/google/android/gms/measurement/internal/hf;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/hf;->c()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/gk;->H()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->c:Lcom/google/android/gms/measurement/internal/hf;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/hf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 147
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    .line 148
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 150
    new-instance v3, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v3, v0}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    .line 152
    :cond_2
    return-object v2
.end method

.method protected getConditionalUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    .line 156
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    .line 157
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 158
    new-instance v3, Ljava/util/ArrayList;

    .line 159
    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Landroid/os/Bundle;

    .line 161
    new-instance v5, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v5, v1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 159
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 163
    :cond_2
    return-object v3
.end method

.method public getCurrentScreenClass()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->c:Lcom/google/android/gms/measurement/internal/hf;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/hf;->b()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/gk;->K()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentScreenName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->c:Lcom/google/android/gms/measurement/internal/hf;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/hf;->a()Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/gk;->J()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGmpAppId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->c:Lcom/google/android/gms/measurement/internal/hf;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/hf;->d()Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/gk;->L()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMaxUserProperties(Ljava/lang/String;)I
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->c:Lcom/google/android/gms/measurement/internal/hf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/hf;->c(Ljava/lang/String;)I

    move-result v0

    .line 169
    :goto_0
    return v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    .line 167
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    const/16 v0, 0x19

    .line 169
    goto :goto_0
.end method

.method protected getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->c:Lcom/google/android/gms/measurement/internal/hf;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/hf;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method protected getUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    .line 141
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    .line 143
    return-object v0
.end method

.method public logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->c:Lcom/google/android/gms/measurement/internal/hf;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/hf;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setConditionalUserProperty(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 113
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->c:Lcom/google/android/gms/measurement/internal/hf;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/hf;->a(Landroid/os/Bundle;)V

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/gk;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected setConditionalUserPropertyAs(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 118
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->d:Z

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->b:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/gk;->b(Landroid/os/Bundle;)V

    .line 122
    return-void
.end method
