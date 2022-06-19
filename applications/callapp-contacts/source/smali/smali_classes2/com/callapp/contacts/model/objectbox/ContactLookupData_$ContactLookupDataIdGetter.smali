.class final Lcom/callapp/contacts/model/objectbox/ContactLookupData_$ContactLookupDataIdGetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/objectbox/ContactLookupData_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ContactLookupDataIdGetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/b/c<",
        "Lcom/callapp/contacts/model/objectbox/ContactLookupData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/ContactLookupData;)J
    .locals 2

    .line 141
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 137
    check-cast p1, Lcom/callapp/contacts/model/objectbox/ContactLookupData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/ContactLookupData_$ContactLookupDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/ContactLookupData;)J

    move-result-wide v0

    return-wide v0
.end method
