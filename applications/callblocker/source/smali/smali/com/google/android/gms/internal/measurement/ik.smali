.class public final Lcom/google/android/gms/internal/measurement/ik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/il;


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
            "Ljava/lang/Boolean;",
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/measurement/bp;

    const-string/jumbo v1, "com.google.android.gms.measurement"

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/bk;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/bp;-><init>(Landroid/net/Uri;)V

    .line 6
    const-string/jumbo v1, "measurement.sdk.dynamite.allow_remote_dynamite"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/bp;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/ik;->a:Lcom/google/android/gms/internal/measurement/bj;

    .line 7
    const-string/jumbo v1, "measurement.collection.init_params_control_enabled"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/bp;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/ik;->b:Lcom/google/android/gms/internal/measurement/bj;

    .line 8
    const-string/jumbo v1, "measurement.sdk.dynamite.use_dynamite3"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/bp;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/ik;->c:Lcom/google/android/gms/internal/measurement/bj;

    .line 9
    const-string/jumbo v1, "measurement.id.sdk.dynamite.use_dynamite"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/bp;->a(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/ik;->d:Lcom/google/android/gms/internal/measurement/bj;

    .line 10
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
    sget-object v0, Lcom/google/android/gms/internal/measurement/ik;->a:Lcom/google/android/gms/internal/measurement/bj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bj;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/ik;->c:Lcom/google/android/gms/internal/measurement/bj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bj;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
