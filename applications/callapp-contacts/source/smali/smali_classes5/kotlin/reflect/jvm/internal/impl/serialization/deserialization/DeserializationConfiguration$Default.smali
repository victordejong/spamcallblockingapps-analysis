.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$Default;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAllowUnstableDependencies()Z
    .locals 1

    .line 42
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$DefaultImpls;->getAllowUnstableDependencies(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;)Z

    move-result v0

    return v0
.end method

.method public final getPreserveDeclarationsOrdering()Z
    .locals 1

    .line 42
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$DefaultImpls;->getPreserveDeclarationsOrdering(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;)Z

    move-result v0

    return v0
.end method

.method public final getReleaseCoroutines()Z
    .locals 1

    .line 42
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$DefaultImpls;->getReleaseCoroutines(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;)Z

    move-result v0

    return v0
.end method

.method public final getReportErrorsOnPreReleaseDependencies()Z
    .locals 1

    .line 42
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$DefaultImpls;->getReportErrorsOnPreReleaseDependencies(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;)Z

    move-result v0

    return v0
.end method

.method public final getSkipMetadataVersionCheck()Z
    .locals 1

    .line 42
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$DefaultImpls;->getSkipMetadataVersionCheck(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;)Z

    move-result v0

    return v0
.end method

.method public final getSkipPrereleaseCheck()Z
    .locals 1

    .line 42
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$DefaultImpls;->getSkipPrereleaseCheck(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;)Z

    move-result v0

    return v0
.end method

.method public final getTypeAliasesAllowed()Z
    .locals 1

    .line 42
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration$DefaultImpls;->getTypeAliasesAllowed(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;)Z

    move-result v0

    return v0
.end method
