.class abstract Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionDataSingleItem;
.super Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SectionDataSingleItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData<",
        "Ljava/util/List<",
        "Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;Lit/gmariotti/cardslib/library/a/b;II)V
    .locals 6

    .line 215
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionDataSingleItem;->e:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    .line 216
    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionData;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;Lit/gmariotti/cardslib/library/a/b;Ljava/util/List;II)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;IILcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 222
    invoke-virtual {p0, p1, p3, p4}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionDataSingleItem;->a(Ljava/lang/String;ILcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object p1

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionDataSingleItem;->b(Ljava/lang/String;ILcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;)Lcom/callapp/contacts/activity/contact/cards/framework/simple/SimpleCardListObject;

    move-result-object p1

    .line 231
    :goto_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionDataSingleItem;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionDataSingleItem;->getData()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$SectionDataSingleItem;->getData()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
