.class final Lcom/callapp/contacts/sync/model/SyncerDetails_$SyncerDetailsIdGetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/sync/model/SyncerDetails_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SyncerDetailsIdGetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/b/c<",
        "Lcom/callapp/contacts/sync/model/SyncerDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/sync/model/SyncerDetails;)J
    .locals 2

    .line 103
    iget-object p1, p1, Lcom/callapp/contacts/sync/model/SyncerDetails;->id:Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 99
    check-cast p1, Lcom/callapp/contacts/sync/model/SyncerDetails;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/sync/model/SyncerDetails_$SyncerDetailsIdGetter;->getId(Lcom/callapp/contacts/sync/model/SyncerDetails;)J

    move-result-wide v0

    return-wide v0
.end method
