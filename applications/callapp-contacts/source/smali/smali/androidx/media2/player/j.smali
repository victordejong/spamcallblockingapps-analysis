.class public final Landroidx/media2/player/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/j$a;
    }
.end annotation


# instance fields
.field a:Landroid/media/PlaybackParams;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Float;

.field private d:Ljava/lang/Float;


# direct methods
.method constructor <init>(Landroid/media/PlaybackParams;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Landroidx/media2/player/j;->a:Landroid/media/PlaybackParams;

    return-void
.end method

.method constructor <init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Landroidx/media2/player/j;->b:Ljava/lang/Integer;

    .line 100
    iput-object p2, p0, Landroidx/media2/player/j;->c:Ljava/lang/Float;

    .line 101
    iput-object p3, p0, Landroidx/media2/player/j;->d:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Integer;
    .locals 2

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 115
    :try_start_0
    iget-object v0, p0, Landroidx/media2/player/j;->a:Landroid/media/PlaybackParams;

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getAudioFallbackMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/j;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public final b()Ljava/lang/Float;
    .locals 2

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Landroidx/media2/player/j;->a:Landroid/media/PlaybackParams;

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/j;->c:Ljava/lang/Float;

    return-object v0
.end method

.method public final c()Ljava/lang/Float;
    .locals 2

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 145
    :try_start_0
    iget-object v0, p0, Landroidx/media2/player/j;->a:Landroid/media/PlaybackParams;

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/j;->d:Ljava/lang/Float;

    return-object v0
.end method
