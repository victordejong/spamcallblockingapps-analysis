.class public final Lh8/x;
.super Lb9/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb9/d<",
        "Lh8/w;",
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

.field public static final h:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:[Lx8/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const-class v0, Lh8/w;

    new-instance v1, Lx8/b;

    const-string v2, "id"

    invoke-direct {v1, v0, v2}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lh8/x;->f:Lx8/b;

    .line 2
    new-instance v2, Lx8/b;

    const-string v3, "number"

    invoke-direct {v2, v0, v3}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Lh8/x;->g:Lx8/b;

    .line 3
    new-instance v3, Lx8/b;

    const-string v4, "name"

    invoke-direct {v3, v0, v4}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lh8/x;->h:Lx8/b;

    .line 4
    new-instance v4, Lx8/b;

    const-string v5, "image_uri"

    invoke-direct {v4, v0, v5}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v4, Lh8/x;->i:Lx8/b;

    .line 5
    new-instance v5, Lx8/b;

    const-string v6, "category"

    invoke-direct {v5, v0, v6}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v5, Lh8/x;->j:Lx8/b;

    const/4 v0, 0x5

    new-array v0, v0, [Lx8/a;

    const/4 v6, 0x0

    aput-object v1, v0, v6

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v5, v0, v1

    .line 6
    sput-object v0, Lh8/x;->k:[Lx8/a;

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
    .locals 5

    .line 1
    check-cast p1, Lh8/w;

    .line 2
    iget v0, p1, Lh8/w;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    new-array v0, v2, [Lx8/a;

    .line 3
    invoke-static {v0}, Li4/d;->F([Lx8/a;)Lw8/o;

    move-result-object v0

    const-class v3, Lh8/w;

    .line 4
    new-instance v4, Lw8/g;

    invoke-direct {v4, v0, v3}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v0, v1, [Lw8/n;

    .line 5
    invoke-virtual {p0, p1}, Lh8/x;->u(Lh8/w;)Lw8/l;

    move-result-object p1

    aput-object p1, v0, v2

    .line 6
    new-instance p1, Lw8/r;

    invoke-direct {p1, v4, v0}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 7
    invoke-virtual {p1, p2}, Lw8/d;->g(Lc9/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lh8/w;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lh8/w;

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Lw8/l;
    .locals 0

    .line 1
    check-cast p1, Lh8/w;

    invoke-virtual {p0, p1}, Lh8/x;->u(Lh8/w;)Lw8/l;

    move-result-object p1

    return-object p1
.end method

.method public d(Lc9/g;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Lh8/w;

    const-string v0, "id"

    .line 2
    invoke-virtual {p1, v0}, Lc9/g;->k(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lh8/w;->b:I

    const-string v0, "number"

    .line 3
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/w;->c:Ljava/lang/String;

    const-string v0, "name"

    .line 4
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/w;->d:Ljava/lang/String;

    const-string v0, "image_uri"

    .line 5
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/w;->e:Ljava/lang/String;

    const-string v0, "category"

    .line 6
    invoke-virtual {p1, v0}, Lc9/g;->k(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lh8/w;->f:I

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lh8/w;

    invoke-direct {v0}, Lh8/w;-><init>()V

    return-object v0
.end method

.method public bridge synthetic f(Landroid/support/v4/media/a;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lh8/w;

    invoke-virtual {p0, p1, p2, p3}, Lh8/x;->t(Landroid/support/v4/media/a;Lh8/w;I)V

    return-void
.end method

.method public g(Landroid/support/v4/media/a;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lh8/w;

    .line 2
    iget v0, p2, Lh8/w;->b:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/support/v4/media/a;->g(IJ)V

    .line 3
    invoke-virtual {p0, p1, p2, v2}, Lh8/x;->t(Landroid/support/v4/media/a;Lh8/w;I)V

    return-void
.end method

.method public h(Landroid/support/v4/media/a;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lh8/w;

    .line 2
    iget v0, p2, Lh8/w;->b:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/support/v4/media/a;->g(IJ)V

    .line 3
    iget-object v0, p2, Lh8/w;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    .line 4
    iget-object v0, p2, Lh8/w;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    .line 5
    iget-object v0, p2, Lh8/w;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    .line 6
    iget v0, p2, Lh8/w;->f:I

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Landroid/support/v4/media/a;->g(IJ)V

    .line 7
    iget p2, p2, Lh8/w;->b:I

    int-to-long v0, p2

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v4/media/a;->g(IJ)V

    return-void
.end method

.method public final i()La9/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La9/b<",
            "Lh8/w;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, La9/a;

    invoke-direct {v0}, La9/a;-><init>()V

    return-object v0
.end method

.method public j(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 0

    .line 1
    check-cast p1, Lh8/w;

    .line 2
    iget p1, p1, Lh8/w;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `WL`(`id`,`number`,`name`,`image_uri`,`category`) VALUES (?,?,?,?,?)"

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `WL`(`id` INTEGER PRIMARY KEY AUTOINCREMENT, `number` TEXT, `name` TEXT, `image_uri` TEXT, `category` INTEGER)"

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `WL`(`number`,`name`,`image_uri`,`category`) VALUES (?,?,?,?)"

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    const-string v0, "`WL`"

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE `WL` SET `id`=?,`number`=?,`name`=?,`image_uri`=?,`category`=? WHERE `id`=?"

    return-object v0
.end method

.method public s(Ljava/lang/Object;Ljava/lang/Number;)V
    .locals 0

    .line 1
    check-cast p1, Lh8/w;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iput p2, p1, Lh8/w;->b:I

    return-void
.end method

.method public final t(Landroid/support/v4/media/a;Lh8/w;I)V
    .locals 2

    add-int/lit8 v0, p3, 0x1

    .line 1
    iget-object v1, p2, Lh8/w;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 2
    iget-object v1, p2, Lh8/w;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 3
    iget-object v1, p2, Lh8/w;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 p3, p3, 0x4

    .line 4
    iget p2, p2, Lh8/w;->f:I

    int-to-long v0, p2

    invoke-virtual {p1, p3, v0, v1}, Landroid/support/v4/media/a;->g(IJ)V

    return-void
.end method

.method public final u(Lh8/w;)Lw8/l;
    .locals 2

    .line 1
    new-instance v0, Lw8/l;

    invoke-direct {v0}, Lw8/l;-><init>()V

    .line 2
    sget-object v1, Lh8/x;->f:Lx8/b;

    iget p1, p1, Lh8/w;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p1

    const-string v1, "AND"

    .line 3
    invoke-virtual {v0, v1, p1}, Lw8/l;->k(Ljava/lang/String;Lw8/n;)Lw8/l;

    return-object v0
.end method
