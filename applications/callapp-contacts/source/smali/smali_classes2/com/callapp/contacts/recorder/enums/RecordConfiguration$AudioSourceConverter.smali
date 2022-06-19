.class public Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AudioSourceConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/converter/PropertyConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/recorder/enums/RecordConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioSourceConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/objectbox/converter/PropertyConverter<",
        "Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToDatabaseValue(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;)Ljava/lang/Integer;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 305
    :cond_0
    invoke-static {p1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->access$100(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convertToDatabaseValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 289
    check-cast p1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AudioSourceConverter;->convertToDatabaseValue(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public convertToEntityProperty(Ljava/lang/Integer;)Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 295
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->values()[Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 296
    invoke-static {v3}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->access$100(Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;)I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 300
    :cond_2
    sget-object p1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->DEFAULT:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    return-object p1
.end method

.method public bridge synthetic convertToEntityProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 289
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AudioSourceConverter;->convertToEntityProperty(Ljava/lang/Integer;)Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    move-result-object p1

    return-object p1
.end method
