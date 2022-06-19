.class public final Landroidx/media2/common/SessionPlayer$TrackInfo;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/SessionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackInfo"
.end annotation


# instance fields
.field public a:I

.field public b:Landroidx/media2/common/MediaItem;

.field public c:I

.field public d:Landroid/os/Bundle;

.field public e:Landroid/media/MediaFormat;

.field public f:Landroidx/media2/common/MediaItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroidx/media2/common/MediaItem;ILandroid/media/MediaFormat;)V
    .locals 0

    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    iput p1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    iput-object p2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->f:Landroidx/media2/common/MediaItem;

    iput p3, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:I

    iput-object p4, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->d:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    iput-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    const-string v0, "language"

    invoke-virtual {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->p(Ljava/lang/String;)V

    const-string v0, "mime"

    invoke-virtual {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->p(Ljava/lang/String;)V

    const-string v0, "is-forced-subtitle"

    invoke-virtual {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->o(Ljava/lang/String;)V

    const-string v0, "is-autoselect"

    invoke-virtual {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->o(Ljava/lang/String;)V

    const-string v0, "is-default"

    invoke-virtual {p0, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;->o(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->f:Landroidx/media2/common/MediaItem;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:Landroidx/media2/common/MediaItem;

    iput-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->f:Landroidx/media2/common/MediaItem;

    :cond_1
    return-void
.end method

.method public e(Z)V
    .locals 1

    iget-object p1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->d:Landroid/os/Bundle;

    const-string p1, "language"

    invoke-virtual {p0, p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->m(Ljava/lang/String;)V

    const-string p1, "mime"

    invoke-virtual {p0, p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->m(Ljava/lang/String;)V

    const-string p1, "is-forced-subtitle"

    invoke-virtual {p0, p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->l(Ljava/lang/String;)V

    const-string p1, "is-autoselect"

    invoke-virtual {p0, p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->l(Ljava/lang/String;)V

    const-string p1, "is-default"

    invoke-virtual {p0, p1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->l(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->f:Landroidx/media2/common/MediaItem;

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:Landroidx/media2/common/MediaItem;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/media2/common/MediaItem;

    invoke-direct {v0, p1}, Landroidx/media2/common/MediaItem;-><init>(Landroidx/media2/common/MediaItem;)V

    iput-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->b:Landroidx/media2/common/MediaItem;

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-class v2, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    iget v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    iget v3, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:I

    iget v3, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    if-nez v2, :cond_5

    iget-object v3, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    iget-object v3, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    if-eqz v3, :cond_6

    return v1

    :cond_6
    if-eqz v2, :cond_7

    iget-object v3, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    if-nez v3, :cond_7

    return v1

    :cond_7
    iget-object v3, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    const-string v4, "language"

    invoke-virtual {p0, v4, v2, v3}, Landroidx/media2/common/SessionPlayer$TrackInfo;->n(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    iget-object v3, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    const-string v4, "mime"

    invoke-virtual {p0, v4, v2, v3}, Landroidx/media2/common/SessionPlayer$TrackInfo;->n(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    iget-object v3, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    const-string v4, "is-forced-subtitle"

    invoke-virtual {p0, v4, v2, v3}, Landroidx/media2/common/SessionPlayer$TrackInfo;->k(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    iget-object v3, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    const-string v4, "is-autoselect"

    invoke-virtual {p0, v4, v2, v3}, Landroidx/media2/common/SessionPlayer$TrackInfo;->k(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    iget-object v3, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    const-string v4, "is-default"

    invoke-virtual {p0, v4, v2, v3}, Landroidx/media2/common/SessionPlayer$TrackInfo;->k(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    :goto_0
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->f:Landroidx/media2/common/MediaItem;

    if-nez v2, :cond_9

    iget-object v3, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->f:Landroidx/media2/common/MediaItem;

    if-nez v3, :cond_9

    return v0

    :cond_9
    if-eqz v2, :cond_c

    iget-object v0, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->f:Landroidx/media2/common/MediaItem;

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {v2}, Landroidx/media2/common/MediaItem;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object p1, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->f:Landroidx/media2/common/MediaItem;

    invoke-virtual {p1}, Landroidx/media2/common/MediaItem;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_b
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->f:Landroidx/media2/common/MediaItem;

    iget-object p1, p1, Landroidx/media2/common/SessionPlayer$TrackInfo;->f:Landroidx/media2/common/MediaItem;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_c
    :goto_1
    return v1
.end method

.method public f()Landroid/media/MediaFormat;
    .locals 2

    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    return v0
.end method

.method public h()Ljava/util/Locale;
    .locals 2

    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    const-string v1, "language"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "und"

    :cond_1
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->f:Landroidx/media2/common/MediaItem;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/media2/common/MediaItem;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->f:Landroidx/media2/common/MediaItem;

    invoke-virtual {v2}, Landroidx/media2/common/MediaItem;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->f:Landroidx/media2/common/MediaItem;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    return v0
.end method

.method public i()Landroidx/media2/common/MediaItem;
    .locals 1

    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->f:Landroidx/media2/common/MediaItem;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:I

    return v0
.end method

.method public final k(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z
    .locals 4

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p3, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public final l(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    invoke-virtual {v0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->d:Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    invoke-virtual {v1, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    invoke-virtual {v0, p1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->d:Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    invoke-virtual {v1, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final n(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/media/MediaFormat;)Z
    .locals 0

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public final o(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->d:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->d:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    iget-object v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->d:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-class v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", MediaItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->f:Landroidx/media2/common/MediaItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", TrackType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->c:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const-string v1, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string v1, "SUBTITLE"

    goto :goto_0

    :cond_1
    const-string v1, "AUDIO"

    goto :goto_0

    :cond_2
    const-string v1, "VIDEO"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media2/common/SessionPlayer$TrackInfo;->e:Landroid/media/MediaFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
