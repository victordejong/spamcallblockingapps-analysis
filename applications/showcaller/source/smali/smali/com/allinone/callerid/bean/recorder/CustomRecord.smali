.class public Lcom/allinone/callerid/bean/recorder/CustomRecord;
.super Ljava/lang/Object;
.source "CustomRecord.java"


# annotations
.annotation runtime Lorg/xutils/db/annotation/Table;
    name = "CustomRecord"
.end annotation


# static fields
.field public static final TYPEBLACK:I = 0x1

.field public static final TYPEWHITE:I


# instance fields
.field private contactId:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "contactId"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        autoGen = true
        isId = true
        name = "id"
    .end annotation
.end field

.field private isSelect:Z

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "name"
    .end annotation
.end field

.field private phone:Ljava/lang/String;
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "phone"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lorg/xutils/db/annotation/Column;
        name = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContactId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/recorder/CustomRecord;->contactId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/recorder/CustomRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/bean/recorder/CustomRecord;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/bean/recorder/CustomRecord;->type:I

    return v0
.end method

.method public isSelect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/allinone/callerid/bean/recorder/CustomRecord;->isSelect:Z

    return v0
.end method

.method public setContactId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/recorder/CustomRecord;->contactId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/recorder/CustomRecord;->name:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/bean/recorder/CustomRecord;->phone:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/bean/recorder/CustomRecord;->isSelect:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/bean/recorder/CustomRecord;->type:I

    return-void
.end method
