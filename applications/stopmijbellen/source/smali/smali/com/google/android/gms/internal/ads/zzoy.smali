.class public final Lcom/google/android/gms/internal/ads/zzoy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Ljava/util/regex/Pattern;

.field private static final zzc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/internal/ads/zzoq;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzoh;",
            ">;>;"
        }
    .end annotation
.end field

.field private static zzd:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\D?(\\d+)$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzoy;->zzb:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzoy;->zzc:Ljava/util/HashMap;

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/zzoy;->zzd:I

    return-void
.end method

.method public static zza()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzos;
        }
    .end annotation

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzoy;->zzd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const-string v0, "video/avc"

    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Lcom/google/android/gms/internal/ads/zzoy;->zzc(Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/zzoh;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoh;->zzg()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 3
    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    sparse-switch v5, :sswitch_data_0

    const/4 v5, -0x1

    goto :goto_1

    :sswitch_0
    const/high16 v5, 0x2200000

    goto :goto_1

    :sswitch_1
    const/high16 v5, 0x900000

    goto :goto_1

    :sswitch_2
    const v5, 0x564000

    goto :goto_1

    :sswitch_3
    const/high16 v5, 0x220000

    goto :goto_1

    :sswitch_4
    const/high16 v5, 0x200000

    goto :goto_1

    :sswitch_5
    const/high16 v5, 0x140000

    goto :goto_1

    :sswitch_6
    const v5, 0xe1000

    goto :goto_1

    :sswitch_7
    const v5, 0x65400

    goto :goto_1

    :sswitch_8
    const v5, 0x31800

    goto :goto_1

    :sswitch_9
    const v5, 0x18c00

    goto :goto_1

    :cond_0
    const/16 v5, 0x6300

    :goto_1
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget v0, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    const v0, 0x54600

    goto :goto_2

    :cond_2
    const v0, 0x2a300

    :goto_2
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_3
    sput v2, Lcom/google/android/gms/internal/ads/zzoy;->zzd:I

    :cond_4
    sget v0, Lcom/google/android/gms/internal/ads/zzoy;->zzd:I

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_9
        0x10 -> :sswitch_9
        0x20 -> :sswitch_9
        0x40 -> :sswitch_8
        0x80 -> :sswitch_7
        0x100 -> :sswitch_7
        0x200 -> :sswitch_6
        0x400 -> :sswitch_5
        0x800 -> :sswitch_4
        0x1000 -> :sswitch_4
        0x2000 -> :sswitch_3
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzab;)Landroid/util/Pair;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzab;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzab;->zzj:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "\\."

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzab;->zzm:Ljava/lang/String;

    const-string v2, "video/dolby-vision"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x200

    const/16 v3, 0x100

    const/16 v4, 0x80

    const/16 v5, 0x40

    const/16 v6, 0x1000

    const/16 v7, 0x20

    const/16 v8, 0x10

    const/16 v9, 0x8

    const/4 v10, 0x3

    const/4 v11, 0x4

    const/4 v12, 0x2

    const-string v13, "MediaCodecUtil"

    const/4 v14, 0x1

    if-eqz v1, :cond_d

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzab;->zzj:Ljava/lang/String;

    .line 5
    array-length v1, v0

    if-ge v1, v10, :cond_2

    .line 6
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Ignoring malformed Dolby Vision codec string: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/String;

    .line 8
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-static {v13, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 10
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzoy;->zzb:Ljava/util/regex/Pattern;

    .line 11
    aget-object v10, v0, v14

    invoke-virtual {v1, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_4

    .line 13
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Ignoring malformed Dolby Vision codec string: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 14
    :cond_3
    new-instance p0, Ljava/lang/String;

    .line 15
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 16
    :goto_1
    invoke-static {v13, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 17
    :cond_4
    invoke-virtual {v1, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    goto/16 :goto_4

    .line 18
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string v1, "09"

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x9

    goto :goto_3

    :pswitch_1
    const-string v1, "08"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x8

    goto :goto_3

    :pswitch_2
    const-string v1, "07"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    goto :goto_3

    :pswitch_3
    const-string v1, "06"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    goto :goto_3

    :pswitch_4
    const-string v1, "05"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x5

    goto :goto_3

    :pswitch_5
    const-string v1, "04"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x4

    goto :goto_3

    :pswitch_6
    const-string v1, "03"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    goto :goto_3

    :pswitch_7
    const-string v1, "02"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    goto :goto_3

    :pswitch_8
    const-string v1, "01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :pswitch_9
    const-string v1, "00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, -0x1

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 20
    :pswitch_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    .line 21
    :pswitch_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    .line 22
    :pswitch_c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    .line 23
    :pswitch_d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    .line 24
    :pswitch_e
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    .line 25
    :pswitch_f
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    .line 26
    :pswitch_10
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    .line 27
    :pswitch_11
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    .line 28
    :pswitch_12
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    .line 29
    :pswitch_13
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    :goto_4
    const/4 v1, 0x0

    :goto_5
    if-nez v1, :cond_8

    .line 30
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unknown Dolby Vision profile string: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    .line 31
    :cond_7
    new-instance p0, Ljava/lang/String;

    .line 32
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 33
    :goto_6
    invoke-static {v13, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 34
    :cond_8
    aget-object p0, v0, v12

    if-nez p0, :cond_9

    goto/16 :goto_7

    .line 35
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_7

    :pswitch_14
    const-string v0, "09"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_8

    :pswitch_15
    const-string v0, "08"

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_8

    :pswitch_16
    const-string v0, "07"

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_8

    :pswitch_17
    const-string v0, "06"

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 42
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_8

    :pswitch_18
    const-string v0, "05"

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 44
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_8

    :pswitch_19
    const-string v0, "04"

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 46
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8

    :pswitch_1a
    const-string v0, "03"

    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 48
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8

    :pswitch_1b
    const-string v0, "02"

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 50
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8

    :pswitch_1c
    const-string v0, "01"

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 52
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8

    :pswitch_1d
    const-string v0, "13"

    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 54
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8

    :pswitch_1e
    const-string v0, "12"

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x800

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8

    :pswitch_1f
    const-string v0, "11"

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x400

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8

    :pswitch_20
    const-string v0, "10"

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_8

    :cond_a
    :goto_7
    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_c

    .line 61
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unknown Dolby Vision level string: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    .line 62
    :cond_b
    new-instance p0, Ljava/lang/String;

    .line 63
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 64
    :goto_9
    invoke-static {v13, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    const/4 p0, 0x0

    goto :goto_b

    .line 65
    :cond_c
    new-instance p0, Landroid/util/Pair;

    .line 66
    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_b
    return-object p0

    :cond_d
    const/4 v1, 0x0

    .line 67
    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_c

    :sswitch_0
    const-string v3, "vp09"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x2

    goto :goto_d

    :sswitch_1
    const-string v3, "mp4a"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x6

    goto :goto_d

    :sswitch_2
    const-string v3, "hvc1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x4

    goto :goto_d

    :sswitch_3
    const-string v3, "hev1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x3

    goto :goto_d

    :sswitch_4
    const-string v3, "avc2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_d

    :sswitch_5
    const-string v3, "avc1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_d

    :sswitch_6
    const-string v3, "av01"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x5

    goto :goto_d

    :cond_e
    :goto_c
    const/4 v1, -0x1

    :goto_d
    const/16 v3, 0x1e

    const/16 v5, 0x14

    packed-switch v1, :pswitch_data_4

    const/4 p0, 0x0

    return-object p0

    .line 68
    :pswitch_21
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzab;->zzj:Ljava/lang/String;

    .line 69
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_10

    .line 70
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Ignoring malformed MP4A codec string: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    .line 71
    :cond_f
    new-instance p0, Ljava/lang/String;

    .line 72
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 73
    :goto_e
    invoke-static {v13, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_10
    :try_start_0
    const-string v1, "audio/mp4a-latm"

    .line 74
    aget-object v2, v0, v14

    invoke-static {v2, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 75
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbi;->zzd(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 77
    aget-object v0, v0, v12

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_16

    if-eq v0, v5, :cond_15

    const/16 v1, 0x17

    if-eq v0, v1, :cond_14

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_13

    const/16 v1, 0x27

    if-eq v0, v1, :cond_12

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_11

    packed-switch v0, :pswitch_data_5

    const/4 v0, -0x1

    const/4 v1, -0x1

    goto :goto_10

    :pswitch_22
    const/4 v0, -0x1

    const/4 v1, 0x6

    goto :goto_10

    :pswitch_23
    const/4 v0, -0x1

    const/4 v1, 0x5

    goto :goto_10

    :pswitch_24
    const/4 v0, -0x1

    const/4 v1, 0x4

    goto :goto_10

    :pswitch_25
    const/4 v0, -0x1

    const/4 v1, 0x3

    goto :goto_10

    :pswitch_26
    const/4 v0, -0x1

    const/4 v1, 0x2

    goto :goto_10

    :pswitch_27
    const/4 v0, -0x1

    const/4 v1, 0x1

    goto :goto_10

    :cond_11
    const/16 v0, 0x2a

    const/16 v1, 0x2a

    goto :goto_f

    :cond_12
    const/16 v0, 0x27

    const/16 v1, 0x27

    goto :goto_f

    :cond_13
    const/16 v0, 0x1d

    const/16 v1, 0x1d

    goto :goto_f

    :cond_14
    const/16 v0, 0x17

    const/16 v1, 0x17

    goto :goto_f

    :cond_15
    const/4 v0, -0x1

    const/16 v1, 0x14

    goto :goto_10

    :cond_16
    const/16 v0, 0x11

    const/16 v1, 0x11

    :goto_f
    const/4 v0, -0x1

    :goto_10
    if-eq v1, v0, :cond_18

    new-instance v0, Landroid/util/Pair;

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_13

    :catch_0
    nop

    .line 79
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Ignoring malformed MP4A codec string: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    .line 80
    :cond_17
    new-instance p0, Ljava/lang/String;

    .line 81
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 82
    :goto_11
    invoke-static {v13, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_12
    const/4 v0, 0x0

    :goto_13
    return-object v0

    .line 83
    :pswitch_28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzab;->zzj:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzab;->zzy:Lcom/google/android/gms/internal/ads/zzm;

    .line 84
    array-length v2, v0

    if-ge v2, v11, :cond_1a

    .line 85
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Ignoring malformed AV1 codec string: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_14

    .line 86
    :cond_19
    new-instance p0, Ljava/lang/String;

    .line 87
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 88
    :goto_14
    invoke-static {v13, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 89
    :cond_1a
    :try_start_1
    aget-object v2, v0, v14

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 90
    aget-object v4, v0, v12

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    .line 91
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_1b

    const-string p0, "Unknown AV1 profile: "

    invoke-static {v7, p0, v2, v13}, La6/d;->g(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_18

    :cond_1b
    if-eq v0, v9, :cond_1f

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1c

    const/16 p0, 0x22

    const-string v1, "Unknown AV1 bit depth: "

    .line 92
    invoke-static {p0, v1, v0, v13}, La6/d;->g(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_18

    :cond_1c
    if-eqz p0, :cond_1e

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzm;->zze:[B

    if-nez v0, :cond_1d

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzm;->zzd:I

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1e

    :cond_1d
    const/16 p0, 0x1000

    goto :goto_15

    :cond_1e
    const/4 p0, 0x2

    goto :goto_15

    :cond_1f
    const/4 p0, 0x1

    :goto_15
    packed-switch v4, :pswitch_data_6

    const/4 v0, -0x1

    goto :goto_16

    :pswitch_29
    const/high16 v0, 0x800000

    goto :goto_16

    :pswitch_2a
    const/high16 v0, 0x400000

    goto :goto_16

    :pswitch_2b
    const/high16 v0, 0x200000

    goto :goto_16

    :pswitch_2c
    const/high16 v0, 0x100000

    goto :goto_16

    :pswitch_2d
    const/high16 v0, 0x80000

    goto :goto_16

    :pswitch_2e
    const/high16 v0, 0x40000

    goto :goto_16

    :pswitch_2f
    const/high16 v0, 0x20000

    goto :goto_16

    :pswitch_30
    const/high16 v0, 0x10000

    goto :goto_16

    :pswitch_31
    const v0, 0x8000

    goto :goto_16

    :pswitch_32
    const/16 v0, 0x4000

    goto :goto_16

    :pswitch_33
    const/16 v0, 0x2000

    goto :goto_16

    :pswitch_34
    const/16 v0, 0x1000

    goto :goto_16

    :pswitch_35
    const/16 v0, 0x800

    goto :goto_16

    :pswitch_36
    const/16 v0, 0x400

    goto :goto_16

    :pswitch_37
    const/16 v0, 0x200

    goto :goto_16

    :pswitch_38
    const/16 v0, 0x100

    goto :goto_16

    :pswitch_39
    const/16 v0, 0x80

    goto :goto_16

    :pswitch_3a
    const/16 v0, 0x40

    goto :goto_16

    :pswitch_3b
    const/16 v0, 0x20

    goto :goto_16

    :pswitch_3c
    const/16 v0, 0x10

    goto :goto_16

    :pswitch_3d
    const/16 v0, 0x8

    goto :goto_16

    :pswitch_3e
    const/4 v0, 0x4

    goto :goto_16

    :pswitch_3f
    const/4 v0, 0x2

    goto :goto_16

    :pswitch_40
    const/4 v0, 0x1

    :goto_16
    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    const-string p0, "Unknown AV1 level: "

    invoke-static {v3, p0, v4, v13}, La6/d;->g(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_18

    .line 94
    :cond_20
    new-instance v1, Landroid/util/Pair;

    .line 95
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19

    :catch_1
    nop

    .line 96
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Ignoring malformed AV1 codec string: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_17

    .line 97
    :cond_21
    new-instance p0, Ljava/lang/String;

    .line 98
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 99
    :goto_17
    invoke-static {v13, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    const/4 v1, 0x0

    :goto_19
    return-object v1

    .line 100
    :pswitch_41
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzab;->zzj:Ljava/lang/String;

    .line 101
    array-length v1, v0

    if-ge v1, v11, :cond_23

    .line 102
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Ignoring malformed HEVC codec string: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1a

    .line 103
    :cond_22
    new-instance p0, Ljava/lang/String;

    .line 104
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 105
    :goto_1a
    invoke-static {v13, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 106
    :cond_23
    sget-object v1, Lcom/google/android/gms/internal/ads/zzoy;->zzb:Ljava/util/regex/Pattern;

    .line 107
    aget-object v3, v0, v14

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_25

    .line 109
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Ignoring malformed HEVC codec string: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1b

    .line 110
    :cond_24
    new-instance p0, Ljava/lang/String;

    .line 111
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 112
    :goto_1b
    invoke-static {v13, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 113
    :cond_25
    invoke-virtual {v1, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "1"

    .line 114
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 p0, 0x1

    goto :goto_1c

    :cond_26
    const-string v1, "2"

    .line 115
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 p0, 0x2

    :goto_1c
    const/4 v1, 0x3

    .line 116
    aget-object v0, v0, v1

    if-nez v0, :cond_27

    goto/16 :goto_1f

    .line 117
    :cond_27
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    goto/16 :goto_1d

    :sswitch_7
    const-string v1, "L186"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0xc

    goto/16 :goto_1e

    :sswitch_8
    const-string v1, "L183"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0xb

    goto/16 :goto_1e

    :sswitch_9
    const-string v1, "L180"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0xa

    goto/16 :goto_1e

    :sswitch_a
    const-string v1, "L156"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0x9

    goto/16 :goto_1e

    :sswitch_b
    const-string v1, "L153"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0x8

    goto/16 :goto_1e

    :sswitch_c
    const-string v1, "L150"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x7

    goto/16 :goto_1e

    :sswitch_d
    const-string v1, "L123"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x6

    goto/16 :goto_1e

    :sswitch_e
    const-string v1, "L120"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x5

    goto/16 :goto_1e

    :sswitch_f
    const-string v1, "H186"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0x19

    goto/16 :goto_1e

    :sswitch_10
    const-string v1, "H183"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0x18

    goto/16 :goto_1e

    :sswitch_11
    const-string v1, "H180"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0x17

    goto/16 :goto_1e

    :sswitch_12
    const-string v1, "H156"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0x16

    goto/16 :goto_1e

    :sswitch_13
    const-string v1, "H153"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0x15

    goto/16 :goto_1e

    :sswitch_14
    const-string v1, "H150"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0x14

    goto/16 :goto_1e

    :sswitch_15
    const-string v1, "H123"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0x13

    goto/16 :goto_1e

    :sswitch_16
    const-string v1, "H120"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0x12

    goto/16 :goto_1e

    :sswitch_17
    const-string v1, "L93"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x4

    goto :goto_1e

    :sswitch_18
    const-string v1, "L90"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x3

    goto :goto_1e

    :sswitch_19
    const-string v1, "L63"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x2

    goto :goto_1e

    :sswitch_1a
    const-string v1, "L60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x1

    goto :goto_1e

    :sswitch_1b
    const-string v1, "L30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v1, 0x0

    goto :goto_1e

    :sswitch_1c
    const-string v1, "H93"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0x11

    goto :goto_1e

    :sswitch_1d
    const-string v1, "H90"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0x10

    goto :goto_1e

    :sswitch_1e
    const-string v1, "H63"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0xf

    goto :goto_1e

    :sswitch_1f
    const-string v1, "H60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0xe

    goto :goto_1e

    :sswitch_20
    const-string v1, "H30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/16 v1, 0xd

    goto :goto_1e

    :cond_28
    :goto_1d
    const/4 v1, -0x1

    :goto_1e
    packed-switch v1, :pswitch_data_7

    goto/16 :goto_1f

    :pswitch_42
    const/high16 v1, 0x2000000

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_20

    :pswitch_43
    const/high16 v1, 0x800000

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_20

    :pswitch_44
    const/high16 v1, 0x200000

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_20

    :pswitch_45
    const/high16 v1, 0x80000

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_20

    :pswitch_46
    const/high16 v1, 0x20000

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_20

    :pswitch_47
    const v1, 0x8000

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_20

    :pswitch_48
    const/16 v1, 0x2000

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_20

    :pswitch_49
    const/16 v1, 0x800

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_20

    .line 127
    :pswitch_4a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_20

    .line 128
    :pswitch_4b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_20

    .line 129
    :pswitch_4c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_20

    .line 130
    :pswitch_4d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_20

    .line 131
    :pswitch_4e
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_20

    :pswitch_4f
    const/high16 v1, 0x1000000

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_20

    :pswitch_50
    const/high16 v1, 0x400000

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_20

    :pswitch_51
    const/high16 v1, 0x100000

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_20

    :pswitch_52
    const/high16 v1, 0x40000

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_20

    :pswitch_53
    const/high16 v1, 0x10000

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_20

    :pswitch_54
    const/16 v1, 0x4000

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_20

    .line 138
    :pswitch_55
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_20

    :pswitch_56
    const/16 v1, 0x400

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_20

    :pswitch_57
    const/16 v1, 0x100

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_20

    :pswitch_58
    const/16 v1, 0x40

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_20

    :pswitch_59
    const/16 v1, 0x10

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_20

    .line 143
    :pswitch_5a
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_20

    .line 144
    :pswitch_5b
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_20

    :goto_1f
    const/4 v1, 0x0

    :goto_20
    if-nez v1, :cond_2a

    .line 145
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unknown HEVC level string: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_21

    .line 146
    :cond_29
    new-instance p0, Ljava/lang/String;

    .line 147
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 148
    :goto_21
    invoke-static {v13, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 149
    :cond_2a
    new-instance v0, Landroid/util/Pair;

    .line 150
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_24

    .line 151
    :cond_2b
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unknown HEVC profile string: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_22

    .line 152
    :cond_2c
    new-instance p0, Ljava/lang/String;

    .line 153
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 154
    :goto_22
    invoke-static {v13, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    const/4 v0, 0x0

    :goto_24
    return-object v0

    .line 155
    :pswitch_5c
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzab;->zzj:Ljava/lang/String;

    .line 156
    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2e

    .line 157
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Ignoring malformed VP9 codec string: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_25

    .line 158
    :cond_2d
    new-instance p0, Ljava/lang/String;

    .line 159
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 160
    :goto_25
    invoke-static {v13, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 161
    :cond_2e
    :try_start_2
    aget-object v1, v0, v14

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 162
    aget-object v0, v0, v12

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_32

    if-eq v1, v14, :cond_31

    if-eq v1, v12, :cond_30

    const/4 v0, 0x3

    if-eq v1, v0, :cond_2f

    const/4 v0, -0x1

    goto :goto_26

    :cond_2f
    const/16 v0, 0x8

    goto :goto_26

    :cond_30
    const/4 v0, 0x4

    goto :goto_26

    :cond_31
    const/4 v0, 0x2

    goto :goto_26

    :cond_32
    const/4 v0, 0x1

    :goto_26
    const/4 v2, -0x1

    if-ne v0, v2, :cond_33

    const-string p0, "Unknown VP9 profile: "

    invoke-static {v7, p0, v1, v13}, La6/d;->g(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2a

    :cond_33
    const/16 v1, 0xa

    if-eq p0, v1, :cond_3d

    const/16 v1, 0xb

    if-eq p0, v1, :cond_3c

    if-eq p0, v5, :cond_3b

    const/16 v1, 0x15

    if-eq p0, v1, :cond_3a

    if-eq p0, v3, :cond_39

    const/16 v1, 0x1f

    if-eq p0, v1, :cond_38

    const/16 v1, 0x28

    if-eq p0, v1, :cond_37

    const/16 v1, 0x29

    if-eq p0, v1, :cond_36

    const/16 v1, 0x32

    if-eq p0, v1, :cond_35

    const/16 v1, 0x33

    if-eq p0, v1, :cond_34

    packed-switch p0, :pswitch_data_8

    const/4 v1, -0x1

    const/4 v2, -0x1

    goto :goto_28

    :pswitch_5d
    const/16 v14, 0x2000

    goto :goto_27

    :pswitch_5e
    const/4 v1, -0x1

    const/16 v2, 0x1000

    goto :goto_28

    :pswitch_5f
    const/4 v1, -0x1

    const/16 v2, 0x800

    goto :goto_28

    :cond_34
    const/4 v1, -0x1

    const/16 v2, 0x200

    goto :goto_28

    :cond_35
    const/4 v1, -0x1

    const/16 v2, 0x100

    goto :goto_28

    :cond_36
    const/4 v1, -0x1

    const/16 v2, 0x80

    goto :goto_28

    :cond_37
    const/4 v1, -0x1

    const/16 v2, 0x40

    goto :goto_28

    :cond_38
    const/4 v1, -0x1

    const/16 v2, 0x20

    goto :goto_28

    :cond_39
    const/4 v1, -0x1

    const/16 v2, 0x10

    goto :goto_28

    :cond_3a
    const/4 v1, -0x1

    const/16 v2, 0x8

    goto :goto_28

    :cond_3b
    const/4 v1, -0x1

    const/4 v2, 0x4

    goto :goto_28

    :cond_3c
    const/4 v1, -0x1

    const/4 v2, 0x2

    goto :goto_28

    :cond_3d
    :goto_27
    const/4 v1, -0x1

    move v2, v14

    :goto_28
    if-ne v2, v1, :cond_3e

    const-string v0, "Unknown VP9 level: "

    .line 163
    invoke-static {v3, v0, p0, v13}, La6/d;->g(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_2a

    .line 164
    :cond_3e
    new-instance p0, Landroid/util/Pair;

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2b

    :catch_2
    nop

    .line 166
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Ignoring malformed VP9 codec string: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_29

    .line 167
    :cond_3f
    new-instance p0, Ljava/lang/String;

    .line 168
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 169
    :goto_29
    invoke-static {v13, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    const/4 p0, 0x0

    :goto_2b
    return-object p0

    .line 170
    :pswitch_60
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzab;->zzj:Ljava/lang/String;

    .line 171
    array-length v1, v0

    if-ge v1, v12, :cond_41

    .line 172
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Ignoring malformed AVC codec string: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2c

    .line 173
    :cond_40
    new-instance p0, Ljava/lang/String;

    .line 174
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 175
    :goto_2c
    invoke-static {v13, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 176
    :cond_41
    :try_start_3
    aget-object v2, v0, v14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_42

    .line 177
    aget-object v1, v0, v14

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 178
    aget-object v0, v0, v14

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_2d

    :cond_42
    const/4 v2, 0x3

    if-lt v1, v2, :cond_4c

    .line 179
    aget-object v1, v0, v14

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 180
    aget-object v0, v0, v12

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2d
    const/16 v0, 0x42

    if-eq v1, v0, :cond_49

    const/16 v0, 0x4d

    if-eq v1, v0, :cond_48

    const/16 v0, 0x58

    if-eq v1, v0, :cond_47

    const/16 v0, 0x64

    if-eq v1, v0, :cond_46

    const/16 v0, 0x6e

    if-eq v1, v0, :cond_45

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_44

    const/16 v0, 0xf4

    if-eq v1, v0, :cond_43

    const/4 v0, -0x1

    const/4 v12, -0x1

    goto :goto_2e

    :cond_43
    const/4 v0, -0x1

    const/16 v12, 0x40

    goto :goto_2e

    :cond_44
    const/4 v0, -0x1

    const/16 v12, 0x20

    goto :goto_2e

    :cond_45
    const/4 v0, -0x1

    const/16 v12, 0x10

    goto :goto_2e

    :cond_46
    const/4 v0, -0x1

    const/16 v12, 0x8

    goto :goto_2e

    :cond_47
    const/4 v0, -0x1

    const/4 v12, 0x4

    goto :goto_2e

    :cond_48
    const/4 v0, -0x1

    goto :goto_2e

    :cond_49
    const/4 v0, -0x1

    const/4 v12, 0x1

    :goto_2e
    if-ne v12, v0, :cond_4a

    const-string p0, "Unknown AVC profile: "

    .line 181
    invoke-static {v7, p0, v1, v13}, La6/d;->g(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_32

    :cond_4a
    packed-switch p0, :pswitch_data_9

    packed-switch p0, :pswitch_data_a

    packed-switch p0, :pswitch_data_b

    packed-switch p0, :pswitch_data_c

    packed-switch p0, :pswitch_data_d

    const/4 v0, -0x1

    goto :goto_2f

    :pswitch_61
    const/16 v0, 0x10

    goto :goto_2f

    :pswitch_62
    const/16 v0, 0x8

    goto :goto_2f

    :pswitch_63
    const/4 v0, 0x4

    goto :goto_2f

    :pswitch_64
    const/4 v0, 0x1

    goto :goto_2f

    :pswitch_65
    const/16 v0, 0x80

    goto :goto_2f

    :pswitch_66
    const/16 v0, 0x40

    goto :goto_2f

    :pswitch_67
    const/16 v0, 0x20

    goto :goto_2f

    :pswitch_68
    const/16 v0, 0x400

    goto :goto_2f

    :pswitch_69
    const/16 v0, 0x200

    goto :goto_2f

    :pswitch_6a
    const/16 v0, 0x100

    goto :goto_2f

    :pswitch_6b
    const/16 v0, 0x2000

    goto :goto_2f

    :pswitch_6c
    const/16 v0, 0x1000

    goto :goto_2f

    :pswitch_6d
    const/16 v0, 0x800

    goto :goto_2f

    :pswitch_6e
    const/high16 v0, 0x10000

    goto :goto_2f

    :pswitch_6f
    const v0, 0x8000

    goto :goto_2f

    :pswitch_70
    const/16 v0, 0x4000

    :goto_2f
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4b

    const-string v0, "Unknown AVC level: "

    .line 182
    invoke-static {v3, v0, p0, v13}, La6/d;->g(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_32

    .line 183
    :cond_4b
    new-instance p0, Landroid/util/Pair;

    .line 184
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_33

    :cond_4c
    :try_start_4
    const-string v0, "Ignoring malformed AVC codec string: "

    .line 185
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 186
    :cond_4d
    new-instance v1, Ljava/lang/String;

    .line 187
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 188
    :goto_30
    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_32

    :catch_3
    nop

    .line 189
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Ignoring malformed AVC codec string: "

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_31

    .line 190
    :cond_4e
    new-instance p0, Ljava/lang/String;

    .line 191
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 192
    :goto_31
    invoke-static {v13, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    const/4 p0, 0x0

    :goto_33
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x600
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x601
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x61f
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2dd8f6 -> :sswitch_6
        0x2ddf23 -> :sswitch_5
        0x2ddf24 -> :sswitch_4
        0x30d038 -> :sswitch_3
        0x310dbc -> :sswitch_2
        0x333790 -> :sswitch_1
        0x374e43 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_60
        :pswitch_60
        :pswitch_5c
        :pswitch_41
        :pswitch_41
        :pswitch_28
        :pswitch_21
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x114a5 -> :sswitch_20
        0x11502 -> :sswitch_1f
        0x11505 -> :sswitch_1e
        0x1155f -> :sswitch_1d
        0x11562 -> :sswitch_1c
        0x123a9 -> :sswitch_1b
        0x12406 -> :sswitch_1a
        0x12409 -> :sswitch_19
        0x12463 -> :sswitch_18
        0x12466 -> :sswitch_17
        0x2178e7 -> :sswitch_16
        0x2178ea -> :sswitch_15
        0x217944 -> :sswitch_14
        0x217947 -> :sswitch_13
        0x21794a -> :sswitch_12
        0x2179a1 -> :sswitch_11
        0x2179a4 -> :sswitch_10
        0x2179a7 -> :sswitch_f
        0x234a63 -> :sswitch_e
        0x234a66 -> :sswitch_d
        0x234ac0 -> :sswitch_c
        0x234ac3 -> :sswitch_b
        0x234ac6 -> :sswitch_a
        0x234b1d -> :sswitch_9
        0x234b20 -> :sswitch_8
        0x234b23 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x3c
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xa
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x14
        :pswitch_67
        :pswitch_66
        :pswitch_65
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x1e
        :pswitch_6a
        :pswitch_69
        :pswitch_68
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x28
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x32
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
    .end packed-switch
.end method

.method public static zzc(Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/zzoh;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzos;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    invoke-static {p0, p1, p1}, Lcom/google/android/gms/internal/ads/zzoy;->zze(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzoh;

    return-object p0
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzoh;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzos;
        }
    .end annotation

    const-string v0, "audio/raw"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzoy;->zzc(Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/zzoh;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized zze(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzoh;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzos;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-class v3, Lcom/google/android/gms/internal/ads/zzoy;

    monitor-enter v3

    .line 1
    :try_start_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zzoq;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzoq;-><init>(Ljava/lang/String;ZZ)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzoy;->zzc:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    monitor-exit v3

    return-object v6

    .line 2
    :cond_0
    :try_start_1
    sget v6, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    const/4 v7, 0x0

    const/16 v8, 0x15

    if-lt v6, v8, :cond_1

    new-instance v9, Lcom/google/android/gms/internal/ads/zzow;

    .line 3
    invoke-direct {v9, v1, v2}, Lcom/google/android/gms/internal/ads/zzow;-><init>(ZZ)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v9, Lcom/google/android/gms/internal/ads/zzov;

    invoke-direct {v9, v7}, Lcom/google/android/gms/internal/ads/zzov;-><init>(Lcom/google/android/gms/internal/ads/zzou;)V

    .line 5
    :goto_0
    invoke-static {v4, v9}, Lcom/google/android/gms/internal/ads/zzoy;->zzg(Lcom/google/android/gms/internal/ads/zzoq;Lcom/google/android/gms/internal/ads/zzot;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    if-lt v6, v8, :cond_2

    const/16 v1, 0x17

    if-gt v6, v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzov;

    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/zzov;-><init>(Lcom/google/android/gms/internal/ads/zzou;)V

    .line 7
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzoy;->zzg(Lcom/google/android/gms/internal/ads/zzoq;Lcom/google/android/gms/internal/ads/zzot;)Ljava/util/ArrayList;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzoh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzoh;->zza:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x3f

    add-int/2addr v11, v7

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". Assuming: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MediaCodecUtil"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "audio/raw"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/16 v0, 0x1a

    if-ge v6, v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfn;->zzb:Ljava/lang/String;

    const-string v7, "R9"

    .line 12
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 14
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzoh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzoh;->zza:Ljava/lang/String;

    const-string v7, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v10, "OMX.google.raw.decoder"

    const-string v11, "audio/raw"

    const-string v12, "audio/raw"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 15
    invoke-static/range {v10 .. v18}, Lcom/google/android/gms/internal/ads/zzoh;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzoh;

    move-result-object v0

    .line 16
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzon;->zza:Lcom/google/android/gms/internal/ads/zzon;

    .line 17
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzoy;->zzh(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzox;)V

    :cond_4
    if-ge v6, v8, :cond_6

    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_6

    .line 19
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzoh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzoh;->zza:Ljava/lang/String;

    const-string v7, "OMX.SEC.mp3.dec"

    .line 20
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "OMX.SEC.MP3.Decoder"

    .line 21
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "OMX.brcm.audio.mp3.decoder"

    .line 22
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzoo;->zza:Lcom/google/android/gms/internal/ads/zzoo;

    .line 23
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzoy;->zzh(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzox;)V

    :cond_6
    const/16 v0, 0x20

    if-ge v6, v0, :cond_7

    .line 24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_7

    const-string v0, "OMX.qti.audio.decoder.flac"

    .line 25
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzoh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzoh;->zza:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 27
    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzoh;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_7
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 29
    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static zzf(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzab;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzoh;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzab;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzoh;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzom;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzom;-><init>(Lcom/google/android/gms/internal/ads/zzab;)V

    .line 2
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzoy;->zzh(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzox;)V

    return-object v0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzoq;Lcom/google/android/gms/internal/ads/zzot;)Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzoq;",
            "Lcom/google/android/gms/internal/ads/zzot;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzoh;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzos;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "secure-playback"

    const-string v4, "tunneled-playback"

    .line 1
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzoq;->zza:Ljava/lang/String;

    .line 2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzot;->zza()I

    move-result v14

    .line 3
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzot;->zze()Z

    move-result v16

    const/16 v17, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v14, :cond_1f

    .line 4
    invoke-interface {v2, v13}, Lcom/google/android/gms/internal/ads/zzot;->zzb(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 5
    sget v7, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isAlias()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_1
    move/from16 v21, v13

    move/from16 v22, v14

    move-object v2, v15

    goto/16 :goto_a

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    .line 8
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v9, :cond_0

    const-string v9, ".secure"

    if-nez v16, :cond_2

    :try_start_1
    invoke-virtual {v12, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_2
    const/16 v10, 0x15

    if-ge v7, v10, :cond_3

    const-string v10, "CIPAACDecoder"

    .line 9
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "CIPMP3Decoder"

    .line 10
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "CIPVorbisDecoder"

    .line 11
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "CIPAMRNBDecoder"

    .line 12
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "AACDecoder"

    .line 13
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "MP3Decoder"

    .line 14
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_3
    const/16 v10, 0x12

    if-ge v7, v10, :cond_4

    const-string v10, "OMX.MTK.AUDIO.DECODER.AAC"

    .line 15
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "a70"

    sget-object v11, Lcom/google/android/gms/internal/ads/zzfn;->zzb:Ljava/lang/String;

    .line 16
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "Xiaomi"

    sget-object v5, Lcom/google/android/gms/internal/ads/zzfn;->zzc:Ljava/lang/String;

    .line 17
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "HM"

    invoke-virtual {v11, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_4
    const/16 v5, 0x10

    if-ne v7, v5, :cond_5

    const-string v10, "OMX.qcom.audio.decoder.mp3"

    .line 18
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "dlxu"

    sget-object v11, Lcom/google/android/gms/internal/ads/zzfn;->zzb:Ljava/lang/String;

    .line 19
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "protou"

    .line 20
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "ville"

    .line 21
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "villeplus"

    .line 22
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "villec2"

    .line 23
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "gee"

    .line 24
    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "C6602"

    .line 25
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "C6603"

    .line 26
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "C6606"

    .line 27
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "C6616"

    .line 28
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "L36h"

    .line 29
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "SO-02E"

    .line 30
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_5
    if-ne v7, v5, :cond_6

    const-string v5, "OMX.qcom.audio.decoder.aac"

    .line 31
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "C1504"

    sget-object v10, Lcom/google/android/gms/internal/ads/zzfn;->zzb:Ljava/lang/String;

    .line 32
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "C1505"

    .line 33
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "C1604"

    .line 34
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "C1605"

    .line 35
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v5, :cond_0

    :cond_6
    const/16 v5, 0x18

    const-string v10, "samsung"

    if-ge v7, v5, :cond_8

    :try_start_2
    const-string v5, "OMX.SEC.aac.dec"

    .line 36
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    sget-object v5, Lcom/google/android/gms/internal/ads/zzfn;->zzc:Ljava/lang/String;

    .line 37
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lcom/google/android/gms/internal/ads/zzfn;->zzb:Ljava/lang/String;

    const-string v11, "zeroflte"

    .line 38
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "zerolte"

    .line 39
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "zenlte"

    .line 40
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "SC-05G"

    .line 41
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "marinelteatt"

    .line 42
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "404SC"

    .line 43
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "SC-04G"

    .line 44
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "SCV31"

    .line 45
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v5, :cond_0

    :cond_8
    const-string v5, "jflte"

    const/16 v11, 0x13

    if-gt v7, v11, :cond_9

    :try_start_3
    const-string v8, "OMX.SEC.vp8.dec"

    .line 46
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    sget-object v8, Lcom/google/android/gms/internal/ads/zzfn;->zzc:Ljava/lang/String;

    .line 47
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    sget-object v8, Lcom/google/android/gms/internal/ads/zzfn;->zzb:Ljava/lang/String;

    const-string v10, "d2"

    .line 48
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "serrano"

    .line 49
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 50
    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "santos"

    .line 51
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "t0"

    .line 52
    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_9
    if-gt v7, v11, :cond_a

    sget-object v7, Lcom/google/android/gms/internal/ads/zzfn;->zzb:Ljava/lang/String;

    .line 53
    invoke-virtual {v7, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "OMX.qcom.video.decoder.vp8"

    .line 54
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_a
    const-string v5, "audio/eac3-joc"

    .line 55
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 56
    :cond_b
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 57
    array-length v7, v5

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_d

    aget-object v10, v5, v8

    .line 58
    invoke-virtual {v10, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    :goto_3
    move-object v5, v10

    goto :goto_4

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_d
    const-string v5, "video/dolby-vision"

    .line 59
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "OMX.MS.HEVCDV.Decoder"

    .line 60
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v10, "video/hevcdv"

    goto :goto_3

    :cond_e
    const-string v5, "OMX.RTK.video.decoder"

    .line 61
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "OMX.realtek.video.decoder.tunneled"

    .line 62
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_f
    const-string v10, "video/dv_hevc"

    goto :goto_3

    :cond_10
    const-string v5, "audio/alac"

    .line 63
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "OMX.lge.alac.decoder"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v10, "audio/x-lg-alac"

    goto :goto_3

    :cond_11
    const-string v5, "audio/flac"

    .line 64
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "OMX.lge.flac.decoder"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v10, "audio/x-lg-flac"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :cond_12
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_0

    .line 65
    :try_start_4
    invoke-virtual {v0, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v10

    .line 66
    invoke-interface {v2, v4, v5, v10}, Lcom/google/android/gms/internal/ads/zzot;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    .line 67
    invoke-interface {v2, v4, v5, v10}, Lcom/google/android/gms/internal/ads/zzot;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v8

    iget-boolean v11, v1, Lcom/google/android/gms/internal/ads/zzoq;->zzc:Z

    if-nez v11, :cond_13

    if-nez v8, :cond_0

    goto :goto_5

    :cond_13
    if-nez v7, :cond_14

    goto/16 :goto_1

    .line 68
    :cond_14
    :goto_5
    invoke-interface {v2, v3, v5, v10}, Lcom/google/android/gms/internal/ads/zzot;->zzd(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    .line 69
    invoke-interface {v2, v3, v5, v10}, Lcom/google/android/gms/internal/ads/zzot;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v8

    iget-boolean v11, v1, Lcom/google/android/gms/internal/ads/zzoq;->zzb:Z

    const/16 v19, 0x1

    if-nez v11, :cond_15

    if-nez v8, :cond_0

    goto :goto_6

    :cond_15
    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_6
    sget v8, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    const/16 v11, 0x1d

    if-lt v8, v11, :cond_16

    .line 70
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v11

    goto :goto_7

    .line 71
    :cond_16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoy;->zzi(Landroid/media/MediaCodecInfo;)Z

    move-result v11

    if-nez v11, :cond_17

    const/4 v11, 0x1

    goto :goto_7

    :cond_17
    const/4 v11, 0x0

    .line 72
    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoy;->zzi(Landroid/media/MediaCodecInfo;)Z

    move-result v20

    const/16 v2, 0x1d

    if-lt v8, v2, :cond_18

    .line 73
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-result v0

    goto :goto_8

    .line 74
    :cond_18
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfpn;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "omx.google."

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "c2.android."

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "c2.google."

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_8

    :cond_19
    const/4 v0, 0x0

    :goto_8
    if-eqz v16, :cond_1a

    .line 78
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzoq;->zzb:Z

    if-eq v2, v7, :cond_1b

    :cond_1a
    if-nez v16, :cond_1c

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzoq;->zzb:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-nez v2, :cond_1c

    :cond_1b
    const/4 v2, 0x0

    const/16 v18, 0x0

    move-object v7, v12

    move-object v8, v15

    move-object v9, v5

    move-object/from16 v19, v12

    move/from16 v12, v20

    move/from16 v21, v13

    move v13, v0

    move/from16 v22, v14

    move v14, v2

    move-object v2, v15

    move/from16 v15, v18

    .line 79
    :try_start_5
    invoke-static/range {v7 .. v15}, Lcom/google/android/gms/internal/ads/zzoh;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzoh;

    move-result-object v0

    .line 80
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_1c
    move-object/from16 v19, v12

    move/from16 v21, v13

    move/from16 v22, v14

    move-object v2, v15

    if-nez v16, :cond_1e

    if-eqz v7, :cond_1e

    .line 81
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v8, v2

    move-object v9, v5

    move/from16 v12, v20

    move v13, v0

    .line 82
    invoke-static/range {v7 .. v15}, Lcom/google/android/gms/internal/ads/zzoh;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzoh;

    move-result-object v0

    .line 83
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-object v6

    :catch_1
    move-exception v0

    move-object/from16 v19, v12

    move/from16 v21, v13

    move/from16 v22, v14

    move-object v2, v15

    .line 84
    :goto_9
    :try_start_6
    sget v7, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    const/16 v8, 0x17

    if-gt v7, v8, :cond_1d

    .line 85
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1d

    .line 86
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_a

    .line 87
    :cond_1d
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_1e
    :goto_a
    add-int/lit8 v13, v21, 0x1

    move-object v15, v2

    move/from16 v14, v22

    move-object/from16 v2, p1

    goto/16 :goto_0

    :cond_1f
    return-object v6

    :catch_2
    move-exception v0

    .line 89
    new-instance v1, Lcom/google/android/gms/internal/ads/zzos;

    const/4 v2, 0x0

    .line 90
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzos;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzor;)V

    throw v1
.end method

.method private static zzh(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzox;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/zzox<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzop;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzop;-><init>(Lcom/google/android/gms/internal/ads/zzox;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static zzi(Landroid/media/MediaCodecInfo;)Z
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzfn;->zza:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfpn;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "arc."

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "omx.google."

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    const-string v0, "omx.ffmpeg."

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "omx.sec."

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ".sw."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const-string v0, "omx.qcom.video.decoder.hevcswvdec"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "c2.android."

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "c2.google."

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "omx."

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "c2."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :cond_5
    return v1
.end method
