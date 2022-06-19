.class public final Lcom/callapp/contacts/model/objectbox/ViewType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/converter/PropertyConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/converter/PropertyConverter<",
        "Lcom/callapp/contacts/model/objectbox/TYPE;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0002\u0010\u0007J\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00022\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/callapp/contacts/model/objectbox/ViewType;",
        "Lio/objectbox/converter/PropertyConverter;",
        "Lcom/callapp/contacts/model/objectbox/TYPE;",
        "",
        "()V",
        "convertToDatabaseValue",
        "entityProperty",
        "(Lcom/callapp/contacts/model/objectbox/TYPE;)Ljava/lang/Integer;",
        "convertToEntityProperty",
        "viewValue",
        "(Ljava/lang/Integer;)Lcom/callapp/contacts/model/objectbox/TYPE;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertToDatabaseValue(Lcom/callapp/contacts/model/objectbox/TYPE;)Ljava/lang/Integer;
    .locals 0

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/callapp/contacts/model/objectbox/TYPE;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic convertToDatabaseValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p1, Lcom/callapp/contacts/model/objectbox/TYPE;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/ViewType;->convertToDatabaseValue(Lcom/callapp/contacts/model/objectbox/TYPE;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final convertToEntityProperty(Ljava/lang/Integer;)Lcom/callapp/contacts/model/objectbox/TYPE;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 102
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/model/objectbox/TYPE;->values()[Lcom/callapp/contacts/model/objectbox/TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 103
    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/TYPE;->getValue()I

    move-result v4

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_2

    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_3
    sget-object p1, Lcom/callapp/contacts/model/objectbox/TYPE;->MYVIEW:Lcom/callapp/contacts/model/objectbox/TYPE;

    return-object p1
.end method

.method public final bridge synthetic convertToEntityProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/model/objectbox/ViewType;->convertToEntityProperty(Ljava/lang/Integer;)Lcom/callapp/contacts/model/objectbox/TYPE;

    move-result-object p1

    return-object p1
.end method
