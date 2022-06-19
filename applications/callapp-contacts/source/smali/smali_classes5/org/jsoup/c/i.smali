.class abstract Lorg/jsoup/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/c/i$i;,
        Lorg/jsoup/c/i$d;,
        Lorg/jsoup/c/i$g;,
        Lorg/jsoup/c/i$f;,
        Lorg/jsoup/c/i$c;,
        Lorg/jsoup/c/i$a;,
        Lorg/jsoup/c/i$b;,
        Lorg/jsoup/c/i$e;,
        Lorg/jsoup/c/i$h;
    }
.end annotation


# instance fields
.field a:Lorg/jsoup/c/i$i;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/c/i$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/jsoup/c/i;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/StringBuilder;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method abstract a()Lorg/jsoup/c/i;
.end method

.method final b()Z
    .locals 2

    .line 365
    iget-object v0, p0, Lorg/jsoup/c/i;->a:Lorg/jsoup/c/i$i;

    sget-object v1, Lorg/jsoup/c/i$i;->Doctype:Lorg/jsoup/c/i$i;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final c()Z
    .locals 2

    .line 373
    iget-object v0, p0, Lorg/jsoup/c/i;->a:Lorg/jsoup/c/i$i;

    sget-object v1, Lorg/jsoup/c/i$i;->StartTag:Lorg/jsoup/c/i$i;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final d()Z
    .locals 2

    .line 381
    iget-object v0, p0, Lorg/jsoup/c/i;->a:Lorg/jsoup/c/i$i;

    sget-object v1, Lorg/jsoup/c/i$i;->EndTag:Lorg/jsoup/c/i$i;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final e()Z
    .locals 2

    .line 389
    iget-object v0, p0, Lorg/jsoup/c/i;->a:Lorg/jsoup/c/i$i;

    sget-object v1, Lorg/jsoup/c/i$i;->Comment:Lorg/jsoup/c/i$i;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final f()Z
    .locals 2

    .line 397
    iget-object v0, p0, Lorg/jsoup/c/i;->a:Lorg/jsoup/c/i$i;

    sget-object v1, Lorg/jsoup/c/i$i;->Character:Lorg/jsoup/c/i$i;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final g()Z
    .locals 2

    .line 409
    iget-object v0, p0, Lorg/jsoup/c/i;->a:Lorg/jsoup/c/i$i;

    sget-object v1, Lorg/jsoup/c/i$i;->EOF:Lorg/jsoup/c/i$i;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
