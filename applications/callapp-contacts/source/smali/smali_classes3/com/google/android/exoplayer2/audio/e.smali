.class public final Lcom/google/android/exoplayer2/audio/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/exoplayer2/audio/e;

.field private static final c:Lcom/google/android/exoplayer2/audio/e;


# instance fields
.field final b:I

.field private final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lcom/google/android/exoplayer2/audio/e;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/e;-><init>([II)V

    sput-object v0, Lcom/google/android/exoplayer2/audio/e;->a:Lcom/google/android/exoplayer2/audio/e;

    .line 41
    new-instance v0, Lcom/google/android/exoplayer2/audio/e;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/e;-><init>([II)V

    sput-object v0, Lcom/google/android/exoplayer2/audio/e;->c:Lcom/google/android/exoplayer2/audio/e;

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

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 108
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/e;->d:[I

    .line 109
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [I

    .line 111
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/e;->d:[I

    .line 113
    :goto_0
    iput p2, p0, Lcom/google/android/exoplayer2/audio/e;->b:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/e;
    .locals 5

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 1158
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x11

    if-lt v1, v4, :cond_1

    sget-object v1, Lcom/google/android/exoplayer2/util/af;->c:Ljava/lang/String;

    const-string v4, "Amazon"

    .line 1159
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/exoplayer2/util/af;->c:Ljava/lang/String;

    const-string v4, "Xiaomi"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 1068
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "external_surround_sound_enabled"

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_2

    .line 1069
    sget-object p0, Lcom/google/android/exoplayer2/audio/e;->c:Lcom/google/android/exoplayer2/audio/e;

    return-object p0

    :cond_2
    if-eqz v0, :cond_4

    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    .line 1071
    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    .line 1074
    :cond_3
    new-instance p0, Lcom/google/android/exoplayer2/audio/e;

    const-string v1, "android.media.extra.ENCODINGS"

    .line 1075
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    const/16 v2, 0x8

    const-string v3, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 1076
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/audio/e;-><init>([II)V

    return-object p0

    .line 1072
    :cond_4
    :goto_1
    sget-object p0, Lcom/google/android/exoplayer2/audio/e;->a:Lcom/google/android/exoplayer2/audio/e;

    return-object p0
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e;->d:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 138
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/audio/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 141
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/audio/e;

    .line 142
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/e;->d:[I

    iget-object v3, p1, Lcom/google/android/exoplayer2/audio/e;->d:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/audio/e;->b:I

    iget p1, p1, Lcom/google/android/exoplayer2/audio/e;->b:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 148
    iget v0, p0, Lcom/google/android/exoplayer2/audio/e;->b:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/e;->d:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioCapabilities[maxChannelCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/exoplayer2/audio/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportedEncodings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/e;->d:[I

    .line 154
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
