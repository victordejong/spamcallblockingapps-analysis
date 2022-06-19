.class public final Lu2/c;
.super Lu2/n;
.source "SourceFile"


# instance fields
.field public a:Ll9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/a<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ll9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ll9/a;

.field public d:Ll9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/a<",
            "Lz2/r;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ll9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/a<",
            "Lu2/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lu2/c$a;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Lu2/n;-><init>()V

    .line 2
    sget-object v2, Lu2/g$a;->a:Lu2/g;

    sget-object v3, Lw2/a;->c:Ljava/lang/Object;

    .line 3
    instance-of v3, v2, Lw2/a;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v3, Lw2/a;

    invoke-direct {v3, v2}, Lw2/a;-><init>(Ll9/a;)V

    move-object v2, v3

    .line 5
    :goto_0
    iput-object v2, v0, Lu2/c;->a:Ll9/a;

    .line 6
    new-instance v2, Lw2/b;

    const-string v3, "instance cannot be null"

    .line 7
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-direct {v2, v1}, Lw2/b;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v2, v0, Lu2/c;->b:Ll9/a;

    .line 10
    sget-object v1, Lb3/b$a;->a:Lb3/b;

    sget-object v3, Lb3/c$a;->a:Lb3/c;

    .line 11
    new-instance v4, Landroidx/fragment/app/h0;

    invoke-direct {v4, v2, v1, v3}, Landroidx/fragment/app/h0;-><init>(Ll9/a;Ll9/a;Ll9/a;)V

    .line 12
    new-instance v5, Landroidx/appcompat/widget/l;

    const/4 v6, 0x3

    invoke-direct {v5, v2, v4, v6}, Landroidx/appcompat/widget/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 13
    instance-of v2, v5, Lw2/a;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    new-instance v2, Lw2/a;

    invoke-direct {v2, v5}, Lw2/a;-><init>(Ll9/a;)V

    move-object v5, v2

    .line 15
    :goto_1
    iput-object v5, v0, Lu2/c;->c:Ll9/a;

    .line 16
    iget-object v2, v0, Lu2/c;->b:Ll9/a;

    sget-object v4, Lz2/e$a;->a:Lz2/e;

    sget-object v5, Lz2/f$a;->a:Lz2/f;

    .line 17
    new-instance v8, Lz2/x;

    invoke-direct {v8, v2, v4, v5}, Lz2/x;-><init>(Ll9/a;Ll9/a;Ll9/a;)V

    .line 18
    sget-object v7, Lz2/g$a;->a:Lz2/g;

    .line 19
    new-instance v2, Ly2/s;

    const/4 v9, 0x1

    move-object v4, v2

    move-object v5, v1

    move-object v6, v3

    invoke-direct/range {v4 .. v9}, Ly2/s;-><init>(Ll9/a;Ll9/a;Ll9/a;Ll9/a;I)V

    .line 20
    instance-of v4, v2, Lw2/a;

    if-eqz v4, :cond_2

    goto :goto_2

    .line 21
    :cond_2
    new-instance v4, Lw2/a;

    invoke-direct {v4, v2}, Lw2/a;-><init>(Ll9/a;)V

    move-object v2, v4

    .line 22
    :goto_2
    iput-object v2, v0, Lu2/c;->d:Ll9/a;

    .line 23
    new-instance v4, Lx2/f;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lx2/f;-><init>(Ljava/lang/Object;I)V

    .line 24
    iget-object v11, v0, Lu2/c;->b:Ll9/a;

    .line 25
    new-instance v13, Lx2/g;

    invoke-direct {v13, v11, v2, v4, v3}, Lx2/g;-><init>(Ll9/a;Ll9/a;Ll9/a;Ll9/a;)V

    .line 26
    iget-object v14, v0, Lu2/c;->a:Ll9/a;

    iget-object v12, v0, Lu2/c;->c:Ll9/a;

    .line 27
    new-instance v15, Lx2/d;

    move-object v5, v15

    move-object v6, v14

    move-object v7, v12

    move-object v8, v13

    move-object v9, v2

    move-object v10, v2

    invoke-direct/range {v5 .. v10}, Lx2/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    new-instance v16, Ly2/o;

    const/16 v17, 0x0

    move-object/from16 v4, v16

    move-object v5, v11

    move-object v6, v12

    move-object v7, v2

    move-object v9, v14

    move-object v11, v1

    move/from16 v12, v17

    invoke-direct/range {v4 .. v12}, Ly2/o;-><init>(Ll9/a;Ll9/a;Ll9/a;Ll9/a;Ll9/a;Ll9/a;Ll9/a;I)V

    .line 29
    new-instance v11, Ly2/s;

    const/4 v10, 0x0

    move-object v5, v11

    move-object v6, v14

    move-object v9, v2

    invoke-direct/range {v5 .. v10}, Ly2/s;-><init>(Ll9/a;Ll9/a;Ll9/a;Ll9/a;I)V

    .line 30
    new-instance v2, Lu2/o;

    move-object v4, v2

    move-object v5, v1

    move-object v6, v3

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v9, v11

    invoke-direct/range {v4 .. v9}, Lu2/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    instance-of v1, v2, Lw2/a;

    if-eqz v1, :cond_3

    goto :goto_3

    .line 32
    :cond_3
    new-instance v1, Lw2/a;

    invoke-direct {v1, v2}, Lw2/a;-><init>(Ll9/a;)V

    move-object v2, v1

    .line 33
    :goto_3
    iput-object v2, v0, Lu2/c;->e:Ll9/a;

    return-void
.end method
