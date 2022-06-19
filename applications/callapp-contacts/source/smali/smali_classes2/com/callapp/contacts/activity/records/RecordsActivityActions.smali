.class public interface abstract Lcom/callapp/contacts/activity/records/RecordsActivityActions;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAllRecords()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStarredRecords()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUnStarredRecords()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/model/objectbox/CallRecorder;",
            ">;"
        }
    .end annotation
.end method
