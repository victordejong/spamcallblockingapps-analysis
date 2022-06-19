.class public Lcom/google/android/gms/measurement/internal/gf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "firebase_last_notification"

    aput-object v1, v0, v3

    const-string/jumbo v1, "first_open_time"

    aput-object v1, v0, v4

    const-string/jumbo v1, "first_visit_time"

    aput-object v1, v0, v5

    const-string/jumbo v1, "last_deep_link_referrer"

    aput-object v1, v0, v6

    const-string/jumbo v1, "user_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "first_open_after_install"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "lifetime_user_engagement"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "session_user_engagement"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "non_personalized_ads"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "ga_session_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ga_session_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "last_gclid"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "session_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "session_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/measurement/internal/gf;->a:[Ljava/lang/String;

    .line 4
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_ln"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_fot"

    aput-object v1, v0, v4

    const-string/jumbo v1, "_fvt"

    aput-object v1, v0, v5

    const-string/jumbo v1, "_ldl"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "_fi"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "_lte"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "_se"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "_npa"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "_sno"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "_sid"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "_lgclid"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "_sno"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "_sid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/measurement/internal/gf;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/internal/gf;->a:[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/measurement/internal/gf;->b:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/hm;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
