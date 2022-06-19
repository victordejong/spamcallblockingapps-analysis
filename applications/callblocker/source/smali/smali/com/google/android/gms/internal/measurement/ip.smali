.class public final Lcom/google/android/gms/internal/measurement/ip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/im;


# static fields
.field private static final a:Lcom/google/android/gms/internal/measurement/bj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/bj",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/android/gms/internal/measurement/bj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/bj",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/google/android/gms/internal/measurement/bj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/bj",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/google/android/gms/internal/measurement/bj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/bj",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/google/android/gms/internal/measurement/bj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/bj",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lcom/google/android/gms/internal/measurement/bj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/bj",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lcom/google/android/gms/internal/measurement/bj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/bj",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/measurement/bp;

    const-string/jumbo v1, "com.google.android.gms.measurement"

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/bk;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/bp;-><init>(Landroid/net/Uri;)V

    .line 11
    const-string/jumbo v1, "measurement.gold.enhanced_ecommerce.format_logs"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/bp;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/ip;->a:Lcom/google/android/gms/internal/measurement/bj;

    .line 12
    const-string/jumbo v1, "measurement.id.gold.enhanced_ecommerce.service"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/bp;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/ip;->b:Lcom/google/android/gms/internal/measurement/bj;

    .line 13
    const-string/jumbo v1, "measurement.gold.enhanced_ecommerce.log_nested_complex_events"

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/measurement/bp;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/ip;->c:Lcom/google/android/gms/internal/measurement/bj;

    .line 14
    const-string/jumbo v1, "measurement.gold.enhanced_ecommerce.nested_param_daily_event_count"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/bp;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/ip;->d:Lcom/google/android/gms/internal/measurement/bj;

    .line 15
    const-string/jumbo v1, "measurement.gold.enhanced_ecommerce.updated_schema.client"

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/measurement/bp;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/ip;->e:Lcom/google/android/gms/internal/measurement/bj;

    .line 16
    const-string/jumbo v1, "measurement.gold.enhanced_ecommerce.updated_schema.service"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/bp;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/ip;->f:Lcom/google/android/gms/internal/measurement/bj;

    .line 17
    const-string/jumbo v1, "measurement.gold.enhanced_ecommerce.upload_nested_complex_events"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/bp;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ip;->g:Lcom/google/android/gms/internal/measurement/bj;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 2
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/ip;->a:Lcom/google/android/gms/internal/measurement/bj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bj;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/ip;->c:Lcom/google/android/gms/internal/measurement/bj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bj;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/ip;->d:Lcom/google/android/gms/internal/measurement/bj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bj;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/ip;->e:Lcom/google/android/gms/internal/measurement/bj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bj;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/ip;->f:Lcom/google/android/gms/internal/measurement/bj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bj;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/measurement/ip;->g:Lcom/google/android/gms/internal/measurement/bj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bj;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
