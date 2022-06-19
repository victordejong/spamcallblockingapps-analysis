.class public final Lcom/google/android/gms/internal/measurement/zznt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzns;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/measurement/zzht;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzht<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/gms/internal/measurement/zzht;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzht<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzc:Lcom/google/android/gms/internal/measurement/zzht;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzht<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzd:Lcom/google/android/gms/internal/measurement/zzht;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzht<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final zze:Lcom/google/android/gms/internal/measurement/zzht;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzht<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhr;

    const-string v1, "com.google.android.gms.measurement"

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhr;-><init>(Landroid/net/Uri;)V

    const-string v1, "measurement.client.consent_state_v1"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zznt;->zza:Lcom/google/android/gms/internal/measurement/zzht;

    const-string v1, "measurement.client.3p_consent_state_v1"

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zznt;->zzb:Lcom/google/android/gms/internal/measurement/zzht;

    const-string v1, "measurement.service.consent_state_v1_W36"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhr;->zzb(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zznt;->zzc:Lcom/google/android/gms/internal/measurement/zzht;

    const-string v1, "measurement.id.service.consent_state_v1_W36"

    const-wide/16 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zznt;->zzd:Lcom/google/android/gms/internal/measurement/zzht;

    const-string v1, "measurement.service.storage_consent_support_version"

    const-wide/32 v2, 0x31b46

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhr;->zza(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzht;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznt;->zze:Lcom/google/android/gms/internal/measurement/zzht;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznt;->zze:Lcom/google/android/gms/internal/measurement/zzht;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzht;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
