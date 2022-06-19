.class public Lcom/sinch/verification/core/verification/model/VerificationData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/core/verification/model/VerificationData$Companion;,
        Lcom/sinch/verification/core/verification/model/VerificationData$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0008\u0017\u0018\u0000 #2\u00020\u0001:\u0002\"#BU\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0010B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0011R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0016\u0010\u0013\u001a\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0004\u001a\u00020\u00058\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0019\u0010\u0013\u001a\u0004\u0008\u001a\u0010\u001bR\u001e\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001c\u0010\u0013\u001a\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u0006\u001a\u00020\u00078\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001f\u0010\u0013\u001a\u0004\u0008 \u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lcom/sinch/verification/core/verification/model/VerificationData;",
        "",
        "seen1",
        "",
        "method",
        "Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "source",
        "Lcom/sinch/verification/core/verification/model/VerificationSourceType;",
        "smsDetails",
        "Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;",
        "flashcallDetails",
        "Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;",
        "calloutDetails",
        "Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/SerializationConstructorMarker;",
        "(ILcom/sinch/verification/core/internal/VerificationMethodType;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;Lkotlinx/serialization/SerializationConstructorMarker;)V",
        "(Lcom/sinch/verification/core/internal/VerificationMethodType;)V",
        "calloutDetails$annotations",
        "()V",
        "getCalloutDetails",
        "()Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;",
        "flashcallDetails$annotations",
        "getFlashcallDetails",
        "()Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;",
        "method$annotations",
        "getMethod",
        "()Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "smsDetails$annotations",
        "getSmsDetails",
        "()Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;",
        "source$annotations",
        "getSource",
        "()Lcom/sinch/verification/core/verification/model/VerificationSourceType;",
        "$serializer",
        "Companion",
        "verification-core_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/sinch/verification/core/verification/model/VerificationData$Companion;


# instance fields
.field private final calloutDetails:Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;

.field private final flashcallDetails:Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

.field private final method:Lcom/sinch/verification/core/internal/VerificationMethodType;

.field private final smsDetails:Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;

.field private final source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sinch/verification/core/verification/model/VerificationData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/verification/core/verification/model/VerificationData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/verification/core/verification/model/VerificationData;->Companion:Lcom/sinch/verification/core/verification/model/VerificationData$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/sinch/verification/core/internal/VerificationMethodType;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;Lkotlinx/serialization/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p7, p1, 0x1

    if-eqz p7, :cond_4

    iput-object p2, p0, Lcom/sinch/verification/core/verification/model/VerificationData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_0

    iput-object p3, p0, Lcom/sinch/verification/core/verification/model/VerificationData;->source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    goto :goto_0

    .line 20
    :cond_0
    sget-object p2, Lcom/sinch/verification/core/verification/model/VerificationSourceType;->MANUAL:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    iput-object p2, p0, Lcom/sinch/verification/core/verification/model/VerificationData;->source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    iput-object p4, p0, Lcom/sinch/verification/core/verification/model/VerificationData;->smsDetails:Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;

    goto :goto_1

    .line 26
    :cond_1
    iput-object p3, p0, Lcom/sinch/verification/core/verification/model/VerificationData;->smsDetails:Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_2

    iput-object p5, p0, Lcom/sinch/verification/core/verification/model/VerificationData;->flashcallDetails:Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    goto :goto_2

    .line 32
    :cond_2
    iput-object p3, p0, Lcom/sinch/verification/core/verification/model/VerificationData;->flashcallDetails:Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    :goto_2
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_3

    iput-object p6, p0, Lcom/sinch/verification/core/verification/model/VerificationData;->calloutDetails:Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;

    return-void

    .line 38
    :cond_3
    iput-object p3, p0, Lcom/sinch/verification/core/verification/model/VerificationData;->calloutDetails:Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;

    return-void

    .line 0
    :cond_4
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "method"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public constructor <init>(Lcom/sinch/verification/core/internal/VerificationMethodType;)V
    .locals 1

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/verification/core/verification/model/VerificationData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    .line 20
    sget-object p1, Lcom/sinch/verification/core/verification/model/VerificationSourceType;->MANUAL:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    iput-object p1, p0, Lcom/sinch/verification/core/verification/model/VerificationData;->source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    return-void
.end method

.method public static synthetic calloutDetails$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic flashcallDetails$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic method$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic smsDetails$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic source$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lcom/sinch/verification/core/verification/model/VerificationData;Lkotlinx/serialization/CompositeEncoder;Lkotlinx/serialization/SerialDescriptor;)V
    .locals 5

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sinch/verification/core/internal/VerificationMethodType;->Companion:Lcom/sinch/verification/core/internal/VerificationMethodType$Companion;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p0}, Lcom/sinch/verification/core/verification/model/VerificationData;->getMethod()Lcom/sinch/verification/core/internal/VerificationMethodType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sinch/verification/core/verification/model/VerificationData;->getSource()Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    move-result-object v0

    .line 20
    sget-object v1, Lcom/sinch/verification/core/verification/model/VerificationSourceType;->MANUAL:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sinch/verification/core/verification/model/VerificationSourceType$$serializer;->INSTANCE:Lcom/sinch/verification/core/verification/model/VerificationSourceType$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p0}, Lcom/sinch/verification/core/verification/model/VerificationData;->getSource()Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    move-result-object v2

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sinch/verification/core/verification/model/VerificationData;->getSmsDetails()Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;

    move-result-object v0

    const/4 v2, 0x0

    .line 26
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/4 v3, 0x2

    if-nez v0, :cond_2

    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails$$serializer;->INSTANCE:Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p0}, Lcom/sinch/verification/core/verification/model/VerificationData;->getSmsDetails()Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;

    move-result-object v4

    invoke-interface {p1, p2, v3, v0, v4}, Lkotlinx/serialization/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lcom/sinch/verification/core/verification/model/VerificationData;->getFlashcallDetails()Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    move-result-object v0

    .line 32
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/4 v3, 0x3

    if-nez v0, :cond_4

    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    sget-object v0, Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails$$serializer;->INSTANCE:Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p0}, Lcom/sinch/verification/core/verification/model/VerificationData;->getFlashcallDetails()Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    move-result-object v4

    invoke-interface {p1, p2, v3, v0, v4}, Lkotlinx/serialization/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lcom/sinch/verification/core/verification/model/VerificationData;->getCalloutDetails()Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;

    move-result-object v0

    .line 38
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/4 v1, 0x4

    if-nez v0, :cond_6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    sget-object v0, Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails$$serializer;->INSTANCE:Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p0}, Lcom/sinch/verification/core/verification/model/VerificationData;->getCalloutDetails()Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;

    move-result-object p0

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public getCalloutDetails()Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/sinch/verification/core/verification/model/VerificationData;->calloutDetails:Lcom/sinch/verification/core/verification/model/callout/CalloutVerificationDetails;

    return-object v0
.end method

.method public getFlashcallDetails()Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/sinch/verification/core/verification/model/VerificationData;->flashcallDetails:Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    return-object v0
.end method

.method public getMethod()Lcom/sinch/verification/core/internal/VerificationMethodType;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/sinch/verification/core/verification/model/VerificationData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    return-object v0
.end method

.method public getSmsDetails()Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/sinch/verification/core/verification/model/VerificationData;->smsDetails:Lcom/sinch/verification/core/verification/model/sms/SmsVerificationDetails;

    return-object v0
.end method

.method public getSource()Lcom/sinch/verification/core/verification/model/VerificationSourceType;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/sinch/verification/core/verification/model/VerificationData;->source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    return-object v0
.end method
