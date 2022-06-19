.class final Lcom/callapp/contacts/loader/device/CacheLoader$LoadFromCacheTask;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/loader/device/CacheLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LoadFromCacheTask"
.end annotation


# instance fields
.field private final a:Lcom/callapp/contacts/loader/api/LoadContext;

.field private final b:Lcom/callapp/contacts/loader/api/ContactDataLoader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/api/LoadContext;Lcom/callapp/contacts/loader/api/ContactDataLoader;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/loader/device/CacheLoader$LoadFromCacheTask;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    .line 52
    iput-object p2, p0, Lcom/callapp/contacts/loader/device/CacheLoader$LoadFromCacheTask;->b:Lcom/callapp/contacts/loader/api/ContactDataLoader;

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/loader/device/CacheLoader$LoadFromCacheTask;->b:Lcom/callapp/contacts/loader/api/ContactDataLoader;

    iget-object v1, p0, Lcom/callapp/contacts/loader/device/CacheLoader$LoadFromCacheTask;->a:Lcom/callapp/contacts/loader/api/LoadContext;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/loader/api/ContactDataLoader;->b(Lcom/callapp/contacts/loader/api/LoadContext;)V

    return-void
.end method
