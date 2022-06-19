.class public final Lh8/s;
.super Lb9/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb9/d<",
        "Lh8/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:[Lx8/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lh8/r;

    new-instance v1, Lx8/b;

    const-string v2, "id"

    invoke-direct {v1, v0, v2}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lh8/s;->f:Lx8/b;

    .line 2
    new-instance v2, Lx8/b;

    const-string v3, "data"

    invoke-direct {v2, v0, v3}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Lh8/s;->g:Lx8/b;

    const/4 v0, 0x2

    new-array v0, v0, [Lx8/a;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 3
    sput-object v0, Lh8/s;->h:[Lx8/a;

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb9/d;-><init>(Lcom/raizlabs/android/dbflow/config/c;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lc9/f;)Z
    .locals 4

    .line 1
    check-cast p1, Lh8/r;

    const/4 v0, 0x0

    new-array v1, v0, [Lx8/a;

    .line 2
    invoke-static {v1}, Li4/d;->F([Lx8/a;)Lw8/o;

    move-result-object v1

    const-class v2, Lh8/r;

    .line 3
    new-instance v3, Lw8/g;

    invoke-direct {v3, v1, v2}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lw8/n;

    .line 4
    invoke-virtual {p0, p1}, Lh8/s;->t(Lh8/r;)Lw8/l;

    move-result-object p1

    aput-object p1, v1, v0

    .line 5
    new-instance p1, Lw8/r;

    invoke-direct {p1, v3, v1}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 6
    invoke-virtual {p1, p2}, Lw8/d;->g(Lc9/f;)Z

    move-result p1

    return p1
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lh8/r;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lh8/r;

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Lw8/l;
    .locals 0

    .line 1
    check-cast p1, Lh8/r;

    invoke-virtual {p0, p1}, Lh8/s;->t(Lh8/r;)Lw8/l;

    move-result-object p1

    return-object p1
.end method

.method public d(Lc9/g;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Lh8/r;

    const-string v0, "id"

    .line 2
    invoke-virtual {p1, v0}, Lc9/g;->k(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lh8/r;->b:I

    const-string v0, "data"

    .line 3
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lh8/r;->c:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lh8/r;

    invoke-direct {v0}, Lh8/r;-><init>()V

    return-object v0
.end method

.method public f(Landroid/support/v4/media/a;Ljava/lang/Object;I)V
    .locals 3

    .line 1
    check-cast p2, Lh8/r;

    add-int/lit8 v0, p3, 0x1

    .line 2
    iget v1, p2, Lh8/r;->b:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/media/a;->g(IJ)V

    add-int/lit8 p3, p3, 0x2

    .line 3
    iget-object p2, p2, Lh8/r;->c:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    return-void
.end method

.method public h(Landroid/support/v4/media/a;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lh8/r;

    .line 2
    iget v0, p2, Lh8/r;->b:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/support/v4/media/a;->g(IJ)V

    .line 3
    iget-object v0, p2, Lh8/r;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    .line 4
    iget p2, p2, Lh8/r;->b:I

    int-to-long v0, p2

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v4/media/a;->g(IJ)V

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `Main`(`id`,`data`) VALUES (?,?)"

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `Main`(`id` INTEGER, `data` TEXT UNIQUE ON CONFLICT FAIL, PRIMARY KEY(`id`))"

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    const-string v0, "`Main`"

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE `Main` SET `id`=?,`data`=? WHERE `id`=?"

    return-object v0
.end method

.method public final t(Lh8/r;)Lw8/l;
    .locals 2

    .line 1
    new-instance v0, Lw8/l;

    invoke-direct {v0}, Lw8/l;-><init>()V

    .line 2
    sget-object v1, Lh8/s;->f:Lx8/b;

    iget p1, p1, Lh8/r;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p1

    const-string v1, "AND"

    .line 3
    invoke-virtual {v0, v1, p1}, Lw8/l;->k(Ljava/lang/String;Lw8/n;)Lw8/l;

    return-object v0
.end method
