.class public Lc/d/a/m;
.super Ljava/lang/Object;
.source "FileDownloadServiceProxy.java"

# interfaces
.implements Lc/d/a/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/m$b;
    }
.end annotation


# instance fields
.field private final a:Lc/d/a/u;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lc/d/a/i0/e;->a()Lc/d/a/i0/e;

    move-result-object v0

    iget-boolean v0, v0, Lc/d/a/i0/e;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Lc/d/a/n;

    invoke-direct {v0}, Lc/d/a/n;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lc/d/a/o;

    invoke-direct {v0}, Lc/d/a/o;-><init>()V

    :goto_0
    iput-object v0, p0, Lc/d/a/m;->a:Lc/d/a/u;

    return-void
.end method

.method synthetic constructor <init>(Lc/d/a/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/d/a/m;-><init>()V

    return-void
.end method

.method public static a()Lcom/liulishuo/filedownloader/services/e$a;
    .locals 1

    .line 1
    invoke-static {}, Lc/d/a/m;->c()Lc/d/a/m;

    move-result-object v0

    iget-object v0, v0, Lc/d/a/m;->a:Lc/d/a/u;

    instance-of v0, v0, Lc/d/a/n;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lc/d/a/m;->c()Lc/d/a/m;

    move-result-object v0

    iget-object v0, v0, Lc/d/a/m;->a:Lc/d/a/u;

    check-cast v0, Lcom/liulishuo/filedownloader/services/e$a;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static c()Lc/d/a/m;
    .locals 1

    .line 1
    invoke-static {}, Lc/d/a/m$b;->a()Lc/d/a/m;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/m;->a:Lc/d/a/u;

    invoke-interface {v0, p1}, Lc/d/a/u;->A0(Z)V

    return-void
.end method

.method public B0(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/m;->a:Lc/d/a/u;

    invoke-interface {v0, p1}, Lc/d/a/u;->B0(Landroid/content/Context;)V

    return-void
.end method

.method public C0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/m;->a:Lc/d/a/u;

    invoke-interface {v0}, Lc/d/a/u;->C0()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/m;->a:Lc/d/a/u;

    invoke-interface {v0}, Lc/d/a/u;->b()Z

    move-result v0

    return v0
.end method

.method public e0(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/m;->a:Lc/d/a/u;

    invoke-interface {v0, p1}, Lc/d/a/u;->e0(I)B

    move-result p1

    return p1
.end method

.method public f0(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z
    .locals 11

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lc/d/a/m;->a:Lc/d/a/u;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lc/d/a/u;->f0(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z

    move-result v1

    return v1
.end method

.method public l0(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/m;->a:Lc/d/a/u;

    invoke-interface {v0, p1}, Lc/d/a/u;->l0(I)Z

    move-result p1

    return p1
.end method
