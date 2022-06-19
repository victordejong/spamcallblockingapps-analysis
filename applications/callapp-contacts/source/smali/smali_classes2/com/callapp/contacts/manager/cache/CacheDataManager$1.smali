.class final Lcom/callapp/contacts/manager/cache/CacheDataManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/query/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/cache/CacheDataManager;->a()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/query/c<",
        "Lcom/callapp/contacts/model/objectbox/CacheData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/callapp/contacts/manager/cache/CacheDataManager$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;)V
    .locals 1

    .line 25
    check-cast p1, Lcom/callapp/contacts/model/objectbox/CacheData;

    .line 1028
    iget-object v0, p0, Lcom/callapp/contacts/manager/cache/CacheDataManager$1;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CacheData;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
