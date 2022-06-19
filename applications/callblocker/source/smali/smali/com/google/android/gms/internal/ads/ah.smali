.class public final Lcom/google/android/gms/internal/ads/ah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field private static a:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/google/android/gms/internal/ads/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ab",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2
    const-string/jumbo v0, "gads:consent:gmscore:dsid:enabled"

    .line 3
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/ad;->b(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ah;->a:Lcom/google/android/gms/internal/ads/ab;

    .line 4
    const-string/jumbo v0, "gads:consent:gmscore:lat:enabled"

    .line 5
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/ad;->b(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ah;->b:Lcom/google/android/gms/internal/ads/ab;

    .line 6
    const-string/jumbo v0, "gads:consent:gmscore:backend_url"

    const-string/jumbo v1, "https://adservice.google.com/getconfig/pubvendors"

    .line 8
    new-instance v2, Lcom/google/android/gms/internal/ads/ad;

    sget v3, Lcom/google/android/gms/internal/ads/ae;->d:I

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ads/ad;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 9
    sput-object v2, Lcom/google/android/gms/internal/ads/ah;->c:Lcom/google/android/gms/internal/ads/ab;

    .line 10
    const-string/jumbo v0, "gads:consent:gmscore:time_out"

    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/ad;

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/ads/ae;->b:I

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/ad;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 13
    sput-object v1, Lcom/google/android/gms/internal/ads/ah;->d:Lcom/google/android/gms/internal/ads/ab;

    .line 14
    const-string/jumbo v0, "gads:consent:gmscore:enabled"

    .line 15
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/ad;->b(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/ab;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ah;->e:Lcom/google/android/gms/internal/ads/ab;

    .line 16
    return-void
.end method

.method public static final a(Lcom/google/android/gms/internal/ads/bd;)V
    .locals 0

    .prologue
    .line 1
    return-void
.end method
