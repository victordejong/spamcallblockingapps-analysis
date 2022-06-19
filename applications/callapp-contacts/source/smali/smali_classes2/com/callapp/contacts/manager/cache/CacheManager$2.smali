.class Lcom/callapp/contacts/manager/cache/CacheManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/callapp/contacts/manager/cache/CacheManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/cache/CacheManager;Ljava/lang/Class;Ljava/lang/String;Z)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/callapp/contacts/manager/cache/CacheManager$2;->d:Lcom/callapp/contacts/manager/cache/CacheManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/cache/CacheManager$2;->a:Ljava/lang/Class;

    iput-object p3, p0, Lcom/callapp/contacts/manager/cache/CacheManager$2;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/callapp/contacts/manager/cache/CacheManager$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/callapp/contacts/manager/cache/CacheManager$2;->a:Ljava/lang/Class;

    iget-object v1, p0, Lcom/callapp/contacts/manager/cache/CacheManager$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/callapp/contacts/manager/cache/CacheManager$2;->d:Lcom/callapp/contacts/manager/cache/CacheManager;

    invoke-static {v1}, Lcom/callapp/contacts/manager/cache/CacheManager;->a(Lcom/callapp/contacts/manager/cache/CacheManager;)Landroidx/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/b/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-boolean v1, p0, Lcom/callapp/contacts/manager/cache/CacheManager$2;->c:Z

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/callapp/contacts/manager/cache/CacheManager$2;->d:Lcom/callapp/contacts/manager/cache/CacheManager;

    invoke-static {v1}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Lcom/callapp/contacts/manager/cache/CacheManager;)Lcom/callapp/contacts/manager/cache/FileStore;

    invoke-static {v0}, Lcom/callapp/contacts/manager/cache/CacheDataManager;->setExpires$eef1da(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
