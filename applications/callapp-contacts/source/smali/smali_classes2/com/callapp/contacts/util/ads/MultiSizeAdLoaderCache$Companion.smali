.class public final Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\t\u001a\u00020\n2\u000c\u0008\u0001\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0006J\u0016\u0010\r\u001a\u0004\u0018\u00010\u00062\u000c\u0008\u0001\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u0005R\u001e\u0010\u0003\u001a\u0012\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion;",
        "",
        "()V",
        "adLoaderCache",
        "Ljava/util/HashMap;",
        "Ljava/lang/Class;",
        "Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "add",
        "",
        "classType",
        "adData",
        "getAndRemove",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;"
        }
    .end annotation

    const-string v0, "classType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;->a()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 30
    invoke-static {}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;

    if-eqz v0, :cond_0

    .line 32
    invoke-static {}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;->a()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;->a()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method

.method public static a(Ljava/lang/Class;Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;",
            ")V"
        }
    .end annotation

    const-string v0, "classType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;->a()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 21
    invoke-static {}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;->a()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;->a()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method
