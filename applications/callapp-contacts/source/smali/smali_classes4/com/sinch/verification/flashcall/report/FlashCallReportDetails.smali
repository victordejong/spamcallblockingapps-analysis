.class public final Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/flashcall/report/FlashCallReportDetails$Companion;,
        Lcom/sinch/verification/flashcall/report/FlashCallReportDetails$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 \u00182\u00020\u0001:\u0002\u0017\u0018B-\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tB\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\nJ\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\u0004\u0010\rR\u001c\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000e\u0010\u000c\u001a\u0004\u0008\u0006\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;",
        "",
        "seen1",
        "",
        "isLateCall",
        "",
        "isNoCall",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/SerializationConstructorMarker;",
        "(IZZLkotlinx/serialization/SerializationConstructorMarker;)V",
        "(ZZ)V",
        "isLateCall$annotations",
        "()V",
        "()Z",
        "isNoCall$annotations",
        "component1",
        "component2",
        "copy",
        "equals",
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
.field public static final Companion:Lcom/sinch/verification/flashcall/report/FlashCallReportDetails$Companion;


# instance fields
.field private final isLateCall:Z

.field private final isNoCall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->Companion:Lcom/sinch/verification/flashcall/report/FlashCallReportDetails$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IZZLkotlinx/serialization/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p1, 0x1

    if-eqz p4, :cond_1

    iput-boolean p2, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isLateCall:Z

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    iput-boolean p3, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isNoCall:Z

    return-void

    :cond_0
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "noCall"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "lateCall"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isLateCall:Z

    iput-boolean p2, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isNoCall:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;ZZILjava/lang/Object;)Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isLateCall:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isNoCall:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->copy(ZZ)Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic isLateCall$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic isNoCall$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;Lkotlinx/serialization/CompositeEncoder;Lkotlinx/serialization/SerialDescriptor;)V
    .locals 2

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isLateCall:Z

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;IZ)V

    iget-boolean p0, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isNoCall:Z

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;IZ)V

    return-void
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isLateCall:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isNoCall:Z

    return v0
.end method

.method public final copy(ZZ)Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;
    .locals 1

    new-instance v0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;

    invoke-direct {v0, p1, p2}, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;-><init>(ZZ)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;

    iget-boolean v0, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isLateCall:Z

    iget-boolean v1, p1, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isLateCall:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isNoCall:Z

    iget-boolean p1, p1, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isNoCall:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isLateCall:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isNoCall:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isLateCall()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isLateCall:Z

    return v0
.end method

.method public final isNoCall()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isNoCall:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlashCallReportDetails(isLateCall="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isLateCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNoCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sinch/verification/flashcall/report/FlashCallReportDetails;->isNoCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
