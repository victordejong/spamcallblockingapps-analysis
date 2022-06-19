.class final Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/b/h<",
        "Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getToOne(Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;)Lio/objectbox/relation/ToOne;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;",
            ")",
            "Lio/objectbox/relation/ToOne<",
            "Lcom/callapp/contacts/model/objectbox/UserNegativePositiveData;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;->getUserPositiveData()Lio/objectbox/relation/ToOne;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic getToOne(Ljava/lang/Object;)Lio/objectbox/relation/ToOne;
    .locals 0

    .line 114
    check-cast p1, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData_$1;->getToOne(Lcom/callapp/contacts/model/objectbox/UserPositiveSocialData;)Lio/objectbox/relation/ToOne;

    move-result-object p1

    return-object p1
.end method
