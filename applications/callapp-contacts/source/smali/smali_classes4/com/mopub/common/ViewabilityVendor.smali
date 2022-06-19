.class public Lcom/mopub/common/ViewabilityVendor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/ViewabilityVendor$Builder;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/net/URL;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/mopub/common/ViewabilityVendor$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/mopub/common/ViewabilityVendor$Builder;->a(Lcom/mopub/common/ViewabilityVendor$Builder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "omid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p1}, Lcom/mopub/common/ViewabilityVendor$Builder;->b(Lcom/mopub/common/ViewabilityVendor$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-static {p1}, Lcom/mopub/common/ViewabilityVendor$Builder;->c(Lcom/mopub/common/ViewabilityVendor$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->a:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/net/URL;

    invoke-static {p1}, Lcom/mopub/common/ViewabilityVendor$Builder;->b(Lcom/mopub/common/ViewabilityVendor$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->b:Ljava/net/URL;

    .line 52
    invoke-static {p1}, Lcom/mopub/common/ViewabilityVendor$Builder;->d(Lcom/mopub/common/ViewabilityVendor$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->c:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/mopub/common/ViewabilityVendor$Builder;->e(Lcom/mopub/common/ViewabilityVendor$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/ViewabilityVendor;->d:Ljava/lang/String;

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "ViewabilityVendor cannot be created."

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/mopub/common/ViewabilityVendor$Builder;Lcom/mopub/common/ViewabilityVendor$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lcom/mopub/common/ViewabilityVendor;-><init>(Lcom/mopub/common/ViewabilityVendor$Builder;)V

    return-void
.end method

.method public static createFromJsonArray(Lorg/json/JSONArray;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 128
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 129
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1116
    new-instance v3, Lcom/mopub/common/ViewabilityVendor$Builder;

    const-string v4, "javascriptResourceUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mopub/common/ViewabilityVendor$Builder;-><init>(Ljava/lang/String;)V

    const-string v4, "apiFramework"

    const-string v5, ""

    .line 1117
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mopub/common/ViewabilityVendor$Builder;->withApiFramework(Ljava/lang/String;)Lcom/mopub/common/ViewabilityVendor$Builder;

    move-result-object v4

    const-string v6, "vendorKey"

    .line 1118
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mopub/common/ViewabilityVendor$Builder;->withVendorKey(Ljava/lang/String;)Lcom/mopub/common/ViewabilityVendor$Builder;

    move-result-object v4

    const-string v6, "verificationParameters"

    .line 1119
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mopub/common/ViewabilityVendor$Builder;->withVerificationParameters(Ljava/lang/String;)Lcom/mopub/common/ViewabilityVendor$Builder;

    .line 1121
    invoke-virtual {v3}, Lcom/mopub/common/ViewabilityVendor$Builder;->build()Lcom/mopub/common/ViewabilityVendor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 80
    :cond_0
    instance-of v0, p1, Lcom/mopub/common/ViewabilityVendor;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 82
    :cond_1
    check-cast p1, Lcom/mopub/common/ViewabilityVendor;

    .line 84
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/mopub/common/ViewabilityVendor;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->b:Ljava/net/URL;

    iget-object v2, p1, Lcom/mopub/common/ViewabilityVendor;->b:Ljava/net/URL;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/mopub/common/ViewabilityVendor;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/mopub/common/ViewabilityVendor;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic fromJson$11(Lcom/google/gson/f;Lcom/google/gson/stream/JsonReader;Lproguard/optimize/gson/_OptimizedJsonReader;)V
    .locals 4

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p3, p2}, Lproguard/optimize/gson/_OptimizedJsonReader;->b(Lcom/google/gson/stream/JsonReader;)I

    move-result v0

    .line 3000
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x7

    const/4 v3, 0x0

    if-eq v0, v2, :cond_9

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_7

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_4

    const/16 v2, 0x44

    if-eq v0, v2, :cond_1

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->a:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iput-object v3, p0, Lcom/mopub/common/ViewabilityVendor;->a:Ljava/lang/String;

    goto :goto_5

    :cond_4
    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_5

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->c:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iput-object v3, p0, Lcom/mopub/common/ViewabilityVendor;->c:Ljava/lang/String;

    goto :goto_5

    :cond_7
    if-eqz v1, :cond_8

    const-class v0, Ljava/net/URL;

    invoke-virtual {p1, v0}, Lcom/google/gson/f;->a(Ljava/lang/Class;)Lcom/google/gson/j;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/gson/j;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    iput-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->b:Ljava/net/URL;

    goto :goto_0

    :cond_8
    iput-object v3, p0, Lcom/mopub/common/ViewabilityVendor;->b:Ljava/net/URL;

    goto :goto_5

    :cond_9
    if-eqz v1, :cond_b

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_a

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->d:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    iput-object v3, p0, Lcom/mopub/common/ViewabilityVendor;->d:Ljava/lang/String;

    :goto_5
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-void
.end method

.method public getJavascriptResourceUrl()Ljava/net/URL;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->b:Ljava/net/URL;

    return-object v0
.end method

.method public getVendorKey()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationNotExecuted()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getVerificationParameters()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 96
    iget-object v2, p0, Lcom/mopub/common/ViewabilityVendor;->b:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 97
    iget-object v2, p0, Lcom/mopub/common/ViewabilityVendor;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 98
    iget-object v2, p0, Lcom/mopub/common/ViewabilityVendor;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public synthetic toJson$11(Lcom/google/gson/f;Lcom/google/gson/stream/JsonWriter;Lproguard/optimize/gson/_OptimizedJsonWriter;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 2000
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->a:Ljava/lang/String;

    if-eq p0, v0, :cond_0

    const/16 v0, 0x44

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    :cond_0
    iget-object v0, p0, Lcom/mopub/common/ViewabilityVendor;->b:Ljava/net/URL;

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2e

    invoke-interface {p3, p2, v0}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    const-class v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/mopub/common/ViewabilityVendor;->b:Ljava/net/URL;

    invoke-static {p1, v0, v1}, Lproguard/optimize/gson/a;->a(Lcom/google/gson/f;Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/j;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lcom/google/gson/j;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/mopub/common/ViewabilityVendor;->c:Ljava/lang/String;

    if-eq p0, p1, :cond_2

    const/16 p1, 0x3b

    invoke-interface {p3, p2, p1}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget-object p1, p0, Lcom/mopub/common/ViewabilityVendor;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    :cond_2
    iget-object p1, p0, Lcom/mopub/common/ViewabilityVendor;->d:Ljava/lang/String;

    if-eq p0, p1, :cond_3

    const/4 p1, 0x7

    invoke-interface {p3, p2, p1}, Lproguard/optimize/gson/_OptimizedJsonWriter;->b(Lcom/google/gson/stream/JsonWriter;I)V

    iget-object p1, p0, Lcom/mopub/common/ViewabilityVendor;->d:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    :cond_3
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/mopub/common/ViewabilityVendor;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mopub/common/ViewabilityVendor;->b:Ljava/net/URL;

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mopub/common/ViewabilityVendor;->c:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
