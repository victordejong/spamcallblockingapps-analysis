.class public final Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Lcom/fasterxml/jackson/core/util/JacksonFeature;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected _enabled:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;->_enabled:I

    return-void
.end method

.method public static fromDefaults([Lcom/fasterxml/jackson/core/util/JacksonFeature;)Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/fasterxml/jackson/core/util/JacksonFeature;",
            ">([TF;)",
            "Lcom/fasterxml/jackson/core/util/JacksonFeatureSet<",
            "TF;>;"
        }
    .end annotation

    .line 39
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_2

    .line 47
    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 48
    invoke-interface {v3}, Lcom/fasterxml/jackson/core/util/JacksonFeature;->enabledByDefault()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    invoke-interface {v3}, Lcom/fasterxml/jackson/core/util/JacksonFeature;->getMask()I

    move-result v3

    or-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_1
    new-instance p0, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;-><init>(I)V

    return-object p0

    .line 40
    :cond_2
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    array-length p0, p0

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v3, v0

    const-string p0, "Can not use type `%s` with JacksonFeatureSet: too many entries (%d > 31)"

    .line 41
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final isEnabled(Lcom/fasterxml/jackson/core/util/JacksonFeature;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 95
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/util/JacksonFeature;->getMask()I

    move-result p1

    iget v0, p0, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;->_enabled:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final with(Lcom/fasterxml/jackson/core/util/JacksonFeature;)Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Lcom/fasterxml/jackson/core/util/JacksonFeatureSet<",
            "TF;>;"
        }
    .end annotation

    .line 69
    iget v0, p0, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;->_enabled:I

    invoke-interface {p1}, Lcom/fasterxml/jackson/core/util/JacksonFeature;->getMask()I

    move-result p1

    or-int/2addr p1, v0

    .line 70
    iget v0, p0, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;->_enabled:I

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/util/JacksonFeatureSet;-><init>(I)V

    return-object v0
.end method
