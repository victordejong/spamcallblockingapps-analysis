.class public final Lcom/google/android/gms/internal/measurement/ly;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/lx;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/ec<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/internal/measurement/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/ec<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/internal/measurement/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/ec<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/internal/measurement/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/ec<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/internal/measurement/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/ec<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/measurement/ea;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ds;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ea;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.test.boolean_flag"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ea;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/ec;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/ly;->a:Lcom/google/android/gms/internal/measurement/ec;

    const-wide/high16 v1, -0x3ff8000000000000L    # -3.0

    .line 1001
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/dy;

    const-string v3, "measurement.test.double_flag"

    const/4 v4, 0x1

    .line 1002
    invoke-direct {v2, v0, v3, v1, v4}, Lcom/google/android/gms/internal/measurement/dy;-><init>(Lcom/google/android/gms/internal/measurement/ea;Ljava/lang/String;Ljava/lang/Double;Z)V

    .line 3
    sput-object v2, Lcom/google/android/gms/internal/measurement/ly;->b:Lcom/google/android/gms/internal/measurement/ec;

    const-string v1, "measurement.test.int_flag"

    const-wide/16 v2, -0x2

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ea;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/ec;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/ly;->c:Lcom/google/android/gms/internal/measurement/ec;

    const-string v1, "measurement.test.long_flag"

    const-wide/16 v2, -0x1

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ea;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/ec;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/ly;->d:Lcom/google/android/gms/internal/measurement/ec;

    const-string v1, "measurement.test.string_flag"

    const-string v2, "---"

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ea;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ec;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ly;->e:Lcom/google/android/gms/internal/measurement/ec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ly;->a:Lcom/google/android/gms/internal/measurement/ec;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ec;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()D
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/ly;->b:Lcom/google/android/gms/internal/measurement/ec;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ec;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final c()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/ly;->c:Lcom/google/android/gms/internal/measurement/ec;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ec;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/ly;->d:Lcom/google/android/gms/internal/measurement/ec;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ec;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/ly;->e:Lcom/google/android/gms/internal/measurement/ec;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ec;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
