.class public Lnet/pubnative/lite/sdk/vpaid/models/vast/VerificationParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private text:Ljava/lang/String;
    .annotation runtime Lnet/pubnative/lite/sdk/vpaid/xml/Text;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/VerificationParameters;->text:Ljava/lang/String;

    return-object v0
.end method
