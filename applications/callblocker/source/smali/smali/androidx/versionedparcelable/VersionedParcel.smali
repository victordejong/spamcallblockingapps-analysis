.class public abstract Landroidx/versionedparcelable/VersionedParcel;
.super Ljava/lang/Object;
.source "VersionedParcel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/versionedparcelable/VersionedParcel$ParcelException;
    }
.end annotation


# instance fields
.field protected final a:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Landroidx/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/b/a;Landroidx/b/a;Landroidx/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/b/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroidx/versionedparcelable/VersionedParcel;->a:Landroidx/b/a;

    .line 88
    iput-object p2, p0, Landroidx/versionedparcelable/VersionedParcel;->b:Landroidx/b/a;

    .line 89
    iput-object p3, p0, Landroidx/versionedparcelable/VersionedParcel;->c:Landroidx/b/a;

    .line 90
    return-void
.end method

.method private a(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    .line 1616
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->b:Landroidx/b/a;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 1617
    if-nez v0, :cond_0

    .line 1618
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 1619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1620
    const-string/jumbo v1, "write"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroidx/versionedparcelable/VersionedParcel;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1621
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcel;->b:Landroidx/b/a;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1623
    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/versionedparcelable/c;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1628
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->c:Landroidx/b/a;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1629
    if-nez v0, :cond_0

    .line 1630
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1631
    const-string/jumbo v1, "%s.%sParcelizer"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1632
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v4, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1633
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcel;->c:Landroidx/b/a;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1604
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->a:Landroidx/b/a;

    invoke-virtual {v0, p1}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 1605
    if-nez v0, :cond_0

    .line 1606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1607
    const-class v0, Landroidx/versionedparcelable/VersionedParcel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1608
    const-string/jumbo v1, "read"

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroidx/versionedparcelable/VersionedParcel;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1609
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcel;->a:Landroidx/b/a;

    invoke-virtual {v1, p1, v0}, Landroidx/b/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    :cond_0
    return-object v0
.end method

.method private b(Landroidx/versionedparcelable/c;)V
    .locals 4

    .prologue
    .line 1040
    .line 1042
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->b(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1047
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(Ljava/lang/String;)V

    .line 1048
    return-void

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not have a Parcelizer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Landroidx/versionedparcelable/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/c;",
            ">(",
            "Ljava/lang/String;",
            "Landroidx/versionedparcelable/VersionedParcel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1565
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->b(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1566
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/c;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v0

    .line 1567
    :catch_0
    move-exception v0

    .line 1568
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "VersionedParcel encountered IllegalAccessException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1569
    :catch_1
    move-exception v0

    .line 1570
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 1571
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 1573
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "VersionedParcel encountered InvocationTargetException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1574
    :catch_2
    move-exception v0

    .line 1575
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "VersionedParcel encountered NoSuchMethodException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1576
    :catch_3
    move-exception v0

    .line 1577
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "VersionedParcel encountered ClassNotFoundException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract a(I)V
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 334
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->c(I)V

    .line 335
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->a(I)V

    .line 336
    return-void
.end method

.method protected abstract a(Landroid/os/Parcelable;)V
.end method

.method public a(Landroid/os/Parcelable;I)V
    .locals 0

    .prologue
    .line 391
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->c(I)V

    .line 392
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroid/os/Parcelable;)V

    .line 393
    return-void
.end method

.method protected a(Landroidx/versionedparcelable/c;)V
    .locals 1

    .prologue
    .line 1028
    if-nez p1, :cond_0

    .line 1029
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(Ljava/lang/String;)V

    .line 1037
    :goto_0
    return-void

    .line 1032
    :cond_0
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->b(Landroidx/versionedparcelable/c;)V

    .line 1034
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->c()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v0

    .line 1035
    invoke-virtual {p0, p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroidx/versionedparcelable/c;Landroidx/versionedparcelable/VersionedParcel;)V

    .line 1036
    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcel;->b()V

    goto :goto_0
.end method

.method public a(Landroidx/versionedparcelable/c;I)V
    .locals 0

    .prologue
    .line 1021
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->c(I)V

    .line 1022
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->a(Landroidx/versionedparcelable/c;)V

    .line 1023
    return-void
.end method

.method protected a(Landroidx/versionedparcelable/c;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/c;",
            ">(TT;",
            "Landroidx/versionedparcelable/VersionedParcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1586
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->a(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1587
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1600
    return-void

    .line 1588
    :catch_0
    move-exception v0

    .line 1589
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "VersionedParcel encountered IllegalAccessException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1590
    :catch_1
    move-exception v0

    .line 1591
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 1592
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 1594
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "VersionedParcel encountered InvocationTargetException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1595
    :catch_2
    move-exception v0

    .line 1596
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "VersionedParcel encountered NoSuchMethodException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1597
    :catch_3
    move-exception v0

    .line 1598
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "VersionedParcel encountered ClassNotFoundException"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract a(Ljava/lang/CharSequence;)V
.end method

.method public a(Ljava/lang/CharSequence;I)V
    .locals 0

    .prologue
    .line 325
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->c(I)V

    .line 326
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->a(Ljava/lang/CharSequence;)V

    .line 327
    return-void
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 370
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->c(I)V

    .line 371
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->a(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method protected abstract a(Z)V
.end method

.method public a(ZI)V
    .locals 0

    .prologue
    .line 294
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->c(I)V

    .line 295
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->a(Z)V

    .line 296
    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method protected abstract a([B)V
.end method

.method public a([BI)V
    .locals 0

    .prologue
    .line 304
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->c(I)V

    .line 305
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->a([B)V

    .line 306
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public b(II)I
    .locals 1

    .prologue
    .line 409
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->d()I

    move-result p1

    goto :goto_0
.end method

.method public b(Landroid/os/Parcelable;I)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(TT;I)TT;"
        }
    .end annotation

    .prologue
    .line 481
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 484
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->h()Landroid/os/Parcelable;

    move-result-object p1

    goto :goto_0
.end method

.method public b(Landroidx/versionedparcelable/c;I)Landroidx/versionedparcelable/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/c;",
            ">(TT;I)TT;"
        }
    .end annotation

    .prologue
    .line 1493
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1496
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->j()Landroidx/versionedparcelable/c;

    move-result-object p1

    goto :goto_0
.end method

.method public b(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 616
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->g()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected abstract b()V
.end method

.method protected abstract b(I)Z
.end method

.method public b(ZI)Z
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    :goto_0
    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->i()Z

    move-result p1

    goto :goto_0
.end method

.method public b([BI)[B
    .locals 1

    .prologue
    .line 472
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->f()[B

    move-result-object p1

    goto :goto_0
.end method

.method protected abstract c()Landroidx/versionedparcelable/VersionedParcel;
.end method

.method protected abstract c(I)V
.end method

.method protected abstract d()I
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method protected abstract f()[B
.end method

.method protected abstract g()Ljava/lang/CharSequence;
.end method

.method protected abstract h()Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation
.end method

.method protected abstract i()Z
.end method

.method protected j()Landroidx/versionedparcelable/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/c;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 1509
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->e()Ljava/lang/String;

    move-result-object v0

    .line 1510
    if-nez v0, :cond_0

    .line 1511
    const/4 v0, 0x0

    .line 1513
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->c()Landroidx/versionedparcelable/VersionedParcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->a(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Landroidx/versionedparcelable/c;

    move-result-object v0

    goto :goto_0
.end method
