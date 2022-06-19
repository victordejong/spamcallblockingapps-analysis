.class Lcom/callapp/contacts/manager/cache/CacheManager$4;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/cache/CacheManager;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Date;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/callapp/contacts/manager/cache/CacheManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/cache/CacheManager;Ljava/lang/Runnable;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/callapp/contacts/manager/cache/CacheManager$4;->b:Lcom/callapp/contacts/manager/cache/CacheManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/cache/CacheManager$4;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/callapp/contacts/manager/cache/CacheManager$4;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
