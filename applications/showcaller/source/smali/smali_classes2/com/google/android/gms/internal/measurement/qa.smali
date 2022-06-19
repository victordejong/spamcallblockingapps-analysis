.class public final Lcom/google/android/gms/internal/measurement/qa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/pa;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/x3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/x3<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/internal/measurement/x3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/x3<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/internal/measurement/x3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/x3<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/google/android/gms/internal/measurement/x3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/x3<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/google/android/gms/internal/measurement/x3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/x3<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/measurement/v3;

    const-string v1, "com.google.android.gms.measurement"

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/n3;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/v3;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.id.lifecycle.app_in_background_parameter"

    const-wide/16 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/v3;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/x3;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/qa;->a:Lcom/google/android/gms/internal/measurement/x3;

    const-string v1, "measurement.lifecycle.app_backgrounded_engagement"

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/v3;->b(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/x3;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/qa;->b:Lcom/google/android/gms/internal/measurement/x3;

    const-string v1, "measurement.lifecycle.app_backgrounded_tracking"

    const/4 v5, 0x1

    .line 4
    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/internal/measurement/v3;->b(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/x3;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/qa;->c:Lcom/google/android/gms/internal/measurement/x3;

    const-string v1, "measurement.lifecycle.app_in_background_parameter"

    .line 5
    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/measurement/v3;->b(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/x3;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/qa;->d:Lcom/google/android/gms/internal/measurement/x3;

    const-string v1, "measurement.id.lifecycle.app_backgrounded_tracking"

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/v3;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/x3;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/qa;->e:Lcom/google/android/gms/internal/measurement/x3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/qa;->d:Lcom/google/android/gms/internal/measurement/x3;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x3;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zza()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/qa;->b:Lcom/google/android/gms/internal/measurement/x3;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/x3;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
