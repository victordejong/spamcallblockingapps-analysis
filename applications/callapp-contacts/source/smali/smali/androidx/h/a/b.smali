.class final Landroidx/h/a/b;
.super Landroidx/h/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/h/a/b$c;,
        Landroidx/h/a/b$b;,
        Landroidx/h/a/b$a;
    }
.end annotation


# static fields
.field static a:Z = false


# instance fields
.field private final b:Landroidx/lifecycle/p;

.field private final c:Landroidx/h/a/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroidx/lifecycle/p;Landroidx/lifecycle/ac;)V
    .locals 0

    .line 375
    invoke-direct {p0}, Landroidx/h/a/a;-><init>()V

    .line 376
    iput-object p1, p0, Landroidx/h/a/b;->b:Landroidx/lifecycle/p;

    .line 377
    invoke-static {p2}, Landroidx/h/a/b$c;->a(Landroidx/lifecycle/ac;)Landroidx/h/a/b$c;

    move-result-object p1

    iput-object p1, p0, Landroidx/h/a/b;->c:Landroidx/h/a/b$c;

    return-void
.end method

.method private a(ILandroid/os/Bundle;Landroidx/h/a/a$a;Landroidx/h/b/c;)Landroidx/h/b/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidx/h/a/a$a<",
            "TD;>;",
            "Landroidx/h/b/c<",
            "TD;>;)",
            "Landroidx/h/b/c<",
            "TD;>;"
        }
    .end annotation

    const/4 p2, 0x0

    .line 386
    :try_start_0
    iget-object v0, p0, Landroidx/h/a/b;->c:Landroidx/h/a/b$c;

    const/4 v1, 0x1

    .line 1303
    iput-boolean v1, v0, Landroidx/h/a/b$c;->b:Z

    .line 387
    invoke-interface {p3}, Landroidx/h/a/a$a;->a()Landroidx/h/b/c;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 399
    :cond_1
    :goto_0
    new-instance v1, Landroidx/h/a/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0, p4}, Landroidx/h/a/b$a;-><init>(ILandroid/os/Bundle;Landroidx/h/b/c;Landroidx/h/b/c;)V

    .line 400
    sget-boolean p4, Landroidx/h/a/b;->a:Z

    if-eqz p4, :cond_2

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "  Created new loader "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 401
    :cond_2
    iget-object p4, p0, Landroidx/h/a/b;->c:Landroidx/h/a/b$c;

    .line 1315
    iget-object p4, p4, Landroidx/h/a/b$c;->a:Landroidx/b/h;

    invoke-virtual {p4, p1, v1}, Landroidx/b/h;->b(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    iget-object p1, p0, Landroidx/h/a/b;->c:Landroidx/h/a/b$c;

    .line 2311
    iput-boolean p2, p1, Landroidx/h/a/b$c;->b:Z

    .line 405
    iget-object p1, p0, Landroidx/h/a/b;->b:Landroidx/lifecycle/p;

    invoke-virtual {v1, p1, p3}, Landroidx/h/a/b$a;->a(Landroidx/lifecycle/p;Landroidx/h/a/a$a;)Landroidx/h/b/c;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 403
    iget-object p3, p0, Landroidx/h/a/b;->c:Landroidx/h/a/b$c;

    .line 3311
    iput-boolean p2, p3, Landroidx/h/a/b$c;->b:Z

    .line 403
    throw p1
.end method


# virtual methods
.method public final a(I)Landroidx/h/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/h/b/c<",
            "TD;>;"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Landroidx/h/a/b;->c:Landroidx/h/a/b$c;

    .line 6307
    iget-boolean v0, v0, Landroidx/h/a/b$c;->b:Z

    if-nez v0, :cond_1

    .line 480
    iget-object v0, p0, Landroidx/h/a/b;->c:Landroidx/h/a/b$c;

    invoke-virtual {v0, p1}, Landroidx/h/a/b$c;->a(I)Landroidx/h/a/b$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7070
    iget-object p1, p1, Landroidx/h/a/b$a;->i:Landroidx/h/b/c;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 477
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Called while creating a loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(ILandroidx/h/a/a$a;)Landroidx/h/b/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/h/a/a$a<",
            "TD;>;)",
            "Landroidx/h/b/c<",
            "TD;>;"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Landroidx/h/a/b;->c:Landroidx/h/a/b$c;

    .line 4307
    iget-boolean v0, v0, Landroidx/h/a/b$c;->b:Z

    if-nez v0, :cond_4

    .line 416
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 420
    iget-object v0, p0, Landroidx/h/a/b;->c:Landroidx/h/a/b$c;

    invoke-virtual {v0, p1}, Landroidx/h/a/b$c;->a(I)Landroidx/h/a/b$a;

    move-result-object v0

    .line 422
    sget-boolean v1, Landroidx/h/a/b;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "initLoader in "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": args="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    if-nez v0, :cond_1

    .line 426
    invoke-direct {p0, p1, v2, p2, v2}, Landroidx/h/a/b;->a(ILandroid/os/Bundle;Landroidx/h/a/a$a;Landroidx/h/b/c;)Landroidx/h/b/c;

    move-result-object p1

    return-object p1

    .line 428
    :cond_1
    sget-boolean p1, Landroidx/h/a/b;->a:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "  Re-using existing loader "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    :cond_2
    iget-object p1, p0, Landroidx/h/a/b;->b:Landroidx/lifecycle/p;

    invoke-virtual {v0, p1, p2}, Landroidx/h/a/b$a;->a(Landroidx/lifecycle/p;Landroidx/h/a/a$a;)Landroidx/h/b/c;

    move-result-object p1

    return-object p1

    .line 417
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "initLoader must be called on the main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 414
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called while creating a loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()V
    .locals 4

    .line 486
    iget-object v0, p0, Landroidx/h/a/b;->c:Landroidx/h/a/b$c;

    .line 7339
    iget-object v1, v0, Landroidx/h/a/b$c;->a:Landroidx/b/h;

    invoke-virtual {v1}, Landroidx/b/h;->b()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 7341
    iget-object v3, v0, Landroidx/h/a/b$c;->a:Landroidx/b/h;

    invoke-virtual {v3, v2}, Landroidx/b/h;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/h/a/b$a;

    .line 7342
    invoke-virtual {v3}, Landroidx/h/a/b$a;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 507
    iget-object v0, p0, Landroidx/h/a/b;->c:Landroidx/h/a/b$c;

    .line 7358
    iget-object v1, v0, Landroidx/h/a/b$c;->a:Landroidx/b/h;

    invoke-virtual {v1}, Landroidx/b/h;->b()I

    move-result v1

    if-lez v1, :cond_2

    .line 7359
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Loaders:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 7361
    :goto_0
    iget-object v3, v0, Landroidx/h/a/b$c;->a:Landroidx/b/h;

    invoke-virtual {v3}, Landroidx/b/h;->b()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 7362
    iget-object v3, v0, Landroidx/h/a/b$c;->a:Landroidx/b/h;

    invoke-virtual {v3, v2}, Landroidx/b/h;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/h/a/b$a;

    .line 7363
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v0, Landroidx/h/a/b$c;->a:Landroidx/b/h;

    invoke-virtual {v4, v2}, Landroidx/b/h;->a(I)I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    .line 7364
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/h/a/b$a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8215
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mId="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Landroidx/h/a/b$a;->g:I

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " mArgs="

    .line 8216
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroidx/h/a/b$a;->h:Landroid/os/Bundle;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8217
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mLoader="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroidx/h/a/b$a;->i:Landroidx/h/b/c;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8218
    iget-object v4, v3, Landroidx/h/a/b$a;->i:Landroidx/h/b/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2, p3, p4}, Landroidx/h/b/c;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8219
    iget-object v4, v3, Landroidx/h/a/b$a;->j:Landroidx/h/a/b$b;

    if-eqz v4, :cond_0

    .line 8220
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mCallbacks="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroidx/h/a/b$a;->j:Landroidx/h/a/b$b;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8221
    iget-object v4, v3, Landroidx/h/a/b$a;->j:Landroidx/h/a/b$b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8276
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mDeliveredData="

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v4, Landroidx/h/a/b$b;->a:Z

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 8223
    :cond_0
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mData="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9322
    iget-object v4, v3, Landroidx/lifecycle/LiveData;->e:Ljava/lang/Object;

    .line 9323
    sget-object v5, Landroidx/lifecycle/LiveData;->b:Ljava/lang/Object;

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 8224
    :goto_1
    invoke-static {v4}, Landroidx/h/b/c;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 8223
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8225
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mStarted="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8226
    invoke-virtual {v3}, Landroidx/h/a/b$a;->c()Z

    move-result v3

    .line 8225
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public final b(ILandroidx/h/a/a$a;)Landroidx/h/b/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroidx/h/a/a$a<",
            "TD;>;)",
            "Landroidx/h/b/c<",
            "TD;>;"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Landroidx/h/a/b;->c:Landroidx/h/a/b$c;

    .line 5307
    iget-boolean v0, v0, Landroidx/h/a/b$c;->b:Z

    if-nez v0, :cond_3

    .line 441
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 445
    sget-boolean v0, Landroidx/h/a/b;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "restartLoader in "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": args="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 446
    :cond_0
    iget-object v0, p0, Landroidx/h/a/b;->c:Landroidx/h/a/b$c;

    invoke-virtual {v0, p1}, Landroidx/h/a/b$c;->a(I)Landroidx/h/a/b$a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 449
    invoke-virtual {v0, v2}, Landroidx/h/a/b$a;->a(Z)Landroidx/h/b/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 452
    :goto_0
    invoke-direct {p0, p1, v1, p2, v0}, Landroidx/h/a/b;->a(ILandroid/os/Bundle;Landroidx/h/a/a$a;Landroidx/h/b/c;)Landroidx/h/b/c;

    move-result-object p1

    return-object p1

    .line 442
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "restartLoader must be called on the main thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 439
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called while creating a loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    iget-object v1, p0, Landroidx/h/a/b;->b:Landroidx/lifecycle/p;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 497
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{"

    .line 498
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}}"

    .line 500
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
