.class public Lcom/callerid/block/bean/SearchHis;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private id:I

.field private number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/callerid/block/bean/SearchHis;->id:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/bean/SearchHis;->number:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/callerid/block/bean/SearchHis;->id:I

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/bean/SearchHis;->number:Ljava/lang/String;

    return-void
.end method
