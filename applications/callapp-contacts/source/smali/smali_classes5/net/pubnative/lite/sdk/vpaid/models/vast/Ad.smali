.class public Lnet/pubnative/lite/sdk/vpaid/models/vast/Ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private inLine:Lnet/pubnative/lite/sdk/vpaid/models/vast/InLine;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field

.field private wrapper:Lnet/pubnative/lite/sdk/vpaid/models/vast/Wrapper;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Ad;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInLine()Lnet/pubnative/lite/sdk/vpaid/models/vast/InLine;
    .locals 1

    .line 22
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Ad;->inLine:Lnet/pubnative/lite/sdk/vpaid/models/vast/InLine;

    return-object v0
.end method

.method public getWrapper()Lnet/pubnative/lite/sdk/vpaid/models/vast/Wrapper;
    .locals 1

    .line 26
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Ad;->wrapper:Lnet/pubnative/lite/sdk/vpaid/models/vast/Wrapper;

    return-object v0
.end method
