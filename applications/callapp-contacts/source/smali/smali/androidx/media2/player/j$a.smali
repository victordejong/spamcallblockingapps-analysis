.class public final Landroidx/media2/player/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Float;

.field private c:Ljava/lang/Float;

.field private d:Landroid/media/PlaybackParams;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 188
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/j$a;->d:Landroid/media/PlaybackParams;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/media/PlaybackParams;)V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Landroidx/media2/player/j$a;->d:Landroid/media/PlaybackParams;

    return-void
.end method

.method public constructor <init>(Landroidx/media2/player/j;)V
    .locals 2

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "playbakcParams shouldn\'t be null"

    .line 206
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 1166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 1167
    iget-object p1, p1, Landroidx/media2/player/j;->a:Landroid/media/PlaybackParams;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 209
    :goto_0
    iput-object p1, p0, Landroidx/media2/player/j$a;->d:Landroid/media/PlaybackParams;

    return-void

    .line 211
    :cond_1
    invoke-virtual {p1}, Landroidx/media2/player/j;->a()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/j$a;->a:Ljava/lang/Integer;

    .line 212
    invoke-virtual {p1}, Landroidx/media2/player/j;->b()Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/j$a;->b:Ljava/lang/Float;

    .line 213
    invoke-virtual {p1}, Landroidx/media2/player/j;->c()Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/player/j$a;->c:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media2/player/j$a;
    .locals 3

    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 224
    iget-object v0, p0, Landroidx/media2/player/j$a;->d:Landroid/media/PlaybackParams;

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/j$a;->a:Ljava/lang/Integer;

    :goto_0
    return-object p0
.end method

.method public final a(F)Landroidx/media2/player/j$a;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_2

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 267
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Landroidx/media2/player/j$a;->d:Landroid/media/PlaybackParams;

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    goto :goto_0

    .line 270
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/player/j$a;->c:Ljava/lang/Float;

    :goto_0
    return-object p0

    .line 265
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "negative speed is not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 262
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "0 speed is not allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Landroidx/media2/player/j$a;
    .locals 3

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 246
    iget-object v0, p0, Landroidx/media2/player/j$a;->d:Landroid/media/PlaybackParams;

    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/j$a;->b:Ljava/lang/Float;

    :goto_0
    return-object p0
.end method

.method public final c()Landroidx/media2/player/j;
    .locals 4

    .line 281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 282
    new-instance v0, Landroidx/media2/player/j;

    iget-object v1, p0, Landroidx/media2/player/j$a;->d:Landroid/media/PlaybackParams;

    invoke-direct {v0, v1}, Landroidx/media2/player/j;-><init>(Landroid/media/PlaybackParams;)V

    return-object v0

    .line 284
    :cond_0
    new-instance v0, Landroidx/media2/player/j;

    iget-object v1, p0, Landroidx/media2/player/j$a;->a:Ljava/lang/Integer;

    iget-object v2, p0, Landroidx/media2/player/j$a;->b:Ljava/lang/Float;

    iget-object v3, p0, Landroidx/media2/player/j$a;->c:Ljava/lang/Float;

    invoke-direct {v0, v1, v2, v3}, Landroidx/media2/player/j;-><init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V

    return-object v0
.end method
