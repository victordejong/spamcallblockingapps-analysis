.class public final Lh8/h;
.super Lb9/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb9/d<",
        "Lh8/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final g:Lx8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/b<",
            "Ljava/lang/Integer;",
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

.field public static final j:Lx8/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx8/c<",
            "Ljava/lang/Long;",
            "Ljava/sql/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:[Lx8/a;


# instance fields
.field public final f:Ls8/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, Lh8/g;

    new-instance v1, Lx8/b;

    const-string v2, "id"

    invoke-direct {v1, v0, v2}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lh8/h;->g:Lx8/b;

    .line 2
    new-instance v2, Lx8/b;

    const-string v3, "data"

    invoke-direct {v2, v0, v3}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Lh8/h;->h:Lx8/b;

    .line 3
    new-instance v3, Lx8/b;

    const-string v4, "mid"

    invoke-direct {v3, v0, v4}, Lx8/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v3, Lh8/h;->i:Lx8/b;

    .line 4
    new-instance v4, Lx8/c;

    new-instance v5, Lh8/h$a;

    invoke-direct {v5}, Lh8/h$a;-><init>()V

    const-string v6, "cached_date"

    const/4 v7, 0x1

    invoke-direct {v4, v0, v6, v7, v5}, Lx8/c;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLx8/c$a;)V

    sput-object v4, Lh8/h;->j:Lx8/c;

    const/4 v0, 0x4

    new-array v0, v0, [Lx8/a;

    const/4 v5, 0x0

    aput-object v1, v0, v5

    aput-object v2, v0, v7

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    .line 5
    sput-object v0, Lh8/h;->k:[Lx8/a;

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/d;Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lb9/d;-><init>(Lcom/raizlabs/android/dbflow/config/c;)V

    .line 2
    const-class p2, Ljava/sql/Date;

    invoke-virtual {p1, p2}, Lcom/raizlabs/android/dbflow/config/d;->getTypeConverterForClass(Ljava/lang/Class;)Ls8/g;

    move-result-object p1

    check-cast p1, Ls8/f;

    iput-object p1, p0, Lh8/h;->f:Ls8/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lc9/f;)Z
    .locals 5

    .line 1
    check-cast p1, Lh8/g;

    .line 2
    iget v0, p1, Lh8/g;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    new-array v0, v2, [Lx8/a;

    .line 3
    invoke-static {v0}, Li4/d;->F([Lx8/a;)Lw8/o;

    move-result-object v0

    const-class v3, Lh8/g;

    .line 4
    new-instance v4, Lw8/g;

    invoke-direct {v4, v0, v3}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v0, v1, [Lw8/n;

    .line 5
    invoke-virtual {p0, p1}, Lh8/h;->u(Lh8/g;)Lw8/l;

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
            "Lh8/g;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lh8/g;

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Lw8/l;
    .locals 0

    .line 1
    check-cast p1, Lh8/g;

    invoke-virtual {p0, p1}, Lh8/h;->u(Lh8/g;)Lw8/l;

    move-result-object p1

    return-object p1
.end method

.method public d(Lc9/g;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lh8/g;

    const-string v0, "id"

    .line 2
    invoke-virtual {p1, v0}, Lc9/g;->k(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lh8/g;->b:I

    const-string v0, "data"

    .line 3
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/g;->c:Ljava/lang/String;

    const-string v0, "mid"

    .line 4
    invoke-virtual {p1, v0}, Lc9/g;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lh8/g;->d:Ljava/lang/String;

    const-string v0, "cached_date"

    .line 5
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    iget-object v1, p0, Lh8/h;->f:Ls8/f;

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ls8/f;->c(Ljava/lang/Long;)Ljava/sql/Date;

    move-result-object p1

    iput-object p1, p2, Lh8/g;->e:Ljava/sql/Date;

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lh8/h;->f:Ls8/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ls8/f;->c(Ljava/lang/Long;)Ljava/sql/Date;

    move-result-object p1

    iput-object p1, p2, Lh8/g;->e:Ljava/sql/Date;

    :goto_0
    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lh8/g;

    invoke-direct {v0}, Lh8/g;-><init>()V

    return-object v0
.end method

.method public bridge synthetic f(Landroid/support/v4/media/a;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lh8/g;

    invoke-virtual {p0, p1, p2, p3}, Lh8/h;->t(Landroid/support/v4/media/a;Lh8/g;I)V

    return-void
.end method

.method public g(Landroid/support/v4/media/a;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lh8/g;

    .line 2
    iget v0, p2, Lh8/g;->b:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/support/v4/media/a;->g(IJ)V

    .line 3
    invoke-virtual {p0, p1, p2, v2}, Lh8/h;->t(Landroid/support/v4/media/a;Lh8/g;I)V

    return-void
.end method

.method public h(Landroid/support/v4/media/a;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lh8/g;

    .line 2
    iget v0, p2, Lh8/g;->b:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/support/v4/media/a;->g(IJ)V

    .line 3
    iget-object v0, p2, Lh8/g;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    .line 4
    iget-object v0, p2, Lh8/g;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    .line 5
    iget-object v0, p2, Lh8/g;->e:Ljava/sql/Date;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lh8/h;->f:Ls8/f;

    invoke-virtual {v1, v0}, Ls8/f;->b(Ljava/sql/Date;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/support/v4/media/a;->i(ILjava/lang/Number;)V

    const/4 v0, 0x5

    .line 7
    iget p2, p2, Lh8/g;->b:I

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/media/a;->g(IJ)V

    return-void
.end method

.method public final i()La9/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La9/b<",
            "Lh8/g;",
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
    check-cast p1, Lh8/g;

    .line 2
    iget p1, p1, Lh8/g;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `Cache`(`id`,`data`,`mid`,`cached_date`) VALUES (?,?,?,?)"

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `Cache`(`id` INTEGER PRIMARY KEY AUTOINCREMENT, `data` TEXT UNIQUE ON CONFLICT FAIL, `mid` TEXT UNIQUE ON CONFLICT FAIL, `cached_date` INTEGER)"

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT INTO `Cache`(`data`,`mid`,`cached_date`) VALUES (?,?,?)"

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    const-string v0, "`Cache`"

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE `Cache` SET `id`=?,`data`=?,`mid`=?,`cached_date`=? WHERE `id`=?"

    return-object v0
.end method

.method public s(Ljava/lang/Object;Ljava/lang/Number;)V
    .locals 0

    .line 1
    check-cast p1, Lh8/g;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iput p2, p1, Lh8/g;->b:I

    return-void
.end method

.method public final t(Landroid/support/v4/media/a;Lh8/g;I)V
    .locals 2

    add-int/lit8 v0, p3, 0x1

    .line 1
    iget-object v1, p2, Lh8/g;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 2
    iget-object v1, p2, Lh8/g;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/a;->k(ILjava/lang/String;)V

    .line 3
    iget-object p2, p2, Lh8/g;->e:Ljava/sql/Date;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lh8/h;->f:Ls8/f;

    invoke-virtual {v0, p2}, Ls8/f;->b(Ljava/sql/Date;)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    add-int/lit8 p3, p3, 0x3

    .line 4
    invoke-virtual {p1, p3, p2}, Landroid/support/v4/media/a;->i(ILjava/lang/Number;)V

    return-void
.end method

.method public final u(Lh8/g;)Lw8/l;
    .locals 2

    .line 1
    new-instance v0, Lw8/l;

    invoke-direct {v0}, Lw8/l;-><init>()V

    .line 2
    sget-object v1, Lh8/h;->g:Lx8/b;

    iget p1, p1, Lh8/g;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p1

    const-string v1, "AND"

    .line 3
    invoke-virtual {v0, v1, p1}, Lw8/l;->k(Ljava/lang/String;Lw8/n;)Lw8/l;

    return-object v0
.end method
