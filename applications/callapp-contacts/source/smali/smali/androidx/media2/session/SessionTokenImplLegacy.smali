.class final Landroidx/media2/session/SessionTokenImplLegacy;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/SessionToken$SessionTokenImpl;


# instance fields
.field a:Landroid/os/Bundle;

.field b:I

.field c:I

.field d:Landroid/content/ComponentName;

.field e:Ljava/lang/String;

.field f:Landroid/os/Bundle;

.field private g:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/content/ComponentName;I)V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    const-string v0, "serviceComponent shouldn\'t be null"

    .line 82
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 86
    iput p2, p0, Landroidx/media2/session/SessionTokenImplLegacy;->b:I

    const/16 p2, 0x65

    .line 87
    iput p2, p0, Landroidx/media2/session/SessionTokenImplLegacy;->c:I

    .line 88
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/media2/session/SessionTokenImplLegacy;->e:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->d:Landroid/content/ComponentName;

    .line 90
    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->f:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    const-string v0, "token shouldn\'t be null"

    .line 64
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "packageName shouldn\'t be null"

    .line 67
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iput-object p1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 73
    iput p3, p0, Landroidx/media2/session/SessionTokenImplLegacy;->b:I

    .line 74
    iput-object p2, p0, Landroidx/media2/session/SessionTokenImplLegacy;->e:Ljava/lang/String;

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->d:Landroid/content/ComponentName;

    const/16 p1, 0x64

    .line 76
    iput p1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->c:I

    .line 77
    iput-object p4, p0, Landroidx/media2/session/SessionTokenImplLegacy;->f:Landroid/os/Bundle;

    return-void

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "packageName shouldn\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 181
    iget-object p1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 182
    monitor-enter p1

    .line 187
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getSession2Token()Landroidx/versionedparcelable/c;

    move-result-object v1

    .line 192
    iget-object v2, p0, Landroidx/media2/session/SessionTokenImplLegacy;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->setSession2Token(Landroidx/versionedparcelable/c;)V

    .line 197
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->a:Landroid/os/Bundle;

    .line 200
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->setSession2Token(Landroidx/versionedparcelable/c;)V

    .line 201
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 203
    :cond_0
    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->a:Landroid/os/Bundle;

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()I
    .locals 1

    .line 135
    iget v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->b:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->d:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 1

    .line 211
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->a:Landroid/os/Bundle;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromBundle(Landroid/os/Bundle;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 107
    instance-of v0, p1, Landroidx/media2/session/SessionTokenImplLegacy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 110
    :cond_0
    check-cast p1, Landroidx/media2/session/SessionTokenImplLegacy;

    .line 111
    iget v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->c:I

    iget v2, p1, Landroidx/media2/session/SessionTokenImplLegacy;->c:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/16 v2, 0x64

    if-eq v0, v2, :cond_3

    const/16 v2, 0x65

    if-eq v0, v2, :cond_2

    return v1

    .line 118
    :cond_2
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->d:Landroid/content/ComponentName;

    iget-object p1, p1, Landroidx/media2/session/SessionTokenImplLegacy;->d:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 116
    :cond_3
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object p1, p1, Landroidx/media2/session/SessionTokenImplLegacy;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {v0, p1}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Landroid/content/ComponentName;
    .locals 1

    .line 152
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->d:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final g()I
    .locals 2

    .line 158
    iget v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->c:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public final h()Landroid/os/Bundle;
    .locals 1

    .line 170
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 102
    iget v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->d:Landroid/content/ComponentName;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/e/a;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/Object;
    .locals 1

    .line 175
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionToken {legacyToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->g:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
