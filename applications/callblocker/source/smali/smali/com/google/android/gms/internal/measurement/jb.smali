.class public final Lcom/google/android/gms/internal/measurement/jb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/iy;


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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/measurement/bp;

    const-string/jumbo v1, "com.google.android.gms.measurement"

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/bk;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/bp;-><init>(Landroid/net/Uri;)V

    .line 9
    const-string/jumbo v1, "measurement.service.audience.fix_skip_audience_with_failed_filters"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/bp;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/jb;->a:Lcom/google/android/gms/internal/measurement/bj;

    .line 10
    const-string/jumbo v1, "measurement.audience.refresh_event_count_filters_timestamp"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/bp;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/jb;->b:Lcom/google/android/gms/internal/measurement/bj;

    .line 11
    const-string/jumbo v1, "measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/bp;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/jb;->c:Lcom/google/android/gms/internal/measurement/bj;

    .line 12
    const-string/jumbo v1, "measurement.audience.use_bundle_timestamp_for_event_count_filters"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/bp;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/bj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/jb;->d:Lcom/google/android/gms/internal/measurement/bj;

    .line 13
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
    sget-object v0, Lcom/google/android/gms/internal/measurement/jb;->a:Lcom/google/android/gms/internal/measurement/bj;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/jb;->b:Lcom/google/android/gms/internal/measurement/bj;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/jb;->c:Lcom/google/android/gms/internal/measurement/bj;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/jb;->d:Lcom/google/android/gms/internal/measurement/bj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/bj;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
