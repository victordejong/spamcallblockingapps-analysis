.class public Lnet/pubnative/lite/sdk/vpaid/models/vast/Extension;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private adVerifications:Lnet/pubnative/lite/sdk/vpaid/models/vast/AdVerifications;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Tag;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Attribute;
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
.method public getAdVerifications()Lnet/pubnative/lite/sdk/vpaid/models/vast/AdVerifications;
    .locals 1

    .line 19
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Extension;->adVerifications:Lnet/pubnative/lite/sdk/vpaid/models/vast/AdVerifications;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Extension;->type:Ljava/lang/String;

    return-object v0
.end method
