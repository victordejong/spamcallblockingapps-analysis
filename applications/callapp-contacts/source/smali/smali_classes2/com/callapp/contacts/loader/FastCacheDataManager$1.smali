.class final Lcom/callapp/contacts/loader/FastCacheDataManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/query/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/FastCacheDataManager;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/query/c<",
        "Lcom/callapp/contacts/model/objectbox/FastCacheData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/callapp/contacts/loader/FastCacheDataManager$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;)V
    .locals 2

    .line 251
    check-cast p1, Lcom/callapp/contacts/model/objectbox/FastCacheData;

    .line 1254
    invoke-static {}, Lcom/callapp/contacts/loader/FastCacheDataManager;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/FastCacheData;->getPhoneOrIdKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    iget-object v0, p0, Lcom/callapp/contacts/loader/FastCacheDataManager$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
