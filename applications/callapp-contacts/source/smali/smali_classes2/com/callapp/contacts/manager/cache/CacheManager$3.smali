.class Lcom/callapp/contacts/manager/cache/CacheManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Date;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Date;

.field final synthetic c:Ljava/lang/Class;

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Lcom/callapp/contacts/manager/cache/CacheManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/cache/CacheManager;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/callapp/contacts/manager/cache/CacheManager$3;->e:Lcom/callapp/contacts/manager/cache/CacheManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/cache/CacheManager$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/manager/cache/CacheManager$3;->b:Ljava/util/Date;

    iput-object p4, p0, Lcom/callapp/contacts/manager/cache/CacheManager$3;->c:Ljava/lang/Class;

    iput-object p5, p0, Lcom/callapp/contacts/manager/cache/CacheManager$3;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/callapp/contacts/manager/cache/CacheManager$3;->e:Lcom/callapp/contacts/manager/cache/CacheManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/cache/CacheManager;->b(Lcom/callapp/contacts/manager/cache/CacheManager;)Lcom/callapp/contacts/manager/cache/FileStore;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/manager/cache/CacheManager$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/manager/cache/CacheManager$3;->b:Ljava/util/Date;

    iget-object v3, p0, Lcom/callapp/contacts/manager/cache/CacheManager$3;->c:Ljava/lang/Class;

    iget-object v4, p0, Lcom/callapp/contacts/manager/cache/CacheManager$3;->d:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/manager/cache/CacheDataManager;->a(Lcom/callapp/contacts/manager/cache/FileStore;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
