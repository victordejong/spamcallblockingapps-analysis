.class public final Landroidx/media/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Landroidx/media/b$c;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 2

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1082
    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package shouldn\'t be null"

    .line 191
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Landroidx/media/d$a;

    invoke-direct {v0, p1}, Landroidx/media/d$a;-><init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    iput-object v0, p0, Landroidx/media/b$b;->a:Landroidx/media/b$c;

    return-void

    .line 193
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "packageName should be nonempty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "package shouldn\'t be null"

    .line 157
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 162
    new-instance v0, Landroidx/media/d$a;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media/d$a;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroidx/media/b$b;->a:Landroidx/media/b$c;

    return-void

    .line 166
    :cond_0
    new-instance v0, Landroidx/media/e$a;

    invoke-direct {v0, p1, p2, p3}, Landroidx/media/e$a;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroidx/media/b$b;->a:Landroidx/media/b$c;

    return-void

    .line 159
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "packageName should be nonempty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 239
    :cond_0
    instance-of v0, p1, Landroidx/media/b$b;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 242
    :cond_1
    iget-object v0, p0, Landroidx/media/b$b;->a:Landroidx/media/b$c;

    check-cast p1, Landroidx/media/b$b;

    iget-object p1, p1, Landroidx/media/b$b;->a:Landroidx/media/b$c;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 247
    iget-object v0, p0, Landroidx/media/b$b;->a:Landroidx/media/b$c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
