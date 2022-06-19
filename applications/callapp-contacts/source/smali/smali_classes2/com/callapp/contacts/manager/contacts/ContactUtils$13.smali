.class final Lcom/callapp/contacts/manager/contacts/ContactUtils$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/contacts/ContactUtils;->getBlockedContactsInternal()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/callapp/contacts/model/ReminderData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1041
    check-cast p1, Lcom/callapp/contacts/model/ReminderData;

    check-cast p2, Lcom/callapp/contacts/model/ReminderData;

    if-eqz p1, :cond_3

    .line 2046
    iget-object v0, p1, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 2050
    iget-object v0, p2, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2054
    :cond_1
    iget-object p1, p1, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    iget-object p2, p2, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 2047
    iget-object p1, p2, Lcom/callapp/contacts/model/ReminderData;->displayName:Ljava/lang/String;

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
