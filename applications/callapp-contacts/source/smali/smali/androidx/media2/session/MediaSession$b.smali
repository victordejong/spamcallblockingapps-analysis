.class public final Landroidx/media2/session/MediaSession$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field final a:Landroidx/media/b$b;

.field final b:Z

.field final c:Landroidx/media2/session/MediaSession$a;

.field private final d:I

.field private final e:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroidx/media/b$b;IZLandroidx/media2/session/MediaSession$a;Landroid/os/Bundle;)V
    .locals 0

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    iput-object p1, p0, Landroidx/media2/session/MediaSession$b;->a:Landroidx/media/b$b;

    .line 888
    iput p2, p0, Landroidx/media2/session/MediaSession$b;->d:I

    .line 889
    iput-boolean p3, p0, Landroidx/media2/session/MediaSession$b;->b:Z

    .line 890
    iput-object p4, p0, Landroidx/media2/session/MediaSession$b;->c:Landroidx/media2/session/MediaSession$a;

    if-eqz p5, :cond_1

    .line 892
    invoke-static {p5}, Landroidx/media2/session/s;->a(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 895
    :cond_0
    iput-object p5, p0, Landroidx/media2/session/MediaSession$b;->e:Landroid/os/Bundle;

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 893
    iput-object p1, p0, Landroidx/media2/session/MediaSession$b;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 970
    instance-of v0, p1, Landroidx/media2/session/MediaSession$b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 976
    :cond_1
    check-cast p1, Landroidx/media2/session/MediaSession$b;

    .line 977
    iget-object v0, p0, Landroidx/media2/session/MediaSession$b;->c:Landroidx/media2/session/MediaSession$a;

    if-nez v0, :cond_3

    iget-object v1, p1, Landroidx/media2/session/MediaSession$b;->c:Landroidx/media2/session/MediaSession$a;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 980
    :cond_2
    iget-object v0, p0, Landroidx/media2/session/MediaSession$b;->a:Landroidx/media/b$b;

    iget-object p1, p1, Landroidx/media2/session/MediaSession$b;->a:Landroidx/media/b$b;

    invoke-virtual {v0, p1}, Landroidx/media/b$b;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 978
    :cond_3
    :goto_0
    iget-object p1, p1, Landroidx/media2/session/MediaSession$b;->c:Landroidx/media2/session/MediaSession$a;

    invoke-static {v0, p1}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 965
    iget-object v1, p0, Landroidx/media2/session/MediaSession$b;->c:Landroidx/media2/session/MediaSession$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/session/MediaSession$b;->a:Landroidx/media/b$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/e/a;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ControllerInfo {pkg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media2/session/MediaSession$b;->a:Landroidx/media/b$b;

    .line 1203
    iget-object v1, v1, Landroidx/media/b$b;->a:Landroidx/media/b$c;

    invoke-interface {v1}, Landroidx/media/b$c;->a()Ljava/lang/String;

    move-result-object v1

    .line 985
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/session/MediaSession$b;->a:Landroidx/media/b$b;

    .line 1217
    iget-object v1, v1, Landroidx/media/b$b;->a:Landroidx/media/b$c;

    invoke-interface {v1}, Landroidx/media/b$c;->c()I

    move-result v1

    .line 986
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
