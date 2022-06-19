.class public Ly8/a;
.super Ly8/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ly8/b;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field public b:Lv8/b;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv8/b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ly8/b;-><init>()V

    .line 2
    iput-object p1, p0, Ly8/a;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Ly8/a;->b:Lv8/b;

    .line 2
    iput-object v0, p0, Ly8/a;->c:Ljava/util/List;

    .line 3
    iput-object v0, p0, Ly8/a;->d:Ljava/util/List;

    return-void
.end method

.method public final b(Lc9/f;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ly8/a;->b:Lv8/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lv8/b;

    invoke-direct {v0}, Lv8/b;-><init>()V

    .line 3
    iget-object v1, v0, Lv8/b;->a:Ljava/lang/StringBuilder;

    const-string v2, "ALTER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Lv8/b;->c()Lv8/b;

    .line 5
    iget-object v1, v0, Lv8/b;->a:Ljava/lang/StringBuilder;

    const-string v2, "TABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Lv8/b;->c()Lv8/b;

    .line 7
    iput-object v0, p0, Ly8/a;->b:Lv8/b;

    .line 8
    :cond_0
    iget-object v0, p0, Ly8/a;->b:Lv8/b;

    .line 9
    invoke-virtual {v0}, Lv8/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Ly8/a;->a:Ljava/lang/Class;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->i(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v2, p0, Ly8/a;->c:Ljava/util/List;

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    new-array v3, v2, [Lx8/a;

    .line 12
    new-instance v4, Lw8/o;

    invoke-direct {v4, v3}, Lw8/o;-><init>([Lx8/a;)V

    .line 13
    iget-object v3, p0, Ly8/a;->a:Ljava/lang/Class;

    .line 14
    new-instance v5, Lw8/g;

    invoke-direct {v5, v4, v3}, Lw8/g;-><init>(Lv8/a;Ljava/lang/Class;)V

    new-array v3, v2, [Lw8/n;

    .line 15
    new-instance v4, Lw8/r;

    invoke-direct {v4, v5, v3}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 16
    iput v2, v4, Lw8/r;->h:I

    .line 17
    invoke-virtual {v4, p1}, Lw8/r;->j(Lc9/f;)Lc9/g;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 18
    :try_start_0
    new-instance v4, Lv8/b;

    invoke-direct {v4, v0}, Lv8/b;-><init>(Ljava/lang/Object;)V

    .line 19
    iget-object v0, v4, Lv8/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v4}, Lv8/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 21
    :goto_0
    iget-object v1, p0, Ly8/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 22
    iget-object v1, p0, Ly8/a;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv8/b;

    .line 23
    iget-object v4, p0, Ly8/a;->d:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lv8/b;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-virtual {v3, v4}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ADD COLUMN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lv8/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, p1

    check-cast v4, Lc9/a;

    .line 26
    iget-object v4, v4, Lc9/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {v3}, Landroid/database/CursorWrapper;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v3}, Landroid/database/CursorWrapper;->close()V

    .line 28
    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public d(Lv8/c;Ljava/lang/String;)Ly8/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv8/c;",
            "Ljava/lang/String;",
            ")",
            "Ly8/a<",
            "TTModel;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly8/a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly8/a;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ly8/a;->d:Ljava/util/List;

    .line 4
    :cond_0
    new-instance v0, Lv8/b;

    invoke-direct {v0}, Lv8/b;-><init>()V

    .line 5
    invoke-static {p2}, Lv8/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, v0, Lv8/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Lv8/b;->c()Lv8/b;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object v1, v0, Lv8/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    iget-object p1, p0, Ly8/a;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Ly8/a;->d:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
