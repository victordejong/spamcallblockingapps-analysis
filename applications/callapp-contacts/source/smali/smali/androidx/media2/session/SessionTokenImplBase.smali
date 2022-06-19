.class final Landroidx/media2/session/SessionTokenImplBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/SessionToken$SessionTokenImpl;


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Landroid/os/IBinder;

.field f:Landroid/content/ComponentName;

.field g:Landroid/os/Bundle;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(IILjava/lang/String;Landroidx/media2/session/c;Landroid/os/Bundle;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Landroidx/media2/session/SessionTokenImplBase;->a:I

    .line 73
    iput p2, p0, Landroidx/media2/session/SessionTokenImplBase;->b:I

    .line 74
    iput-object p3, p0, Landroidx/media2/session/SessionTokenImplBase;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Landroidx/media2/session/SessionTokenImplBase;->d:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Landroidx/media2/session/SessionTokenImplBase;->f:Landroid/content/ComponentName;

    .line 77
    invoke-interface {p4}, Landroidx/media2/session/c;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/SessionTokenImplBase;->e:Landroid/os/IBinder;

    .line 78
    iput-object p5, p0, Landroidx/media2/session/SessionTokenImplBase;->g:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/content/ComponentName;II)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "serviceComponent shouldn\'t be null"

    .line 59
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    iput-object p1, p0, Landroidx/media2/session/SessionTokenImplBase;->f:Landroid/content/ComponentName;

    .line 62
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/SessionTokenImplBase;->c:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/session/SessionTokenImplBase;->d:Ljava/lang/String;

    .line 64
    iput p2, p0, Landroidx/media2/session/SessionTokenImplBase;->a:I

    .line 65
    iput p3, p0, Landroidx/media2/session/SessionTokenImplBase;->b:I

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Landroidx/media2/session/SessionTokenImplBase;->e:Landroid/os/IBinder;

    .line 67
    iput-object p1, p0, Landroidx/media2/session/SessionTokenImplBase;->g:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    .line 120
    iget v0, p0, Landroidx/media2/session/SessionTokenImplBase;->a:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplBase;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplBase;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 95
    instance-of v0, p1, Landroidx/media2/session/SessionTokenImplBase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 98
    :cond_0
    check-cast p1, Landroidx/media2/session/SessionTokenImplBase;

    .line 99
    iget v0, p0, Landroidx/media2/session/SessionTokenImplBase;->a:I

    iget v2, p1, Landroidx/media2/session/SessionTokenImplBase;->a:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplBase;->c:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media2/session/SessionTokenImplBase;->c:Ljava/lang/String;

    .line 100
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplBase;->d:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media2/session/SessionTokenImplBase;->d:Ljava/lang/String;

    .line 101
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media2/session/SessionTokenImplBase;->b:I

    iget v2, p1, Landroidx/media2/session/SessionTokenImplBase;->b:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplBase;->e:Landroid/os/IBinder;

    iget-object p1, p1, Landroidx/media2/session/SessionTokenImplBase;->e:Landroid/os/IBinder;

    .line 103
    invoke-static {v0, p1}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final f()Landroid/content/ComponentName;
    .locals 1

    .line 142
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplBase;->f:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .line 148
    iget v0, p0, Landroidx/media2/session/SessionTokenImplBase;->b:I

    return v0
.end method

.method public final h()Landroid/os/Bundle;
    .locals 1

    .line 154
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplBase;->g:Landroid/os/Bundle;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 90
    iget v1, p0, Landroidx/media2/session/SessionTokenImplBase;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media2/session/SessionTokenImplBase;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplBase;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplBase;->d:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/e/a;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/Object;
    .locals 1

    .line 159
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplBase;->e:Landroid/os/IBinder;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionToken {pkg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplBase;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/session/SessionTokenImplBase;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplBase;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IMediaSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplBase;->e:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplBase;->g:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
