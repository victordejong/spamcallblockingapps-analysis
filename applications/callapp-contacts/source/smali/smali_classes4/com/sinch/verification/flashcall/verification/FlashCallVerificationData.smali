.class public final Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;
.super Lcom/sinch/verification/core/verification/model/VerificationData;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;",
        "Lcom/sinch/verification/core/verification/model/VerificationData;",
        "source",
        "Lcom/sinch/verification/core/verification/model/VerificationSourceType;",
        "flashcallDetails",
        "Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;",
        "(Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;)V",
        "calloutDetails",
        "Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;",
        "getCalloutDetails",
        "()Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;",
        "getFlashcallDetails",
        "()Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;",
        "smsDetails",
        "Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;",
        "getSmsDetails",
        "()Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;",
        "getSource",
        "()Lcom/sinch/verification/core/verification/model/VerificationSourceType;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "verification-flashcall_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final calloutDetails:Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;

.field private final flashcallDetails:Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

.field private final smsDetails:Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;

.field private final source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;


# direct methods
.method public constructor <init>(Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flashcallDetails"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/sinch/verification/core/internal/VerificationMethodType;->FLASHCALL:Lcom/sinch/verification/core/internal/VerificationMethodType;

    invoke-direct {p0, v0}, Lcom/sinch/verification/core/verification/model/VerificationData;-><init>(Lcom/sinch/verification/core/internal/VerificationMethodType;)V

    iput-object p1, p0, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;->source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    iput-object p2, p0, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;->flashcallDetails:Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;ILjava/lang/Object;)Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;->getSource()Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;->getFlashcallDetails()Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    move-result-object p2

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;->copy(Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;)Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/sinch/verification/core/verification/model/VerificationSourceType;
    .locals 1

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;->getSource()Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;
    .locals 1

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;->getFlashcallDetails()Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;)Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flashcallDetails"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;

    invoke-direct {v0, p1, p2}, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;-><init>(Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;->getSource()Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;->getSource()Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;->getFlashcallDetails()Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;->getFlashcallDetails()Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getCalloutDetails()Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;->calloutDetails:Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;

    return-object v0
.end method

.method public final getFlashcallDetails()Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;->flashcallDetails:Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    return-object v0
.end method

.method public final getSmsDetails()Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;->smsDetails:Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;

    return-object v0
.end method

.method public final getSource()Lcom/sinch/verification/core/verification/model/VerificationSourceType;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;->source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;->getSource()Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;->getFlashcallDetails()Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlashCallVerificationData(source="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;->getSource()Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flashcallDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/verification/FlashCallVerificationData;->getFlashcallDetails()Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
