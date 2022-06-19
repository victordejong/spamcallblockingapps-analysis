.class Landroidx/media/AudioAttributesImplBase$a;
.super Ljava/lang/Object;
.source "AudioAttributesImplBase.java"

# interfaces
.implements Landroidx/media/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/AudioAttributesImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->a:I

    .line 167
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->b:I

    .line 168
    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->c:I

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media/AudioAttributesImplBase$a;->d:I

    .line 172
    return-void
.end method


# virtual methods
.method public synthetic a(I)Landroidx/media/a$a;
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Landroidx/media/AudioAttributesImplBase$a;->b(I)Landroidx/media/AudioAttributesImplBase$a;

    move-result-object v0

    return-object v0
.end method

.method public a()Landroidx/media/a;
    .locals 5

    .prologue
    .line 183
    new-instance v0, Landroidx/media/AudioAttributesImplBase;

    iget v1, p0, Landroidx/media/AudioAttributesImplBase$a;->b:I

    iget v2, p0, Landroidx/media/AudioAttributesImplBase$a;->c:I

    iget v3, p0, Landroidx/media/AudioAttributesImplBase$a;->a:I

    iget v4, p0, Landroidx/media/AudioAttributesImplBase$a;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media/AudioAttributesImplBase;-><init>(IIII)V

    return-object v0
.end method

.method public b(I)Landroidx/media/AudioAttributesImplBase$a;
    .locals 2

    .prologue
    .line 242
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    iput p1, p0, Landroidx/media/AudioAttributesImplBase$a;->d:I

    .line 248
    return-object p0
.end method
