.class public Lcom/callapp/contacts/model/SectionData;
.super Lcom/callapp/contacts/activity/base/BaseViewTypeData;
.source "SourceFile"


# instance fields
.field private text:Ljava/lang/String;

.field private textColor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/model/SectionData;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseViewTypeData;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/callapp/contacts/model/SectionData;->text:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/callapp/contacts/model/SectionData;->textColor:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 38
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/SectionData;

    .line 40
    iget-object v0, p0, Lcom/callapp/contacts/model/SectionData;->text:Ljava/lang/String;

    iget-object p1, p1, Lcom/callapp/contacts/model/SectionData;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/callapp/contacts/model/SectionData;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/callapp/contacts/model/SectionData;->textColor:I

    return v0
.end method

.method public getViewType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/model/SectionData;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
