.class final Lcom/callapp/contacts/model/objectbox/ProfileViewedData_$ProfileViewedDataIdGetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/objectbox/ProfileViewedData_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProfileViewedDataIdGetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/b/c<",
        "Lcom/callapp/contacts/model/objectbox/ProfileViewedData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/ProfileViewedData;)J
    .locals 2

    .line 112
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 108
    check-cast p1, Lcom/callapp/contacts/model/objectbox/ProfileViewedData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/ProfileViewedData_$ProfileViewedDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/ProfileViewedData;)J

    move-result-wide v0

    return-wide v0
.end method
