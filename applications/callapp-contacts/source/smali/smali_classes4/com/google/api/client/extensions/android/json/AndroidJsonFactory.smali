.class public Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;
.super Lcom/google/api/client/json/JsonFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/extensions/android/json/AndroidJsonFactory$InstanceHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 68
    invoke-direct {p0}, Lcom/google/api/client/json/JsonFactory;-><init>()V

    .line 2037
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 1048
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1050
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 1051
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "running on Android SDK level %s but requires minimum %s"

    .line 2067
    invoke-static {v0, v1, v4}, Lcom/google/common/base/m;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;
    .locals 1

    .line 57
    sget-object v0, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory$InstanceHolder;->INSTANCE:Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    return-object v0
.end method


# virtual methods
.method public createJsonGenerator(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonGenerator;
    .locals 1

    .line 99
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;

    move-result-object p1

    return-object p1
.end method

.method public createJsonGenerator(Ljava/io/Writer;)Lcom/google/api/client/json/JsonGenerator;
    .locals 2

    .line 104
    new-instance v0, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;

    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, p1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/extensions/android/json/AndroidJsonGenerator;-><init>(Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;Landroid/util/JsonWriter;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;
    .locals 2

    .line 76
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/google/api/client/a/g;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createJsonParser(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonParser;
    .locals 1

    if-nez p2, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;

    move-result-object p1

    return-object p1

    .line 84
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object p1

    return-object p1
.end method

.method public createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;
    .locals 2

    .line 94
    new-instance v0, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;

    new-instance v1, Landroid/util/JsonReader;

    invoke-direct {v1, p1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, p0, v1}, Lcom/google/api/client/extensions/android/json/AndroidJsonParser;-><init>(Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;Landroid/util/JsonReader;)V

    return-object v0
.end method

.method public createJsonParser(Ljava/lang/String;)Lcom/google/api/client/json/JsonParser;
    .locals 1

    .line 89
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object p1

    return-object p1
.end method
