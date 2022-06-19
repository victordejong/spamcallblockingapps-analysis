.class public abstract Lcom/yanzhenjie/nohttp/cache/BasicCacheStore;
.super Ljava/lang/Object;
.source "BasicCacheStore.java"

# interfaces
.implements Lcom/yanzhenjie/nohttp/tools/CacheStore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yanzhenjie/nohttp/tools/CacheStore<",
        "Lcom/yanzhenjie/nohttp/cache/CacheEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/cache/BasicCacheStore;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected uniqueKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/yanzhenjie/nohttp/cache/BasicCacheStore;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/tools/Encryption;->getMD5ForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
