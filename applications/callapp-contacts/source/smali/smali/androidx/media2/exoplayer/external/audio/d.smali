.class public final Landroidx/media2/exoplayer/external/audio/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/audio/d;

.field private static final d:Landroidx/media2/exoplayer/external/audio/d;


# instance fields
.field final b:[I

.field final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 46
    new-instance v0, Landroidx/media2/exoplayer/external/audio/d;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/audio/d;-><init>([II)V

    sput-object v0, Landroidx/media2/exoplayer/external/audio/d;->a:Landroidx/media2/exoplayer/external/audio/d;

    .line 50
    new-instance v0, Landroidx/media2/exoplayer/external/audio/d;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/audio/d;-><init>([II)V

    sput-object v0, Landroidx/media2/exoplayer/external/audio/d;->d:Landroidx/media2/exoplayer/external/audio/d;

    return-void

    :array_0
    .array-data 4
        0x2
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>([II)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 117
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/d;->b:[I

    .line 118
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 120
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/d;->b:[I

    .line 122
    :goto_0
    iput p2, p0, Landroidx/media2/exoplayer/external/audio/d;->c:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroidx/media2/exoplayer/external/audio/d;
    .locals 5

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 1167
    sget v1, Landroidx/media2/exoplayer/external/util/ac;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x11

    if-lt v1, v4, :cond_0

    sget-object v1, Landroidx/media2/exoplayer/external/util/ac;->c:Ljava/lang/String;

    const-string v4, "Amazon"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1077
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "external_surround_sound_enabled"

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_1

    .line 1078
    sget-object p0, Landroidx/media2/exoplayer/external/audio/d;->d:Landroidx/media2/exoplayer/external/audio/d;

    return-object p0

    :cond_1
    if-eqz v0, :cond_3

    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    .line 1080
    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 1083
    :cond_2
    new-instance p0, Landroidx/media2/exoplayer/external/audio/d;

    const-string v1, "android.media.extra.ENCODINGS"

    .line 1084
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    const/16 v2, 0x8

    const-string v3, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 1085
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Landroidx/media2/exoplayer/external/audio/d;-><init>([II)V

    return-object p0

    .line 1081
    :cond_3
    :goto_1
    sget-object p0, Landroidx/media2/exoplayer/external/audio/d;->a:Landroidx/media2/exoplayer/external/audio/d;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 147
    :cond_0
    instance-of v1, p1, Landroidx/media2/exoplayer/external/audio/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 150
    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/audio/d;

    .line 151
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/d;->b:[I

    iget-object v3, p1, Landroidx/media2/exoplayer/external/audio/d;->b:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/d;->c:I

    iget p1, p1, Landroidx/media2/exoplayer/external/audio/d;->c:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 157
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/d;->c:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/d;->b:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 162
    iget v0, p0, Landroidx/media2/exoplayer/external/audio/d;->c:I

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/d;->b:[I

    .line 163
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x43

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "AudioCapabilities[maxChannelCount="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", supportedEncodings="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
