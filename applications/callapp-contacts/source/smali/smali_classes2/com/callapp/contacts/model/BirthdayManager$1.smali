.class final Lcom/callapp/contacts/model/BirthdayManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/model/BirthdayManager;->getBirthdaysAsReminders()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/callapp/contacts/model/objectbox/BirthdayData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$refDatePseudoValue:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/callapp/contacts/model/BirthdayManager$1;->val$refDatePseudoValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/callapp/contacts/model/objectbox/BirthdayData;Lcom/callapp/contacts/model/objectbox/BirthdayData;)I
    .locals 4

    .line 186
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getMonth()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x23

    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getDayOfMonth()I

    move-result v2

    add-int/2addr v0, v2

    .line 187
    invoke-virtual {p2}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getMonth()I

    move-result v2

    sub-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x23

    invoke-virtual {p2}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getDayOfMonth()I

    move-result v3

    add-int/2addr v2, v3

    .line 189
    iget v3, p0, Lcom/callapp/contacts/model/BirthdayManager$1;->val$refDatePseudoValue:I

    sub-int/2addr v0, v3

    sub-int/2addr v2, v3

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x1a4

    add-int/lit16 v0, v0, 0x1a4

    :goto_0
    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit16 v2, v2, 0x1a4

    add-int/lit16 v2, v2, 0x1a4

    :goto_1
    if-ne v2, v0, :cond_2

    .line 198
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    if-ge v0, v2, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    return v1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 182
    check-cast p1, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    check-cast p2, Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/model/BirthdayManager$1;->compare(Lcom/callapp/contacts/model/objectbox/BirthdayData;Lcom/callapp/contacts/model/objectbox/BirthdayData;)I

    move-result p1

    return p1
.end method
