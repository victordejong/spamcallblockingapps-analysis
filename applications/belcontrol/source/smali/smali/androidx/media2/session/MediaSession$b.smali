.class public final Landroidx/media2/session/MediaSession$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lpf$b;

.field public final b:Landroidx/media2/session/MediaSession$a;


# direct methods
.method public constructor <init>(Lpf$b;ZLandroidx/media2/session/MediaSession$a;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/session/MediaSession$b;->a:Lpf$b;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/media2/session/MediaSession$b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    check-cast p1, Landroidx/media2/session/MediaSession$b;

    iget-object v0, p0, Landroidx/media2/session/MediaSession$b;->b:Landroidx/media2/session/MediaSession$a;

    if-nez v0, :cond_3

    iget-object v1, p1, Landroidx/media2/session/MediaSession$b;->b:Landroidx/media2/session/MediaSession$a;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/media2/session/MediaSession$b;->a:Lpf$b;

    iget-object p1, p1, Landroidx/media2/session/MediaSession$b;->a:Lpf$b;

    invoke-virtual {v0, p1}, Lpf$b;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    iget-object p1, p1, Landroidx/media2/session/MediaSession$b;->b:Landroidx/media2/session/MediaSession$a;

    invoke-static {v0, p1}, Lja;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media2/session/MediaSession$b;->b:Landroidx/media2/session/MediaSession$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/session/MediaSession$b;->a:Lpf$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lja;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControllerInfo {pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/session/MediaSession$b;->a:Lpf$b;

    invoke-virtual {v1}, Lpf$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/session/MediaSession$b;->a:Lpf$b;

    invoke-virtual {v1}, Lpf$b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
