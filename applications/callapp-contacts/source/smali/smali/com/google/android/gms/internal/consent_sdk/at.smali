.class public final enum Lcom/google/android/gms/internal/consent_sdk/at;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/consent_sdk/at;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/consent_sdk/at;

.field public static final enum zzb:Lcom/google/android/gms/internal/consent_sdk/at;

.field public static final enum zzc:Lcom/google/android/gms/internal/consent_sdk/at;

.field public static final enum zzd:Lcom/google/android/gms/internal/consent_sdk/at;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/consent_sdk/at;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/at;

    const-string v1, "DEBUG_PARAM_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/consent_sdk/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/at;->zza:Lcom/google/android/gms/internal/consent_sdk/at;

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/at;

    const-string v3, "ALWAYS_SHOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/consent_sdk/at;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/consent_sdk/at;->zzb:Lcom/google/android/gms/internal/consent_sdk/at;

    .line 14
    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/at;

    const-string v5, "GEO_OVERRIDE_EEA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/gms/internal/consent_sdk/at;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/consent_sdk/at;->zzc:Lcom/google/android/gms/internal/consent_sdk/at;

    .line 15
    new-instance v5, Lcom/google/android/gms/internal/consent_sdk/at;

    const-string v7, "GEO_OVERRIDE_NON_EEA"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/android/gms/internal/consent_sdk/at;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/android/gms/internal/consent_sdk/at;->zzd:Lcom/google/android/gms/internal/consent_sdk/at;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/consent_sdk/at;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 16
    sput-object v7, Lcom/google/android/gms/internal/consent_sdk/at;->zze:[Lcom/google/android/gms/internal/consent_sdk/at;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/consent_sdk/at;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/at;->zze:[Lcom/google/android/gms/internal/consent_sdk/at;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/consent_sdk/at;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/consent_sdk/at;

    return-object v0
.end method


# virtual methods
.method public final zza(Landroid/util/JsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/ar;->b:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/at;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "GEO_OVERRIDE_NON_EEA"

    .line 10
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :goto_0
    return-void

    :cond_1
    const-string v0, "GEO_OVERRIDE_EEA"

    .line 8
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-void

    :cond_2
    const-string v0, "ALWAYS_SHOW"

    .line 6
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-void

    :cond_3
    const-string v0, "DEBUG_PARAM_UNKNOWN"

    .line 4
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-void
.end method
