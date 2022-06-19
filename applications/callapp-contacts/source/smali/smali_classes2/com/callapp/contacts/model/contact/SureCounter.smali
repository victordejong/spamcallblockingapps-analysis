.class public Lcom/callapp/contacts/model/contact/SureCounter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/callapp/contacts/model/contact/SureCounter;",
        ">;"
    }
.end annotation


# instance fields
.field private sureCount:I

.field private unsureCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addToCounter(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 22
    iget p1, p0, Lcom/callapp/contacts/model/contact/SureCounter;->sureCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/callapp/contacts/model/contact/SureCounter;->sureCount:I

    return-void

    .line 24
    :cond_0
    iget p1, p0, Lcom/callapp/contacts/model/contact/SureCounter;->unsureCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/callapp/contacts/model/contact/SureCounter;->unsureCount:I

    return-void
.end method

.method public compareTo(Lcom/callapp/contacts/model/contact/SureCounter;)I
    .locals 2

    .line 35
    iget v0, p0, Lcom/callapp/contacts/model/contact/SureCounter;->sureCount:I

    iget v1, p1, Lcom/callapp/contacts/model/contact/SureCounter;->sureCount:I

    if-le v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 41
    :cond_1
    iget p1, p1, Lcom/callapp/contacts/model/contact/SureCounter;->unsureCount:I

    iget v0, p0, Lcom/callapp/contacts/model/contact/SureCounter;->unsureCount:I

    invoke-static {p1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/callapp/contacts/model/contact/SureCounter;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/contact/SureCounter;->compareTo(Lcom/callapp/contacts/model/contact/SureCounter;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    check-cast p1, Lcom/callapp/contacts/model/contact/SureCounter;

    .line 52
    iget v2, p0, Lcom/callapp/contacts/model/contact/SureCounter;->sureCount:I

    iget v3, p1, Lcom/callapp/contacts/model/contact/SureCounter;->sureCount:I

    if-eq v2, v3, :cond_2

    return v1

    .line 53
    :cond_2
    iget v2, p0, Lcom/callapp/contacts/model/contact/SureCounter;->unsureCount:I

    iget p1, p1, Lcom/callapp/contacts/model/contact/SureCounter;->unsureCount:I

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getSureCount()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/callapp/contacts/model/contact/SureCounter;->sureCount:I

    return v0
.end method

.method public getUnsureCount()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/callapp/contacts/model/contact/SureCounter;->unsureCount:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 59
    iget v0, p0, Lcom/callapp/contacts/model/contact/SureCounter;->sureCount:I

    mul-int/lit8 v0, v0, 0x1f

    .line 60
    iget v1, p0, Lcom/callapp/contacts/model/contact/SureCounter;->unsureCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/callapp/contacts/model/contact/SureCounter;->sureCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", unsure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/model/contact/SureCounter;->unsureCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
