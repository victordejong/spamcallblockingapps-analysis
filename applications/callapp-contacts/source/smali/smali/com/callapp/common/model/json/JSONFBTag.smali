.class public Lcom/callapp/common/model/json/JSONFBTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x161165f33d130a7aL


# instance fields
.field private tag_uid:Ljava/lang/String;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lcom/callapp/common/model/json/JSONFBTag;->setTag_uid(Ljava/lang/String;)V

    .line 16
    iput p2, p0, Lcom/callapp/common/model/json/JSONFBTag;->x:I

    .line 17
    iput p3, p0, Lcom/callapp/common/model/json/JSONFBTag;->y:I

    return-void
.end method


# virtual methods
.method public getTag_uid()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBTag;->tag_uid:Ljava/lang/String;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/callapp/common/model/json/JSONFBTag;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/callapp/common/model/json/JSONFBTag;->y:I

    return v0
.end method

.method public setTag_uid(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBTag;->tag_uid:Ljava/lang/String;

    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/callapp/common/model/json/JSONFBTag;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/callapp/common/model/json/JSONFBTag;->y:I

    return-void
.end method
