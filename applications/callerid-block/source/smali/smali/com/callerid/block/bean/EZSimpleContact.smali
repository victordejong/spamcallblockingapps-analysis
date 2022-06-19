.class public Lcom/callerid/block/bean/EZSimpleContact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:I

.field private name:Ljava/lang/String;

.field private number:Ljava/lang/String;

.field private photo_id:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/callerid/block/bean/EZSimpleContact;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSimpleContact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSimpleContact;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSimpleContact;->photo_id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/EZSimpleContact;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/callerid/block/bean/EZSimpleContact;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSimpleContact;->name:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSimpleContact;->number:Ljava/lang/String;

    return-void
.end method

.method public setPhoto_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSimpleContact;->photo_id:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/EZSimpleContact;->type:Ljava/lang/String;

    return-void
.end method
