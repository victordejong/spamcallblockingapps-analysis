.class public Lorg/jsoup/nodes/h;
.super Lorg/jsoup/nodes/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/nodes/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/m;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/h;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Lorg/jsoup/c/h;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/m;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lorg/jsoup/nodes/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/h;->a:Ljava/util/List;

    const-string v0, "\\s+"

    .line 42
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/h;->b:Ljava/util/regex/Pattern;

    const-string v0, "baseUri"

    .line 43
    invoke-static {v0}, Lorg/jsoup/nodes/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/h;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 54
    invoke-static {p1}, Lorg/jsoup/c/h;->a(Ljava/lang/String;)Lorg/jsoup/c/h;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/nodes/h;-><init>(Lorg/jsoup/c/h;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/c/h;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/nodes/h;-><init>(Lorg/jsoup/c/h;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/c/h;Ljava/lang/String;Lorg/jsoup/nodes/b;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lorg/jsoup/nodes/m;-><init>()V

    .line 67
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 68
    sget-object v0, Lorg/jsoup/nodes/h;->a:Ljava/util/List;

    iput-object v0, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    .line 69
    iput-object p3, p0, Lorg/jsoup/nodes/h;->i:Lorg/jsoup/nodes/b;

    .line 70
    iput-object p1, p0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/h;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Lorg/jsoup/nodes/h;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lorg/jsoup/nodes/h;",
            ">(",
            "Lorg/jsoup/nodes/h;",
            "Ljava/util/List<",
            "TE;>;)I"
        }
    .end annotation

    .line 852
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 854
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic a(Lorg/jsoup/nodes/h;)Lorg/jsoup/c/h;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    return-object p0
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1210
    iget-object v0, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/m;

    .line 1211
    instance-of v2, v1, Lorg/jsoup/nodes/p;

    if-eqz v2, :cond_1

    .line 1212
    check-cast v1, Lorg/jsoup/nodes/p;

    .line 1213
    invoke-static {p1, v1}, Lorg/jsoup/nodes/h;->b(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/p;)V

    goto :goto_0

    .line 1214
    :cond_1
    instance-of v2, v1, Lorg/jsoup/nodes/h;

    if-eqz v2, :cond_0

    .line 1215
    check-cast v1, Lorg/jsoup/nodes/h;

    invoke-static {v1, p1}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/h;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/p;)V
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lorg/jsoup/nodes/h;->b(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/p;)V

    return-void
.end method

.method private static a(Lorg/jsoup/nodes/h;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 1230
    iget-object p0, p0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 8038
    iget-object p0, p0, Lorg/jsoup/c/h;->a:Ljava/lang/String;

    const-string v0, "br"

    .line 1230
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/jsoup/nodes/p;->a(Ljava/lang/StringBuilder;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, " "

    .line 1231
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/StringBuilder;Lorg/jsoup/nodes/p;)V
    .locals 2

    .line 7051
    invoke-virtual {p1}, Lorg/jsoup/nodes/p;->k()Ljava/lang/String;

    move-result-object v0

    .line 1223
    iget-object v1, p1, Lorg/jsoup/nodes/p;->g:Lorg/jsoup/nodes/m;

    invoke-static {v1}, Lorg/jsoup/nodes/h;->d(Lorg/jsoup/nodes/m;)Z

    move-result v1

    if-nez v1, :cond_1

    instance-of p1, p1, Lorg/jsoup/nodes/c;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1226
    :cond_0
    invoke-static {p0}, Lorg/jsoup/nodes/p;->a(Ljava/lang/StringBuilder;)Z

    move-result p1

    invoke-static {p0, v0, p1}, Lorg/jsoup/b/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    return-void

    .line 1224
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static d(Lorg/jsoup/nodes/m;)Z
    .locals 4

    .line 1236
    instance-of v0, p0, Lorg/jsoup/nodes/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1237
    check-cast p0, Lorg/jsoup/nodes/h;

    const/4 v0, 0x0

    .line 1240
    :cond_0
    iget-object v2, p0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 8164
    iget-boolean v2, v2, Lorg/jsoup/c/h;->g:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 8241
    :cond_1
    iget-object p0, p0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast p0, Lorg/jsoup/nodes/h;

    add-int/2addr v0, v3

    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    if-nez p0, :cond_0

    :cond_2
    return v1
.end method


# virtual methods
.method public final a(Ljava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1527
    iget-object v0, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1529
    iget-object v2, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/m;

    invoke-virtual {v2, p1}, Lorg/jsoup/nodes/m;->b(Ljava/lang/Appendable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 3038
    iget-object v0, v0, Lorg/jsoup/c/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;
    .locals 1

    .line 492
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    .line 495
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/h;->i(Lorg/jsoup/nodes/m;)V

    .line 496
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->h()Ljava/util/List;

    .line 497
    iget-object v0, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object v0, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3568
    iput v0, p1, Lorg/jsoup/nodes/m;->h:I

    return-object p0
.end method

.method public final synthetic a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/h;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/h;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9497
    iget-boolean v0, p3, Lorg/jsoup/nodes/f$a;->e:Z

    if-eqz v0, :cond_5

    .line 9613
    iget-object v0, p0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 10109
    iget-boolean v0, v0, Lorg/jsoup/c/h;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 10241
    iget-object v0, p0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast v0, Lorg/jsoup/nodes/h;

    if-eqz v0, :cond_0

    .line 11241
    iget-object v0, p0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast v0, Lorg/jsoup/nodes/h;

    .line 12174
    iget-object v0, v0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 13109
    iget-boolean v0, v0, Lorg/jsoup/c/h;->d:Z

    if-nez v0, :cond_2

    .line 13516
    :cond_0
    iget-boolean v0, p3, Lorg/jsoup/nodes/f$a;->f:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    .line 14174
    iget-object v0, p0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 15118
    iget-boolean v0, v0, Lorg/jsoup/c/h;->c:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_3

    .line 15174
    iget-object v0, p0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 16127
    iget-boolean v0, v0, Lorg/jsoup/c/h;->e:Z

    if-nez v0, :cond_3

    .line 16241
    iget-object v0, p0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast v0, Lorg/jsoup/nodes/h;

    .line 17184
    iget-object v0, v0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 18100
    iget-boolean v0, v0, Lorg/jsoup/c/h;->c:Z

    if-eqz v0, :cond_3

    .line 13620
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->B()Lorg/jsoup/nodes/m;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 18516
    iget-boolean v0, p3, Lorg/jsoup/nodes/f$a;->f:Z

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_5

    .line 1480
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    .line 1481
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 1484
    :cond_4
    invoke-static {p1, p2, p3}, Lorg/jsoup/nodes/h;->c(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V

    :cond_5
    const/16 p2, 0x3c

    .line 1487
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p2

    .line 19142
    iget-object v0, p0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 20038
    iget-object v0, v0, Lorg/jsoup/c/h;->a:Ljava/lang/String;

    .line 1487
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 1488
    iget-object p2, p0, Lorg/jsoup/nodes/h;->i:Lorg/jsoup/nodes/b;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p1, p3}, Lorg/jsoup/nodes/b;->a(Ljava/lang/Appendable;Lorg/jsoup/nodes/f$a;)V

    .line 1491
    :cond_6
    iget-object p2, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/16 v0, 0x3e

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    invoke-virtual {p2}, Lorg/jsoup/c/h;->a()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 20477
    iget p2, p3, Lorg/jsoup/nodes/f$a;->h:I

    .line 1492
    sget p3, Lorg/jsoup/nodes/f$a$a;->a:I

    if-ne p2, p3, :cond_7

    iget-object p2, p0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 21127
    iget-boolean p2, p2, Lorg/jsoup/c/h;->e:Z

    if-eqz p2, :cond_7

    .line 1493
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void

    :cond_7
    const-string p2, " />"

    .line 1495
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    .line 1498
    :cond_8
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/h;
    .locals 0

    .line 203
    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/m;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/m;

    return-object p0
.end method

.method public final b(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;
    .locals 2

    .line 521
    invoke-static {p1}, Lorg/jsoup/a/c;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jsoup/nodes/m;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 523
    invoke-virtual {p0, v1, v0}, Lorg/jsoup/nodes/h;->a(I[Lorg/jsoup/nodes/m;)V

    return-object p0
.end method

.method b(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1502
    iget-object v0, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    invoke-virtual {v0}, Lorg/jsoup/c/h;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 21497
    :cond_0
    iget-boolean v0, p3, Lorg/jsoup/nodes/f$a;->e:Z

    if-eqz v0, :cond_2

    .line 1503
    iget-object v0, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 22109
    iget-boolean v0, v0, Lorg/jsoup/c/h;->d:Z

    if-nez v0, :cond_1

    .line 22516
    iget-boolean v0, p3, Lorg/jsoup/nodes/f$a;->f:Z

    if-eqz v0, :cond_2

    .line 1504
    iget-object v0, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/jsoup/nodes/p;

    if-nez v0, :cond_2

    .line 1506
    :cond_1
    invoke-static {p1, p2, p3}, Lorg/jsoup/nodes/h;->c(Ljava/lang/Appendable;ILorg/jsoup/nodes/f$a;)V

    :cond_2
    const-string p2, "</"

    .line 1507
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    .line 23142
    iget-object p2, p0, Lorg/jsoup/nodes/h;->e:Lorg/jsoup/c/h;

    .line 24038
    iget-object p2, p2, Lorg/jsoup/c/h;->a:Ljava/lang/String;

    .line 1507
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const/16 p2, 0x3e

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_3
    return-void
.end method

.method public final c(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;
    .locals 0

    .line 666
    invoke-super {p0, p1}, Lorg/jsoup/nodes/m;->f(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/m;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/h;

    return-object p1
.end method

.method public synthetic c()Lorg/jsoup/nodes/m;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->d()Lorg/jsoup/nodes/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->d()Lorg/jsoup/nodes/h;

    move-result-object v0

    return-object v0
.end method

.method public d()Lorg/jsoup/nodes/h;
    .locals 1

    .line 1548
    invoke-super {p0}, Lorg/jsoup/nodes/m;->c()Lorg/jsoup/nodes/m;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    return-object v0
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 2

    .line 122
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->j()Lorg/jsoup/nodes/b;

    move-result-object v0

    sget-object v1, Lorg/jsoup/nodes/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/jsoup/nodes/b;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    return-void
.end method

.method public final synthetic e()Lorg/jsoup/nodes/m;
    .locals 1

    .line 25698
    iget-object v0, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method protected final synthetic e(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/m;
    .locals 2

    .line 24559
    invoke-super {p0, p1}, Lorg/jsoup/nodes/m;->e(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/m;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/h;

    .line 24560
    iget-object v0, p0, Lorg/jsoup/nodes/h;->i:Lorg/jsoup/nodes/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->c()Lorg/jsoup/nodes/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p1, Lorg/jsoup/nodes/h;->i:Lorg/jsoup/nodes/b;

    .line 24561
    new-instance v0, Lorg/jsoup/nodes/h$a;

    iget-object v1, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/h$a;-><init>(Lorg/jsoup/nodes/h;I)V

    iput-object v0, p1, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    .line 24562
    iget-object v1, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24563
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/h;->f(Ljava/lang/String;)V

    return-object p1
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 13

    .line 1361
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1364
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/h;->i:Lorg/jsoup/nodes/b;

    const-string v2, "class"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1365
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1366
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v2, :cond_7

    if-ge v2, v9, :cond_1

    goto :goto_2

    :cond_1
    if-ne v2, v9, :cond_2

    .line 1374
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v2, :cond_6

    .line 1381
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    const/4 v12, 0x1

    if-eqz v4, :cond_4

    if-eqz v3, :cond_5

    sub-int v3, v11, v10

    if-ne v3, v9, :cond_3

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move v5, v10

    move-object v6, p1

    move v8, v9

    .line 1384
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    return v12

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    move v10, v11

    const/4 v3, 0x1

    :cond_5
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    sub-int/2addr v2, v10

    if-ne v2, v9, :cond_7

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move v5, v10

    move-object v6, p1

    move v8, v9

    .line 1400
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1

    :cond_7
    :goto_2
    return v1
.end method

.method public final f()I
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic f(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/m;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/h;->c(Lorg/jsoup/nodes/m;)Lorg/jsoup/nodes/h;

    move-result-object p1

    return-object p1
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    .line 107
    sget-object v0, Lorg/jsoup/nodes/h;->c:Ljava/lang/String;

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_1

    .line 2113
    invoke-virtual {v1}, Lorg/jsoup/nodes/h;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/jsoup/nodes/h;->i:Lorg/jsoup/nodes/b;

    invoke-virtual {v2, v0}, Lorg/jsoup/nodes/b;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2114
    iget-object v1, v1, Lorg/jsoup/nodes/h;->i:Lorg/jsoup/nodes/b;

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2241
    :cond_0
    iget-object v1, v1, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast v1, Lorg/jsoup/nodes/h;

    goto :goto_0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method protected final h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/m;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    sget-object v1, Lorg/jsoup/nodes/h;->a:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 88
    new-instance v0, Lorg/jsoup/nodes/h$a;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/jsoup/nodes/h$a;-><init>(Lorg/jsoup/nodes/h;I)V

    iput-object v0, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    return-object v0
.end method

.method protected final i()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/jsoup/nodes/h;->i:Lorg/jsoup/nodes/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Lorg/jsoup/nodes/b;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lorg/jsoup/nodes/b;

    invoke-direct {v0}, Lorg/jsoup/nodes/b;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/h;->i:Lorg/jsoup/nodes/b;

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/h;->i:Lorg/jsoup/nodes/b;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .line 193
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/nodes/h;->i:Lorg/jsoup/nodes/b;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final l()Lorg/jsoup/nodes/h;
    .locals 2

    .line 274
    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->n()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    return-object v0
.end method

.method public final m()Lorg/jsoup/select/c;
    .locals 2

    .line 301
    new-instance v0, Lorg/jsoup/select/c;

    invoke-virtual {p0}, Lorg/jsoup/nodes/h;->n()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/select/c;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/h;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lorg/jsoup/nodes/h;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 316
    iget-object v3, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/m;

    .line 317
    instance-of v4, v3, Lorg/jsoup/nodes/h;

    if-eqz v4, :cond_1

    .line 318
    check-cast v3, Lorg/jsoup/nodes/h;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/jsoup/nodes/h;->d:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method final o()V
    .locals 1

    .line 330
    invoke-super {p0}, Lorg/jsoup/nodes/m;->o()V

    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lorg/jsoup/nodes/h;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final p()Lorg/jsoup/nodes/h;
    .locals 3

    .line 796
    iget-object v0, p0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4241
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast v0, Lorg/jsoup/nodes/h;

    .line 797
    invoke-virtual {v0}, Lorg/jsoup/nodes/h;->n()Ljava/util/List;

    move-result-object v0

    .line 798
    invoke-static {p0, v0}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/h;Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    .line 800
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final q()I
    .locals 1

    .line 5241
    iget-object v0, p0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast v0, Lorg/jsoup/nodes/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 6241
    :cond_0
    iget-object v0, p0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast v0, Lorg/jsoup/nodes/h;

    .line 839
    invoke-virtual {v0}, Lorg/jsoup/nodes/h;->n()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/jsoup/nodes/h;->a(Lorg/jsoup/nodes/h;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 2

    .line 1139
    invoke-static {}, Lorg/jsoup/b/c;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1140
    new-instance v1, Lorg/jsoup/nodes/h$1;

    invoke-direct {v1, p0, v0}, Lorg/jsoup/nodes/h$1;-><init>(Lorg/jsoup/nodes/h;Ljava/lang/StringBuilder;)V

    invoke-static {v1, p0}, Lorg/jsoup/select/f;->a(Lorg/jsoup/select/g;Lorg/jsoup/nodes/m;)V

    .line 1165
    invoke-static {v0}, Lorg/jsoup/b/c;->a(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .line 1204
    invoke-static {}, Lorg/jsoup/b/c;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1205
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/h;->a(Ljava/lang/StringBuilder;)V

    .line 1206
    invoke-static {v0}, Lorg/jsoup/b/c;->a(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 4

    .line 1293
    invoke-static {}, Lorg/jsoup/b/c;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1295
    iget-object v1, p0, Lorg/jsoup/nodes/h;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/m;

    .line 1296
    instance-of v3, v2, Lorg/jsoup/nodes/e;

    if-eqz v3, :cond_1

    .line 1297
    check-cast v2, Lorg/jsoup/nodes/e;

    .line 9028
    invoke-virtual {v2}, Lorg/jsoup/nodes/e;->k()Ljava/lang/String;

    move-result-object v2

    .line 1298
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1299
    :cond_1
    instance-of v3, v2, Lorg/jsoup/nodes/d;

    if-eqz v3, :cond_2

    .line 1300
    check-cast v2, Lorg/jsoup/nodes/d;

    .line 9030
    invoke-virtual {v2}, Lorg/jsoup/nodes/d;->k()Ljava/lang/String;

    move-result-object v2

    .line 1301
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1302
    :cond_2
    instance-of v3, v2, Lorg/jsoup/nodes/h;

    if-eqz v3, :cond_3

    .line 1303
    check-cast v2, Lorg/jsoup/nodes/h;

    .line 1304
    invoke-virtual {v2}, Lorg/jsoup/nodes/h;->t()Ljava/lang/String;

    move-result-object v2

    .line 1305
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1306
    :cond_3
    instance-of v3, v2, Lorg/jsoup/nodes/c;

    if-eqz v3, :cond_0

    .line 1309
    check-cast v2, Lorg/jsoup/nodes/c;

    .line 9051
    invoke-virtual {v2}, Lorg/jsoup/nodes/p;->k()Ljava/lang/String;

    move-result-object v2

    .line 1310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1313
    :cond_4
    invoke-static {v0}, Lorg/jsoup/b/c;->a(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lorg/jsoup/nodes/m;
    .locals 1

    .line 24586
    invoke-super {p0}, Lorg/jsoup/nodes/m;->u()Lorg/jsoup/nodes/m;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/h;

    return-object v0
.end method

.method public final bridge synthetic v()Lorg/jsoup/nodes/m;
    .locals 1

    .line 25241
    iget-object v0, p0, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast v0, Lorg/jsoup/nodes/h;

    return-object v0
.end method
