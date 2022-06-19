.class final Lcom/callapp/contacts/model/objectbox/CacheData_$CacheDataIdGetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/objectbox/CacheData_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CacheDataIdGetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/b/c<",
        "Lcom/callapp/contacts/model/objectbox/CacheData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/CacheData;)J
    .locals 2

    .line 120
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/CacheData;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 116
    check-cast p1, Lcom/callapp/contacts/model/objectbox/CacheData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/CacheData_$CacheDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/CacheData;)J

    move-result-wide v0

    return-wide v0
.end method
