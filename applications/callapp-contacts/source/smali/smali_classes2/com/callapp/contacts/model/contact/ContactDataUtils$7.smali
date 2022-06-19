.class final Lcom/callapp/contacts/model/contact/ContactDataUtils$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/model/contact/ContactDataUtils;->getPrioritizedPhoneList(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/callapp/framework/phone/Phone;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$firstPhone:Lcom/callapp/framework/phone/Phone;


# direct methods
.method constructor <init>(Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/callapp/contacts/model/contact/ContactDataUtils$7;->val$firstPhone:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/callapp/framework/phone/Phone;Lcom/callapp/framework/phone/Phone;)I
    .locals 4

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/model/contact/ContactDataUtils$7;->val$firstPhone:Lcom/callapp/framework/phone/Phone;

    const/4 v2, -0x1

    if-ne p1, v1, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x1

    if-ne p2, v1, :cond_2

    return v3

    .line 138
    :cond_2
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getType()Lcom/callapp/framework/phone/PhoneType;

    move-result-object p1

    .line 139
    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->getType()Lcom/callapp/framework/phone/PhoneType;

    move-result-object p2

    if-ne p1, p2, :cond_3

    return v0

    .line 143
    :cond_3
    sget-object v0, Lcom/callapp/framework/phone/PhoneType;->MOBILE:Lcom/callapp/framework/phone/PhoneType;

    if-ne p1, v0, :cond_4

    return v2

    .line 146
    :cond_4
    sget-object v0, Lcom/callapp/framework/phone/PhoneType;->MOBILE:Lcom/callapp/framework/phone/PhoneType;

    if-ne p2, v0, :cond_5

    return v3

    .line 150
    :cond_5
    iget p1, p1, Lcom/callapp/framework/phone/PhoneType;->code:I

    iget p2, p2, Lcom/callapp/framework/phone/PhoneType;->code:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 125
    check-cast p1, Lcom/callapp/framework/phone/Phone;

    check-cast p2, Lcom/callapp/framework/phone/Phone;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/model/contact/ContactDataUtils$7;->compare(Lcom/callapp/framework/phone/Phone;Lcom/callapp/framework/phone/Phone;)I

    move-result p1

    return p1
.end method
