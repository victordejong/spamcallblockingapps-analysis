.class public Le/e/a/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/e/a/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/e/a/m$b;
    }
.end annotation


# instance fields
.field private final a:Le/e/a/t;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Le/e/a/h0/e;->a()Le/e/a/h0/e;

    move-result-object v0

    iget-boolean v0, v0, Le/e/a/h0/e;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Le/e/a/n;

    invoke-direct {v0}, Le/e/a/n;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Le/e/a/o;

    invoke-direct {v0}, Le/e/a/o;-><init>()V

    :goto_0
    iput-object v0, p0, Le/e/a/m;->a:Le/e/a/t;

    return-void
.end method

.method synthetic constructor <init>(Le/e/a/m$a;)V
    .locals 0

    invoke-direct {p0}, Le/e/a/m;-><init>()V

    return-void
.end method

.method public static a()Lcom/liulishuo/filedownloader/services/e$a;
    .locals 1

    invoke-static {}, Le/e/a/m;->b()Le/e/a/m;

    move-result-object v0

    iget-object v0, v0, Le/e/a/m;->a:Le/e/a/t;

    instance-of v0, v0, Le/e/a/n;

    if-eqz v0, :cond_0

    invoke-static {}, Le/e/a/m;->b()Le/e/a/m;

    move-result-object v0

    iget-object v0, v0, Le/e/a/m;->a:Le/e/a/t;

    check-cast v0, Lcom/liulishuo/filedownloader/services/e$a;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b()Le/e/a/m;
    .locals 1

    invoke-static {}, Le/e/a/m$b;->a()Le/e/a/m;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public f0(I)B
    .locals 1

    iget-object v0, p0, Le/e/a/m;->a:Le/e/a/t;

    invoke-interface {v0, p1}, Le/e/a/t;->f0(I)B

    move-result p1

    return p1
.end method

.method public i0(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Le/e/a/m;->a:Le/e/a/t;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Le/e/a/t;->i0(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z

    move-result v1

    return v1
.end method

.method public n0(Z)V
    .locals 1

    iget-object v0, p0, Le/e/a/m;->a:Le/e/a/t;

    invoke-interface {v0, p1}, Le/e/a/t;->n0(Z)V

    return-void
.end method

.method public v0(I)Z
    .locals 1

    iget-object v0, p0, Le/e/a/m;->a:Le/e/a/t;

    invoke-interface {v0, p1}, Le/e/a/t;->v0(I)Z

    move-result p1

    return p1
.end method

.method public w0()Z
    .locals 1

    iget-object v0, p0, Le/e/a/m;->a:Le/e/a/t;

    invoke-interface {v0}, Le/e/a/t;->w0()Z

    move-result v0

    return v0
.end method

.method public x0()Z
    .locals 1

    iget-object v0, p0, Le/e/a/m;->a:Le/e/a/t;

    invoke-interface {v0}, Le/e/a/t;->x0()Z

    move-result v0

    return v0
.end method

.method public y0(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Le/e/a/m;->a:Le/e/a/t;

    invoke-interface {v0, p1}, Le/e/a/t;->y0(Landroid/content/Context;)V

    return-void
.end method
