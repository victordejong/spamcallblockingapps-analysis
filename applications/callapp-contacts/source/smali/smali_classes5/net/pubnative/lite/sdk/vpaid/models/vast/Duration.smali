.class public Lnet/pubnative/lite/sdk/vpaid/models/vast/Duration;
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

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Duration;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Duration;->text:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "00:00:10"

    return-object v0
.end method
