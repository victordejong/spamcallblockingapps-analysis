.class public abstract Lcom/j256/ormlite/support/BaseConnectionSource;
.super Ljava/lang/Object;
.source "BaseConnectionSource.java"

# interfaces
.implements Lcom/j256/ormlite/support/ConnectionSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;
    }
.end annotation


# instance fields
.field private specialConnection:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method protected clearSpecial(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/logger/Logger;)Z
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string p1, "no connection has been saved when clear() called"

    .line 86
    invoke-virtual {p2, p1}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v1, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    if-ne v1, p1, :cond_3

    .line 88
    invoke-virtual {v0}, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    .line 90
    iget-object p1, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x1

    goto :goto_1

    .line 94
    :cond_3
    iget-object v0, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    const-string v1, "connection saved {} is not the one being cleared {}"

    invoke-virtual {p2, v1, v0, p1}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method protected getSavedConnection()Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 34
    :cond_0
    iget-object v0, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    return-object v0
.end method

.method public getSpecialConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;
    .locals 0

    .line 18
    iget-object p1, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 22
    :cond_0
    iget-object p1, p1, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    return-object p1
.end method

.method protected isSavedConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 45
    :cond_0
    iget-object v0, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method protected isSingleConnection(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/support/DatabaseConnection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 105
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    .line 106
    invoke-interface {p2, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    const/4 v1, 0x0

    .line 109
    :try_start_0
    invoke-interface {p1, v1}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    .line 110
    invoke-interface {p2}, Lcom/j256/ormlite/support/DatabaseConnection;->isAutoCommit()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 119
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    return v1

    :cond_0
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    return v0

    :catchall_0
    move-exception p2

    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->setAutoCommit(Z)V

    throw p2
.end method

.method protected saveSpecial(Lcom/j256/ormlite/support/DatabaseConnection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/j256/ormlite/support/BaseConnectionSource;->specialConnection:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;

    invoke-direct {v1, p1}, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;-><init>(Lcom/j256/ormlite/support/DatabaseConnection;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 65
    :cond_0
    iget-object v1, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    if-ne v1, p1, :cond_1

    .line 70
    invoke-virtual {v0}, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->increment()V

    const/4 p1, 0x0

    return p1

    .line 66
    :cond_1
    new-instance v1, Ljava/sql/SQLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trying to save connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but already have saved connection "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/j256/ormlite/support/BaseConnectionSource$NestedConnection;->connection:Lcom/j256/ormlite/support/DatabaseConnection;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
