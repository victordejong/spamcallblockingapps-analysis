.class public final Lorg/jsoup/nodes/f;
.super Lorg/jsoup/nodes/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/f$a;,
        Lorg/jsoup/nodes/f$b;
    }
.end annotation


# instance fields
.field public a:Lorg/jsoup/nodes/f$a;

.field public b:Lorg/jsoup/c/g;

.field public c:I

.field public d:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 33
    sget-object v0, Lorg/jsoup/c/f;->a:Lorg/jsoup/c/f;

    const-string v1, "#root"

    invoke-static {v1, v0}, Lorg/jsoup/c/h;->a(Ljava/lang/String;Lorg/jsoup/c/f;)Lorg/jsoup/c/h;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/h;-><init>(Lorg/jsoup/c/h;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lorg/jsoup/nodes/f$a;

    invoke-direct {v0}, Lorg/jsoup/nodes/f$a;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/f;->a:Lorg/jsoup/nodes/f$a;

    .line 22
    sget v0, Lorg/jsoup/nodes/f$b;->a:I

    iput v0, p0, Lorg/jsoup/nodes/f;->c:I

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lorg/jsoup/nodes/f;->d:Z

    .line 34
    iput-object p1, p0, Lorg/jsoup/nodes/f;->i:Ljava/lang/String;

    return-void
.end method

.method private C()Lorg/jsoup/nodes/f;
    .locals 2

    .line 305
    invoke-super {p0}, Lorg/jsoup/nodes/h;->d()Lorg/jsoup/nodes/h;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/f;

    .line 306
    iget-object v1, p0, Lorg/jsoup/nodes/f;->a:Lorg/jsoup/nodes/f$a;

    invoke-virtual {v1}, Lorg/jsoup/nodes/f$a;->b()Lorg/jsoup/nodes/f$a;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/f;->a:Lorg/jsoup/nodes/f$a;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "#document"

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;
    .locals 3

    .line 198
    invoke-virtual {p2}, Lorg/jsoup/nodes/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    check-cast p2, Lorg/jsoup/nodes/h;

    return-object p2

    .line 201
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/m;->f()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 203
    invoke-virtual {p2, v1}, Lorg/jsoup/nodes/m;->a(I)Lorg/jsoup/nodes/m;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/jsoup/nodes/f;->a(Ljava/lang/String;Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final aB_()Ljava/lang/String;
    .locals 2

    .line 2519
    invoke-static {}, Lorg/jsoup/b/c;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2520
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/h;->a(Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 2521
    invoke-static {v0}, Lorg/jsoup/b/c;->a(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 2522
    invoke-static {p0}, Lorg/jsoup/nodes/n;->a(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/f$a;

    move-result-object v1

    .line 3497
    iget-boolean v1, v1, Lorg/jsoup/nodes/f$a;->e:Z

    if-eqz v1, :cond_0

    .line 2522
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final synthetic c()Lorg/jsoup/nodes/m;
    .locals 1

    .line 19
    invoke-direct {p0}, Lorg/jsoup/nodes/f;->C()Lorg/jsoup/nodes/f;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lorg/jsoup/nodes/f;->C()Lorg/jsoup/nodes/f;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lorg/jsoup/nodes/h;
    .locals 1

    .line 19
    invoke-direct {p0}, Lorg/jsoup/nodes/f;->C()Lorg/jsoup/nodes/f;

    move-result-object v0

    return-object v0
.end method
