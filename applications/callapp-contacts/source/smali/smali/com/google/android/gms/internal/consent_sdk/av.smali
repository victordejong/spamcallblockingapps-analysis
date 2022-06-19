.class public final Lcom/google/android/gms/internal/consent_sdk/av;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum a:I = 0x1

.field public static final enum b:I = 0x2

.field public static final enum c:I = 0x3

.field public static final enum d:I = 0x1

.field public static final enum e:I = 0x2

.field public static final enum f:I = 0x3

.field public static final enum g:I = 0x1

.field public static final enum h:I = 0x2

.field public static final enum i:I = 0x3

.field public static final enum j:I = 0x4

.field public static final enum k:I = 0x5

.field public static final enum l:I = 0x6

.field public static final enum m:I = 0x7

.field public static final enum n:I = 0x8

.field private static final synthetic o:[I

.field private static final synthetic p:[I

.field private static final synthetic q:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v4, 0x2

    aput v4, v1, v3

    aput v0, v1, v4

    sput-object v1, Lcom/google/android/gms/internal/consent_sdk/av;->o:[I

    new-array v1, v0, [I

    aput v3, v1, v2

    aput v4, v1, v3

    aput v0, v1, v4

    sput-object v1, Lcom/google/android/gms/internal/consent_sdk/av;->p:[I

    const/16 v1, 0x8

    new-array v5, v1, [I

    aput v3, v5, v2

    aput v4, v5, v3

    aput v0, v5, v4

    const/4 v2, 0x4

    aput v2, v5, v0

    const/4 v0, 0x5

    aput v0, v5, v2

    const/4 v2, 0x6

    aput v2, v5, v0

    const/4 v0, 0x7

    aput v0, v5, v2

    aput v1, v5, v0

    sput-object v5, Lcom/google/android/gms/internal/consent_sdk/av;->q:[I

    return-void
.end method

.method public static a(Landroid/util/JsonReader;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "UNKNOWN_ACTION_TYPE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "WRITE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "CLEAR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.Action.ActionTypefrom: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :pswitch_0
    sget p0, Lcom/google/android/gms/internal/consent_sdk/av;->d:I

    return p0

    .line 13
    :pswitch_1
    sget p0, Lcom/google/android/gms/internal/consent_sdk/av;->e:I

    return p0

    .line 14
    :pswitch_2
    sget p0, Lcom/google/android/gms/internal/consent_sdk/av;->f:I

    return p0

    :sswitch_data_0
    .sparse-switch
        0x3d3be2d -> :sswitch_2
        0x4f05fbf -> :sswitch_1
        0x6ea5670e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(ILandroid/util/JsonWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/ar;->a:[I

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    aget p0, v0, p0

    if-eq p0, v1, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "IOS"

    .line 7
    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :goto_0
    return-void

    :cond_1
    const-string p0, "ANDROID"

    .line 5
    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-void

    :cond_2
    const-string p0, "UNKNOWN"

    .line 3
    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    return-void

    :cond_3
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public static a()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/av;->o:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static b(Landroid/util/JsonReader;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "CONSENT_SIGNAL_NOT_REQUIRED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "CONSENT_SIGNAL_PERSONALIZED_ADS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "CONSENT_SIGNAL_SUFFICIENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "CONSENT_SIGNAL_PUBLISHER_MISCONFIGURATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "CONSENT_SIGNAL_NON_PERSONALIZED_ADS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "CONSENT_SIGNAL_UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "CONSENT_SIGNAL_ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "CONSENT_SIGNAL_COLLECT_CONSENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 27
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse contentads.contributor.direct.serving.gdpr.appapi.ApplicationGdprResponse.ConsentSignalfrom: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :pswitch_0
    sget p0, Lcom/google/android/gms/internal/consent_sdk/av;->l:I

    return p0

    .line 20
    :pswitch_1
    sget p0, Lcom/google/android/gms/internal/consent_sdk/av;->h:I

    return p0

    .line 22
    :pswitch_2
    sget p0, Lcom/google/android/gms/internal/consent_sdk/av;->j:I

    return p0

    .line 26
    :pswitch_3
    sget p0, Lcom/google/android/gms/internal/consent_sdk/av;->n:I

    return p0

    .line 21
    :pswitch_4
    sget p0, Lcom/google/android/gms/internal/consent_sdk/av;->i:I

    return p0

    .line 19
    :pswitch_5
    sget p0, Lcom/google/android/gms/internal/consent_sdk/av;->g:I

    return p0

    .line 25
    :pswitch_6
    sget p0, Lcom/google/android/gms/internal/consent_sdk/av;->m:I

    return p0

    .line 23
    :pswitch_7
    sget p0, Lcom/google/android/gms/internal/consent_sdk/av;->k:I

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ab5a7ed -> :sswitch_7
        -0x755d1a4a -> :sswitch_6
        -0x4b527788 -> :sswitch_5
        -0x38e1da9b -> :sswitch_4
        -0x36c1e70c -> :sswitch_3
        0x19984e10 -> :sswitch_2
        0x1be36b13 -> :sswitch_1
        0x66d8a81d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()[I
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/av;->p:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static c()[I
    .locals 1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/av;->q:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
