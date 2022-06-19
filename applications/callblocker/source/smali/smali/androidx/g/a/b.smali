.class Landroidx/g/a/b;
.super Landroidx/g/a/a;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/g/a/b$c;,
        Landroidx/g/a/b$b;,
        Landroidx/g/a/b$a;
    }
.end annotation


# static fields
.field static a:Z


# instance fields
.field private final b:Landroidx/lifecycle/h;

.field private final c:Landroidx/g/a/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Landroidx/g/a/b;->a:Z

    return-void
.end method

.method constructor <init>(Landroidx/lifecycle/h;Landroidx/lifecycle/u;)V
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0}, Landroidx/g/a/a;-><init>()V

    .line 372
    iput-object p1, p0, Landroidx/g/a/b;->b:Landroidx/lifecycle/h;

    .line 373
    invoke-static {p2}, Landroidx/g/a/b$c;->a(Landroidx/lifecycle/u;)Landroidx/g/a/b$c;

    move-result-object v0

    iput-object v0, p0, Landroidx/g/a/b;->c:Landroidx/g/a/b$c;

    .line 374
    return-void
.end method

.method private a(ILandroid/os/Bundle;Landroidx/g/a/a$a;Landroidx/g/b/b;)Landroidx/g/b/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidx/g/a/a$a",
            "<TD;>;",
            "Landroidx/g/b/b",
            "<TD;>;)",
            "Landroidx/g/b/b",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 382
    :try_start_0
    iget-object v0, p0, Landroidx/g/a/b;->c:Landroidx/g/a/b$c;

    invoke-virtual {v0}, Landroidx/g/a/b$c;->b()V

    .line 383
    invoke-interface {p3, p1, p2}, Landroidx/g/a/a$a;->a(ILandroid/os/Bundle;)Landroidx/g/b/b;

    move-result-object v0

    .line 384
    if-nez v0, :cond_0

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Object returned from onCreateLoader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/g/a/b;->c:Landroidx/g/a/b$c;

    invoke-virtual {v1}, Landroidx/g/a/b$c;->e()V

    throw v0

    .line 388
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    :cond_1
    new-instance v1, Landroidx/g/a/b$a;

    invoke-direct {v1, p1, p2, v0, p4}, Landroidx/g/a/b$a;-><init>(ILandroid/os/Bundle;Landroidx/g/b/b;Landroidx/g/b/b;)V

    .line 395
    sget-boolean v0, Landroidx/g/a/b;->a:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Created new loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_2
    iget-object v0, p0, Landroidx/g/a/b;->c:Landroidx/g/a/b$c;

    invoke-virtual {v0, p1, v1}, Landroidx/g/a/b$c;->a(ILandroidx/g/a/b$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    iget-object v0, p0, Landroidx/g/a/b;->c:Landroidx/g/a/b$c;

    invoke-virtual {v0}, Landroidx/g/a/b$c;->e()V

    .line 400
    iget-object v0, p0, Landroidx/g/a/b;->b:Landroidx/lifecycle/h;

    invoke-virtual {v1, v0, p3}, Landroidx/g/a/b$a;->a(Landroidx/lifecycle/h;Landroidx/g/a/a$a;)Landroidx/g/b/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;Landroidx/g/a/a$a;)Landroidx/g/b/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidx/g/a/a$a",
            "<TD;>;)",
            "Landroidx/g/b/b",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Landroidx/g/a/b;->c:Landroidx/g/a/b$c;

    invoke-virtual {v0}, Landroidx/g/a/b$c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 412
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "initLoader must be called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_1
    iget-object v0, p0, Landroidx/g/a/b;->c:Landroidx/g/a/b$c;

    invoke-virtual {v0, p1}, Landroidx/g/a/b$c;->a(I)Landroidx/g/a/b$a;

    move-result-object v0

    .line 417
    sget-boolean v1, Landroidx/g/a/b;->a:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initLoader in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": args="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_2
    if-nez v0, :cond_3

    .line 421
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/g/a/b;->a(ILandroid/os/Bundle;Landroidx/g/a/a$a;Landroidx/g/b/b;)Landroidx/g/b/b;

    move-result-object v0

    .line 424
    :goto_0
    return-object v0

    .line 423
    :cond_3
    sget-boolean v1, Landroidx/g/a/b;->a:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  Re-using existing loader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_4
    iget-object v1, p0, Landroidx/g/a/b;->b:Landroidx/lifecycle/h;

    invoke-virtual {v0, v1, p3}, Landroidx/g/a/b$a;->a(Landroidx/lifecycle/h;Landroidx/g/a/a$a;)Landroidx/g/b/b;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Landroidx/g/a/b;->c:Landroidx/g/a/b$c;

    invoke-virtual {v0}, Landroidx/g/a/b$c;->f()V

    .line 482
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Landroidx/g/a/b;->c:Landroidx/g/a/b$c;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/g/a/b$c;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 487
    const-string/jumbo v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const-string/jumbo v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    iget-object v1, p0, Landroidx/g/a/b;->b:Landroidx/lifecycle/h;

    invoke-static {v1, v0}, Landroidx/core/g/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 491
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
