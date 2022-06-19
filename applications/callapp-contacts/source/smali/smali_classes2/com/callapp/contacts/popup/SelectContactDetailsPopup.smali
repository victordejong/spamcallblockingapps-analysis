.class public abstract Lcom/callapp/contacts/popup/SelectContactDetailsPopup;
.super Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/callapp/contacts/model/contact/ContactData;

.field protected final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

.field protected d:[Z

.field protected e:Landroid/app/Activity;

.field private g:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;",
            ">;",
            "Lcom/callapp/contacts/model/contact/ContactData;",
            "Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-static {p1}, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/callapp/contacts/popup/contact/DialogMultipleChoice;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/callapp/contacts/popup/contact/DialogMultipleChoice$MultipleChoiceDialogListener;)V

    .line 31
    iput-object p2, p0, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 32
    iput-object p3, p0, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->c:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    .line 33
    iput-object p1, p0, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->b:Ljava/util/ArrayList;

    .line 34
    iput-object p4, p0, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->e:Landroid/app/Activity;

    .line 1056
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1057
    new-array p3, p2, [Z

    iput-object p3, p0, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->d:[Z

    .line 1058
    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->g:[Ljava/lang/String;

    .line 1060
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;

    .line 1061
    iget-object p4, p0, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->d:[Z

    const/4 v0, 0x1

    aput-boolean v0, p4, p2

    .line 1062
    iget-object p4, p0, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->g:[Ljava/lang/String;

    invoke-virtual {p3}, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p4, p2

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;

    .line 49
    new-instance v3, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;

    invoke-virtual {v2}, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareItem;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/callapp/contacts/widget/MultipleChoiceArrayAdapter$MultipleChoiceRowData;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/2addr v1, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Z)Ljava/lang/String;
    .locals 7

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->c:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    sget-object v3, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;->sendingMyOwnInfo:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    if-ne v2, v3, :cond_0

    .line 79
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/UserProfileManager;->getUserFullName()Ljava/lang/String;

    move-result-object v1

    .line 82
    :cond_0
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->d:[Z

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 88
    iget-object v5, p0, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->d:[Z

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->g:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    iget-object v5, p0, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->g:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_4
    sget-object p1, Lcom/callapp/contacts/popup/SelectContactDetailsPopup$1;->a:[I

    iget-object v1, p0, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->c:Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;

    invoke-virtual {v1}, Lcom/callapp/contacts/action/shared/ShareContactAction$ShareContactState;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const v1, 0x7f12027f

    const/4 v3, 0x1

    if-eq p1, v3, :cond_6

    const/4 v4, 0x2

    if-eq p1, v4, :cond_6

    const/4 v4, 0x3

    if-eq p1, v4, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    .line 105
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f12062c

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v6}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppDomain()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    const p1, 0x7f12062d

    new-array v4, v3, [Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    .line 102
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppDomain()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v3}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {p1, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 111
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isNeedToShowPopup()Z
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->g:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected setChoicesIndexes(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->d:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 40
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/popup/SelectContactDetailsPopup;->d:[Z

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
