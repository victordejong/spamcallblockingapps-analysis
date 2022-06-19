.class final Lcom/callapp/contacts/model/objectbox/PreferredSimData_$PreferredSimDataIdGetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/objectbox/PreferredSimData_;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PreferredSimDataIdGetter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/b/c<",
        "Lcom/callapp/contacts/model/objectbox/PreferredSimData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getId(Lcom/callapp/contacts/model/objectbox/PreferredSimData;)J
    .locals 2

    .line 98
    iget-object p1, p1, Lcom/callapp/contacts/model/objectbox/PreferredSimData;->id:Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final bridge synthetic getId(Ljava/lang/Object;)J
    .locals 2

    .line 94
    check-cast p1, Lcom/callapp/contacts/model/objectbox/PreferredSimData;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/PreferredSimData_$PreferredSimDataIdGetter;->getId(Lcom/callapp/contacts/model/objectbox/PreferredSimData;)J

    move-result-wide v0

    return-wide v0
.end method
