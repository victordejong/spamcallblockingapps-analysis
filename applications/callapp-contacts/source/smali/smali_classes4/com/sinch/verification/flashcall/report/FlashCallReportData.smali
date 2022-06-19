.class public final Lcom/sinch/verification/flashcall/report/FlashCallReportData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/flashcall/report/FlashCallReportData$Companion;,
        Lcom/sinch/verification/flashcall/report/FlashCallReportData$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001b\u001cB1\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\u0013\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\r\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/sinch/verification/flashcall/report/FlashCallReportData;",
        "",
        "seen1",
        "",
        "details",
        "Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;",
        "method",
        "Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/SerializationConstructorMarker;",
        "(ILcom/sinch/verification/flashcall/report/FlashCallReportDetails;Lcom/sinch/verification/core/internal/VerificationMethodType;Lkotlinx/serialization/SerializationConstructorMarker;)V",
        "(Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;)V",
        "details$annotations",
        "()V",
        "getDetails",
        "()Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;",
        "method$annotations",
        "getMethod",
        "()Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "$serializer",
        "Companion",
        "verification-flashcall_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/sinch/verification/flashcall/report/FlashCallReportData$Companion;


# instance fields
.field private final details:Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;

.field private final method:Lcom/sinch/verification/core/internal/VerificationMethodType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sinch/verification/flashcall/report/FlashCallReportData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/verification/flashcall/report/FlashCallReportData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/verification/flashcall/report/FlashCallReportData;->Companion:Lcom/sinch/verification/flashcall/report/FlashCallReportData$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/sinch/verification/flashcall/report/FlashCallReportDetails;Lcom/sinch/verification/core/internal/VerificationMethodType;Lkotlinx/serialization/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p1, 0x1

    if-eqz p4, :cond_1

    iput-object p2, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportData;->details:Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    iput-object p3, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    return-void

    .line 17
    :cond_0
    sget-object p1, Lcom/sinch/verification/core/internal/VerificationMethodType;->FLASHCALL:Lcom/sinch/verification/core/internal/VerificationMethodType;

    iput-object p1, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    return-void

    .line 0
    :cond_1
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "data"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public constructor <init>(Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;)V
    .locals 1

    const-string v0, "details"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportData;->details:Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;

    .line 17
    sget-object p1, Lcom/sinch/verification/core/internal/VerificationMethodType;->FLASHCALL:Lcom/sinch/verification/core/internal/VerificationMethodType;

    iput-object p1, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sinch/verification/flashcall/report/FlashCallReportData;Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;ILjava/lang/Object;)Lcom/sinch/verification/flashcall/report/FlashCallReportData;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportData;->details:Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sinch/verification/flashcall/report/FlashCallReportData;->copy(Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;)Lcom/sinch/verification/flashcall/report/FlashCallReportData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic details$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic method$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lcom/sinch/verification/flashcall/report/FlashCallReportData;Lkotlinx/serialization/CompositeEncoder;Lkotlinx/serialization/SerialDescriptor;)V
    .locals 3

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails$$serializer;->INSTANCE:Lcom/sinch/verification/flashcall/report/FlashCallReportDetails$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object v1, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportData;->details:Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    .line 17
    sget-object v1, Lcom/sinch/verification/core/internal/VerificationMethodType;->FLASHCALL:Lcom/sinch/verification/core/internal/VerificationMethodType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sinch/verification/core/internal/VerificationMethodType;->Companion:Lcom/sinch/verification/core/internal/VerificationMethodType$Companion;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object p0, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final component1()Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportData;->details:Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;

    return-object v0
.end method

.method public final copy(Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;)Lcom/sinch/verification/flashcall/report/FlashCallReportData;
    .locals 1

    const-string v0, "details"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sinch/verification/flashcall/report/FlashCallReportData;

    invoke-direct {v0, p1}, Lcom/sinch/verification/flashcall/report/FlashCallReportData;-><init>(Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/sinch/verification/flashcall/report/FlashCallReportData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sinch/verification/flashcall/report/FlashCallReportData;

    iget-object v0, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportData;->details:Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;

    iget-object p1, p1, Lcom/sinch/verification/flashcall/report/FlashCallReportData;->details:Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;

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

.method public final getDetails()Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportData;->details:Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;

    return-object v0
.end method

.method public final getMethod()Lcom/sinch/verification/core/internal/VerificationMethodType;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportData;->details:Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlashCallReportData(details="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportData;->details:Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
