.class public Lcom/danikula/videocache/s/d;
.super Ljava/lang/Object;
.source "SourceInfoStorageFactory.java"


# direct methods
.method public static a()Lcom/danikula/videocache/s/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/danikula/videocache/s/b;

    invoke-direct {v0}, Lcom/danikula/videocache/s/b;-><init>()V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/danikula/videocache/s/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/danikula/videocache/s/a;

    invoke-direct {v0, p0}, Lcom/danikula/videocache/s/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
