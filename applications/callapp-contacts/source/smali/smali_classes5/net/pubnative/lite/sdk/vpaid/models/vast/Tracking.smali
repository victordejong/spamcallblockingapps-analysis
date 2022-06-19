.class public Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private event:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private offset:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Text;
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
.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;->text:Ljava/lang/String;

    return-object v0
.end method
