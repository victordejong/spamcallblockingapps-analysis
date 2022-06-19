.class final Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_$PersonalStoreItemUrlDataIdGetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PersonalStoreItemUrlDataIdGetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/b/c<",
        "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)J
    .locals 2

    .line 111
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 107
    check-cast p1, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData_$PersonalStoreItemUrlDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)J

    move-result-wide v0

    return-wide v0
.end method
