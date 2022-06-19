.class public final Lcom/google/android/gms/internal/ads/cg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/android/gms/internal/ads/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bz<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/google/android/gms/internal/ads/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bz<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/google/android/gms/internal/ads/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bz<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/google/android/gms/internal/ads/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bz<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/google/android/gms/internal/ads/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bz<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "gads:consent:gmscore:dsid:enabled"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cf;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cg;->a:Lcom/google/android/gms/internal/ads/bz;

    const-string v0, "gads:consent:gmscore:lat:enabled"

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cf;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cg;->b:Lcom/google/android/gms/internal/ads/bz;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/cf;

    sget v1, Lcom/google/android/gms/internal/ads/cc;->d:I

    const-string v2, "gads:consent:gmscore:backend_url"

    const-string v3, "https://adservice.google.com/getconfig/pubvendors"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/cf;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 9
    sput-object v0, Lcom/google/android/gms/internal/ads/cg;->c:Lcom/google/android/gms/internal/ads/bz;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/cf;

    const-wide/16 v1, 0x2710

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/cc;->b:I

    const-string v3, "gads:consent:gmscore:time_out"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/cf;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 13
    sput-object v0, Lcom/google/android/gms/internal/ads/cg;->d:Lcom/google/android/gms/internal/ads/bz;

    const-string v0, "gads:consent:gmscore:enabled"

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cf;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/bz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cg;->e:Lcom/google/android/gms/internal/ads/bz;

    return-void
.end method

.method public static final a()V
    .locals 0

    return-void
.end method
