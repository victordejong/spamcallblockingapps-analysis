.class public final Lcom/google/android/exoplayer2/audio/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/d$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/audio/d;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field private f:Landroid/media/AudioAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/google/android/exoplayer2/audio/d$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/d$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/d$a;->a()Lcom/google/android/exoplayer2/audio/d;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/d;->a:Lcom/google/android/exoplayer2/audio/d;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/google/android/exoplayer2/audio/d;->b:I

    .line 111
    iput p2, p0, Lcom/google/android/exoplayer2/audio/d;->c:I

    .line 112
    iput p3, p0, Lcom/google/android/exoplayer2/audio/d;->d:I

    .line 113
    iput p4, p0, Lcom/google/android/exoplayer2/audio/d;->e:I

    return-void
.end method

.method synthetic constructor <init>(IIIILcom/google/android/exoplayer2/audio/d$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/audio/d;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/media/AudioAttributes;
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/d;->f:Landroid/media/AudioAttributes;

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Lcom/google/android/exoplayer2/audio/d;->b:I

    .line 126
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/d;->c:I

    .line 127
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/d;->d:I

    .line 128
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 129
    sget v1, Lcom/google/android/exoplayer2/util/af;->a:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 130
    iget v1, p0, Lcom/google/android/exoplayer2/audio/d;->e:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    .line 132
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/d;->f:Landroid/media/AudioAttributes;

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/d;->f:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/audio/d;

    .line 146
    iget v2, p0, Lcom/google/android/exoplayer2/audio/d;->b:I

    iget v3, p1, Lcom/google/android/exoplayer2/audio/d;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/d;->c:I

    iget v3, p1, Lcom/google/android/exoplayer2/audio/d;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/d;->d:I

    iget v3, p1, Lcom/google/android/exoplayer2/audio/d;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/d;->e:I

    iget p1, p1, Lcom/google/android/exoplayer2/audio/d;->e:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 155
    iget v0, p0, Lcom/google/android/exoplayer2/audio/d;->b:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 156
    iget v1, p0, Lcom/google/android/exoplayer2/audio/d;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 157
    iget v1, p0, Lcom/google/android/exoplayer2/audio/d;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 158
    iget v1, p0, Lcom/google/android/exoplayer2/audio/d;->e:I

    add-int/2addr v0, v1

    return v0
.end method
