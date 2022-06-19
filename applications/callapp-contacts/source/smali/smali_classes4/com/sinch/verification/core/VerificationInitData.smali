.class public final Lcom/sinch/verification/core/VerificationInitData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/sinch/verification/core/config/method/VerificationMethodProperties;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/core/VerificationInitData$Creator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002B?\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u0019\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\nH\u00c6\u0003J\u000f\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u00c6\u0003JO\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u00c6\u0001J\t\u0010 \u001a\u00020!H\u00d6\u0001J\u0013\u0010\"\u001a\u00020\n2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u00d6\u0003J\t\u0010%\u001a\u00020!H\u00d6\u0001J\t\u0010&\u001a\u00020\u0006H\u00d6\u0001J\u0019\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020!H\u00d6\u0001R\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\t\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006,"
    }
    d2 = {
        "Lcom/sinch/verification/core/VerificationInitData;",
        "Lcom/sinch/verification/core/config/method/VerificationMethodProperties;",
        "Landroid/os/Parcelable;",
        "usedMethod",
        "Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "number",
        "",
        "custom",
        "reference",
        "honourEarlyReject",
        "",
        "acceptedLanguages",
        "",
        "Lcom/sinch/verification/core/verification/VerificationLanguage;",
        "(Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V",
        "getAcceptedLanguages",
        "()Ljava/util/List;",
        "getCustom",
        "()Ljava/lang/String;",
        "getHonourEarlyReject",
        "()Z",
        "getNumber",
        "getReference",
        "getUsedMethod",
        "()Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "describeContents",
        "",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final acceptedLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sinch/verification/core/verification/VerificationLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private final custom:Ljava/lang/String;

.field private final honourEarlyReject:Z

.field private final number:Ljava/lang/String;

.field private final reference:Ljava/lang/String;

.field private final usedMethod:Lcom/sinch/verification/core/internal/VerificationMethodType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sinch/verification/core/VerificationInitData$Creator;

    invoke-direct {v0}, Lcom/sinch/verification/core/VerificationInitData$Creator;-><init>()V

    sput-object v0, Lcom/sinch/verification/core/VerificationInitData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sinch/verification/core/internal/VerificationMethodType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/sinch/verification/core/verification/VerificationLanguage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "usedMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acceptedLanguages"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/verification/core/VerificationInitData;->usedMethod:Lcom/sinch/verification/core/internal/VerificationMethodType;

    iput-object p2, p0, Lcom/sinch/verification/core/VerificationInitData;->number:Ljava/lang/String;

    iput-object p3, p0, Lcom/sinch/verification/core/VerificationInitData;->custom:Ljava/lang/String;

    iput-object p4, p0, Lcom/sinch/verification/core/VerificationInitData;->reference:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/sinch/verification/core/VerificationInitData;->honourEarlyReject:Z

    iput-object p6, p0, Lcom/sinch/verification/core/VerificationInitData;->acceptedLanguages:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sinch/verification/core/VerificationInitData;Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ILjava/lang/Object;)Lcom/sinch/verification/core/VerificationInitData;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/sinch/verification/core/VerificationInitData;->usedMethod:Lcom/sinch/verification/core/internal/VerificationMethodType;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getNumber()Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getCustom()Ljava/lang/String;

    move-result-object p3

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getReference()Ljava/lang/String;

    move-result-object p4

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getHonourEarlyReject()Z

    move-result p5

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getAcceptedLanguages()Ljava/util/List;

    move-result-object p6

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/sinch/verification/core/VerificationInitData;->copy(Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/sinch/verification/core/VerificationInitData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/sinch/verification/core/internal/VerificationMethodType;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/core/VerificationInitData;->usedMethod:Lcom/sinch/verification/core/internal/VerificationMethodType;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getCustom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getReference()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getHonourEarlyReject()Z

    move-result v0

    return v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sinch/verification/core/verification/VerificationLanguage;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)Lcom/sinch/verification/core/VerificationInitData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sinch/verification/core/internal/VerificationMethodType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/sinch/verification/core/verification/VerificationLanguage;",
            ">;)",
            "Lcom/sinch/verification/core/VerificationInitData;"
        }
    .end annotation

    const-string v0, "usedMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acceptedLanguages"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sinch/verification/core/VerificationInitData;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/sinch/verification/core/VerificationInitData;-><init>(Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/sinch/verification/core/VerificationInitData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sinch/verification/core/VerificationInitData;

    iget-object v0, p0, Lcom/sinch/verification/core/VerificationInitData;->usedMethod:Lcom/sinch/verification/core/internal/VerificationMethodType;

    iget-object v1, p1, Lcom/sinch/verification/core/VerificationInitData;->usedMethod:Lcom/sinch/verification/core/internal/VerificationMethodType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sinch/verification/core/VerificationInitData;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getCustom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sinch/verification/core/VerificationInitData;->getCustom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getReference()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sinch/verification/core/VerificationInitData;->getReference()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getHonourEarlyReject()Z

    move-result v0

    invoke-virtual {p1}, Lcom/sinch/verification/core/VerificationInitData;->getHonourEarlyReject()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sinch/verification/core/VerificationInitData;->getAcceptedLanguages()Ljava/util/List;

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

.method public final getAcceptedLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sinch/verification/core/verification/VerificationLanguage;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/sinch/verification/core/VerificationInitData;->acceptedLanguages:Ljava/util/List;

    return-object v0
.end method

.method public final getCustom()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/sinch/verification/core/VerificationInitData;->custom:Ljava/lang/String;

    return-object v0
.end method

.method public final getHonourEarlyReject()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/sinch/verification/core/VerificationInitData;->honourEarlyReject:Z

    return v0
.end method

.method public final getNumber()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/sinch/verification/core/VerificationInitData;->number:Ljava/lang/String;

    return-object v0
.end method

.method public final getReference()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/sinch/verification/core/VerificationInitData;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsedMethod()Lcom/sinch/verification/core/internal/VerificationMethodType;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/sinch/verification/core/VerificationInitData;->usedMethod:Lcom/sinch/verification/core/internal/VerificationMethodType;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sinch/verification/core/VerificationInitData;->usedMethod:Lcom/sinch/verification/core/internal/VerificationMethodType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getCustom()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getReference()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getHonourEarlyReject()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VerificationInitData(usedMethod="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sinch/verification/core/VerificationInitData;->usedMethod:Lcom/sinch/verification/core/internal/VerificationMethodType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", custom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getCustom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getReference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", honourEarlyReject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getHonourEarlyReject()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", acceptedLanguages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sinch/verification/core/VerificationInitData;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sinch/verification/core/VerificationInitData;->usedMethod:Lcom/sinch/verification/core/internal/VerificationMethodType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sinch/verification/core/VerificationInitData;->number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sinch/verification/core/VerificationInitData;->custom:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sinch/verification/core/VerificationInitData;->reference:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/sinch/verification/core/VerificationInitData;->honourEarlyReject:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/sinch/verification/core/VerificationInitData;->acceptedLanguages:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sinch/verification/core/verification/VerificationLanguage;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
