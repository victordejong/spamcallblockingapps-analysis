.class public abstract Lcom/amazonaws/services/s3/model/NotificationConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private events:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Lcom/amazonaws/services/s3/model/Filter;

.field private objectPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->events:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->objectPrefixes:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Ljava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/amazonaws/services/s3/model/S3Event;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->events:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->objectPrefixes:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/S3Event;

    .line 58
    iget-object v1, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->events:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Event;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/String;)V
    .locals 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->events:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->objectPrefixes:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 71
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 72
    iget-object v3, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->events:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addEvent(Lcom/amazonaws/services/s3/model/S3Event;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->events:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/S3Event;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEvent(Ljava/lang/String;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->events:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addObjectPrefix(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->objectPrefixes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic fromJson$10(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;Lproguard/optimize/gson/_OptimizedJsonReader;)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3, p2}, Lproguard/optimize/gson/_OptimizedJsonReader;->b(Lcom/google/gson/stream/JsonReader;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->fromJsonField$10(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-void
.end method

.method protected synthetic fromJsonField$10(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;I)V
    .locals 3

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xd

    const/4 v2, 0x0

    if-eq p3, v1, :cond_5

    const/16 v1, 0x2c

    if-eq p3, v1, :cond_3

    const/16 v1, 0x36

    if-eq p3, v1, :cond_1

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    new-instance p3, Lcom/amazonaws/services/s3/model/NotificationConfigurationobjectPrefixesTypeToken;

    invoke-direct {p3}, Lcom/amazonaws/services/s3/model/NotificationConfigurationobjectPrefixesTypeToken;-><init>()V

    invoke-virtual {p1, p3}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->objectPrefixes:Ljava/util/List;

    return-void

    :cond_2
    iput-object v2, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->objectPrefixes:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    const-class p3, Lcom/amazonaws/services/s3/model/Filter;

    invoke-virtual {p1, p3}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/Filter;

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->filter:Lcom/amazonaws/services/s3/model/Filter;

    return-void

    :cond_4
    iput-object v2, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->filter:Lcom/amazonaws/services/s3/model/Filter;

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-void

    :cond_5
    if-eqz v0, :cond_6

    new-instance p3, Lcom/amazonaws/services/s3/model/NotificationConfigurationeventsTypeToken;

    invoke-direct {p3}, Lcom/amazonaws/services/s3/model/NotificationConfigurationeventsTypeToken;-><init>()V

    invoke-virtual {p1, p3}, Lcom/google/gson/f;->a(Lcom/google/gson/a/a;)Lcom/google/gson/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->events:Ljava/util/Set;

    return-void

    :cond_6
    iput-object v2, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->events:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    return-void
.end method

.method public getEvents()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->events:Ljava/util/Set;

    return-object v0
.end method

.method public getFilter()Lcom/amazonaws/services/s3/model/Filter;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->filter:Lcom/amazonaws/services/s3/model/Filter;

    return-object v0
.end method

.method public getObjectPrefixes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->objectPrefixes:Ljava/util/List;

    return-object v0
.end method

.method public setEvents(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->events:Ljava/util/Set;

    return-void
.end method

.method public setFilter(Lcom/amazonaws/services/s3/model/Filter;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->filter:Lcom/amazonaws/services/s3/model/Filter;

    return-void
.end method

.method public setObjectPrefixes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->objectPrefixes:Ljava/util/List;

    return-void
.end method

.method public synthetic toJson$10(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 0

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->toJsonBody$10(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method protected synthetic toJsonBody$10(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->events:Ljava/util/Set;

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    new-instance v0, Lcom/amazonaws/services/s3/model/NotificationConfigurationeventsTypeToken;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/NotificationConfigurationeventsTypeToken;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->events:Ljava/util/Set;

    invoke-static {p1, v0, v1}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/f;Lcom/google/gson/a/a;Ljava/lang/Object;)Lcom/google/gson/j;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->objectPrefixes:Ljava/util/List;

    if-eq p0, v0, :cond_1

    const/16 v0, 0x36

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    new-instance v0, Lcom/amazonaws/services/s3/model/NotificationConfigurationobjectPrefixesTypeToken;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/NotificationConfigurationobjectPrefixesTypeToken;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->objectPrefixes:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/f;Lcom/google/gson/a/a;Ljava/lang/Object;)Lcom/google/gson/j;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->filter:Lcom/amazonaws/services/s3/model/Filter;

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2c

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    const-class p3, Lcom/amazonaws/services/s3/model/Filter;

    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->filter:Lcom/amazonaws/services/s3/model/Filter;

    invoke-static {p1, p3, v0}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/f;Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/j;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public withEvents(Ljava/util/Set;)Lcom/amazonaws/services/s3/model/NotificationConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/s3/model/NotificationConfiguration;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->events:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 121
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->events:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public withFilter(Lcom/amazonaws/services/s3/model/Filter;)Lcom/amazonaws/services/s3/model/NotificationConfiguration;
    .locals 0

    .line 194
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->setFilter(Lcom/amazonaws/services/s3/model/Filter;)V

    return-object p0
.end method

.method public varargs withObjectPrefixes([Ljava/lang/String;)Lcom/amazonaws/services/s3/model/NotificationConfiguration;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->objectPrefixes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 132
    array-length v0, p1

    if-lez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/NotificationConfiguration;->objectPrefixes:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method
