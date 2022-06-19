.class Lcom/telguarder/helpers/backend/JsonRequest$2;
.super Lcom/google/gson/TypeAdapter;
.source "JsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/helpers/backend/JsonRequest;->getGson()Lcom/google/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/telguarder/features/advertisements/AdvertNetworkName;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/helpers/backend/JsonRequest;


# direct methods
.method constructor <init>(Lcom/telguarder/helpers/backend/JsonRequest;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/telguarder/helpers/backend/JsonRequest$2;->this$0:Lcom/telguarder/helpers/backend/JsonRequest;

    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/telguarder/features/advertisements/AdvertNetworkName;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    const-class v0, Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 322
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 324
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 325
    aget-object v2, v0, v1

    const-class v3, Lcom/google/gson/annotations/SerializedName;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/google/gson/annotations/SerializedName;

    if-eqz v2, :cond_0

    .line 326
    invoke-interface {v2}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->valueOf(Ljava/lang/String;)Lcom/telguarder/features/advertisements/AdvertNetworkName;

    move-result-object v2

    .line 328
    invoke-static {v2}, Lcom/telguarder/ApplicationConstants;->isAdNetworkEnabled(Lcom/telguarder/features/advertisements/AdvertNetworkName;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    invoke-virtual {p0, p1}, Lcom/telguarder/helpers/backend/JsonRequest$2;->read(Lcom/google/gson/stream/JsonReader;)Lcom/telguarder/features/advertisements/AdvertNetworkName;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/telguarder/features/advertisements/AdvertNetworkName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    check-cast p2, Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {p0, p1, p2}, Lcom/telguarder/helpers/backend/JsonRequest$2;->write(Lcom/google/gson/stream/JsonWriter;Lcom/telguarder/features/advertisements/AdvertNetworkName;)V

    return-void
.end method
