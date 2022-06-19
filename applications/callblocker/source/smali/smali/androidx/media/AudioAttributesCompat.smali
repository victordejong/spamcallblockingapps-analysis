.class public Landroidx/media/AudioAttributesCompat;
.super Ljava/lang/Object;
.source "AudioAttributesCompat.java"

# interfaces
.implements Landroidx/versionedparcelable/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/AudioAttributesCompat$a;
    }
.end annotation


# static fields
.field static a:Z

.field private static final c:Landroid/util/SparseIntArray;

.field private static final d:[I


# instance fields
.field public b:Landroidx/media/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 173
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/media/AudioAttributesCompat;->c:Landroid/util/SparseIntArray;

    .line 174
    sget-object v0, Landroidx/media/AudioAttributesCompat;->c:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 175
    sget-object v0, Landroidx/media/AudioAttributesCompat;->c:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 176
    sget-object v0, Landroidx/media/AudioAttributesCompat;->c:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 177
    sget-object v0, Landroidx/media/AudioAttributesCompat;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 179
    sget-object v0, Landroidx/media/AudioAttributesCompat;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 181
    sget-object v0, Landroidx/media/AudioAttributesCompat;->c:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 184
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media/AudioAttributesCompat;->d:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    return-void
.end method

.method constructor <init>(Landroidx/media/a;)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Landroidx/media/AudioAttributesCompat;->b:Landroidx/media/a;

    .line 249
    return-void
.end method

.method static a(ZII)I
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 553
    and-int/lit8 v4, p1, 0x1

    if-ne v4, v0, :cond_1

    .line 554
    if-eqz p0, :cond_0

    .line 598
    :goto_0
    :pswitch_0
    return v0

    .line 554
    :cond_0
    const/4 v0, 0x7

    goto :goto_0

    .line 558
    :cond_1
    and-int/lit8 v4, p1, 0x4

    if-ne v4, v3, :cond_3

    .line 559
    if-eqz p0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    .line 565
    :cond_3
    packed-switch p2, :pswitch_data_0

    .line 594
    :pswitch_1
    if-eqz p0, :cond_5

    .line 595
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown usage value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in audio attributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    move v0, v2

    .line 570
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 574
    goto :goto_0

    .line 576
    :pswitch_4
    if-eqz p0, :cond_4

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    goto :goto_1

    :pswitch_5
    move v0, v3

    .line 580
    goto :goto_0

    .line 582
    :pswitch_6
    const/4 v0, 0x2

    goto :goto_0

    .line 588
    :pswitch_7
    const/4 v0, 0x5

    goto :goto_0

    .line 590
    :pswitch_8
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_9
    move v0, v2

    .line 592
    goto :goto_0

    :cond_5
    move v0, v2

    .line 598
    goto :goto_0

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/lang/Object;)Landroidx/media/AudioAttributesCompat;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 299
    sget-boolean v1, Landroidx/media/AudioAttributesCompat;->a:Z

    if-eqz v1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-object v0

    .line 302
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 303
    new-instance v0, Landroidx/media/AudioAttributesCompat;

    new-instance v1, Landroidx/media/AudioAttributesImplApi26;

    check-cast p0, Landroid/media/AudioAttributes;

    invoke-direct {v1, p0}, Landroidx/media/AudioAttributesImplApi26;-><init>(Landroid/media/AudioAttributes;)V

    invoke-direct {v0, v1}, Landroidx/media/AudioAttributesCompat;-><init>(Landroidx/media/a;)V

    goto :goto_0

    .line 304
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 305
    new-instance v0, Landroidx/media/AudioAttributesCompat;

    new-instance v1, Landroidx/media/AudioAttributesImplApi21;

    check-cast p0, Landroid/media/AudioAttributes;

    invoke-direct {v1, p0}, Landroidx/media/AudioAttributesImplApi21;-><init>(Landroid/media/AudioAttributes;)V

    invoke-direct {v0, v1}, Landroidx/media/AudioAttributesCompat;-><init>(Landroidx/media/a;)V

    goto :goto_0
.end method

.method static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 488
    packed-switch p0, :pswitch_data_0

    .line 522
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown usage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 490
    :pswitch_1
    const-string/jumbo v0, "USAGE_UNKNOWN"

    goto :goto_0

    .line 492
    :pswitch_2
    const-string/jumbo v0, "USAGE_MEDIA"

    goto :goto_0

    .line 494
    :pswitch_3
    const-string/jumbo v0, "USAGE_VOICE_COMMUNICATION"

    goto :goto_0

    .line 496
    :pswitch_4
    const-string/jumbo v0, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    goto :goto_0

    .line 498
    :pswitch_5
    const-string/jumbo v0, "USAGE_ALARM"

    goto :goto_0

    .line 500
    :pswitch_6
    const-string/jumbo v0, "USAGE_NOTIFICATION"

    goto :goto_0

    .line 502
    :pswitch_7
    const-string/jumbo v0, "USAGE_NOTIFICATION_RINGTONE"

    goto :goto_0

    .line 504
    :pswitch_8
    const-string/jumbo v0, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    goto :goto_0

    .line 506
    :pswitch_9
    const-string/jumbo v0, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    goto :goto_0

    .line 508
    :pswitch_a
    const-string/jumbo v0, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    goto :goto_0

    .line 510
    :pswitch_b
    const-string/jumbo v0, "USAGE_NOTIFICATION_EVENT"

    goto :goto_0

    .line 512
    :pswitch_c
    const-string/jumbo v0, "USAGE_ASSISTANCE_ACCESSIBILITY"

    goto :goto_0

    .line 514
    :pswitch_d
    const-string/jumbo v0, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    goto :goto_0

    .line 516
    :pswitch_e
    const-string/jumbo v0, "USAGE_ASSISTANCE_SONIFICATION"

    goto :goto_0

    .line 518
    :pswitch_f
    const-string/jumbo v0, "USAGE_GAME"

    goto :goto_0

    .line 520
    :pswitch_10
    const-string/jumbo v0, "USAGE_ASSISTANT"

    goto :goto_0

    .line 488
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 605
    instance-of v1, p1, Landroidx/media/AudioAttributesCompat;

    if-nez v1, :cond_1

    .line 612
    :cond_0
    :goto_0
    return v0

    .line 608
    :cond_1
    check-cast p1, Landroidx/media/AudioAttributesCompat;

    .line 609
    iget-object v1, p0, Landroidx/media/AudioAttributesCompat;->b:Landroidx/media/a;

    if-nez v1, :cond_2

    .line 610
    iget-object v1, p1, Landroidx/media/AudioAttributesCompat;->b:Landroidx/media/a;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 612
    :cond_2
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->b:Landroidx/media/a;

    iget-object v1, p1, Landroidx/media/AudioAttributesCompat;->b:Landroidx/media/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->b:Landroidx/media/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Landroidx/media/AudioAttributesCompat;->b:Landroidx/media/a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
