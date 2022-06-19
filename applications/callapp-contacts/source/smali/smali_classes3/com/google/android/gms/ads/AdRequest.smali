.class public Lcom/google/android/gms/ads/AdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdRequest$MaxAdContentRating;,
        Lcom/google/android/gms/ads/AdRequest$TagForUnderAgeOfConsent;,
        Lcom/google/android/gms/ads/AdRequest$Builder;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String; = "B3EEABB8EE11C2BE770B684D95219ECB"

.field public static final ERROR_CODE_APP_ID_MISSING:I = 0x8

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_MEDIATION_NO_FILL:I = 0x9

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3

.field public static final ERROR_CODE_REQUEST_ID_MISMATCH:I = 0xa

.field public static final GENDER_FEMALE:I = 0x2

.field public static final GENDER_MALE:I = 0x1

.field public static final GENDER_UNKNOWN:I = 0x0

.field public static final MAX_AD_CONTENT_RATING_G:Ljava/lang/String; = "G"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_AD_CONTENT_RATING_MA:Ljava/lang/String; = "MA"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_AD_CONTENT_RATING_PG:Ljava/lang/String; = "PG"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_AD_CONTENT_RATING_T:Ljava/lang/String; = "T"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_CONTENT_URL_LENGTH:I = 0x200

.field public static final TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected final zzadb:Lcom/google/android/gms/internal/ads/emr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/emr;

    iget-object p1, p1, Lcom/google/android/gms/ads/AdRequest$Builder;->zzada:Lcom/google/android/gms/internal/ads/emu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/emr;-><init>(Lcom/google/android/gms/internal/ads/emu;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzadb:Lcom/google/android/gms/internal/ads/emr;

    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzadb:Lcom/google/android/gms/internal/ads/emr;

    .line 1026
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emr;->a:Ljava/util/Date;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzadb:Lcom/google/android/gms/internal/ads/emr;

    .line 1027
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emr;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzadb:Lcom/google/android/gms/internal/ads/emr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emr;->c(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getCustomTargeting()Landroid/os/Bundle;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzadb:Lcom/google/android/gms/internal/ads/emr;

    .line 1052
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emr;->m:Landroid/os/Bundle;

    return-object v0
.end method

.method public getGender()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzadb:Lcom/google/android/gms/internal/ads/emr;

    .line 1029
    iget v0, v0, Lcom/google/android/gms/internal/ads/emr;->c:I

    return v0
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzadb:Lcom/google/android/gms/internal/ads/emr;

    .line 1030
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emr;->d:Ljava/util/Set;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzadb:Lcom/google/android/gms/internal/ads/emr;

    .line 1031
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/emr;->e:Landroid/location/Location;

    return-object v0
.end method

.method public getNeighboringContentUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzadb:Lcom/google/android/gms/internal/ads/emr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/emr;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzadb:Lcom/google/android/gms/internal/ads/emr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emr;->a(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzadb:Lcom/google/android/gms/internal/ads/emr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emr;->b(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzadb:Lcom/google/android/gms/internal/ads/emr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/emr;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public zzdt()Lcom/google/android/gms/internal/ads/emr;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzadb:Lcom/google/android/gms/internal/ads/emr;

    return-object v0
.end method
