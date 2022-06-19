.class public Lcom/callapp/common/model/json/JSONFBCategorizedType;
.super Lcom/callapp/common/model/json/JSONFBType;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x52e74c8280e8f2b0L


# instance fields
.field private category:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "category"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/callapp/common/model/json/JSONFBType;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/callapp/common/model/json/JSONFBCategorizedType;->category:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/callapp/common/model/json/JSONFBCategorizedType;->category:Ljava/lang/String;

    return-void
.end method
