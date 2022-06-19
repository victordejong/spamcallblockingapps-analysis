.class public final Lcom/google/android/gms/internal/measurement/lr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/lq;


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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/ea;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ds;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ea;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.validation.internal_limits_internal_event_params"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/ea;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/ec;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/lr;->a:Lcom/google/android/gms/internal/measurement/ec;

    const-string v1, "measurement.id.validation.internal_limits_internal_event_params"

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ea;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/ec;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/lr;->b:Lcom/google/android/gms/internal/measurement/ec;

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

    sget-object v0, Lcom/google/android/gms/internal/measurement/lr;->a:Lcom/google/android/gms/internal/measurement/ec;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ec;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
