.class public Lcom/phone/libphone/prefixmapper/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final d:Ljava/util/logging/Logger;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/phone/libphone/prefixmapper/MappingFileProvider;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/phone/libphone/prefixmapper/PhonePrefixMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/phone/libphone/prefixmapper/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/phone/libphone/prefixmapper/d;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/phone/libphone/prefixmapper/MappingFileProvider;

    invoke-direct {v0}, Lcom/phone/libphone/prefixmapper/MappingFileProvider;-><init>()V

    iput-object v0, p0, Lcom/phone/libphone/prefixmapper/d;->b:Lcom/phone/libphone/prefixmapper/MappingFileProvider;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phone/libphone/prefixmapper/d;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/phone/libphone/prefixmapper/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/phone/libphone/prefixmapper/d;->d()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/phone/libphone/prefixmapper/d;->d:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/phone/libphone/prefixmapper/PhonePrefixMap;
    .locals 1

    iget-object v0, p0, Lcom/phone/libphone/prefixmapper/d;->b:Lcom/phone/libphone/prefixmapper/MappingFileProvider;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/phone/libphone/prefixmapper/MappingFileProvider;->getFileName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/phone/libphone/prefixmapper/d;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/phone/libphone/prefixmapper/d;->e(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p0, Lcom/phone/libphone/prefixmapper/d;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phone/libphone/prefixmapper/PhonePrefixMap;

    return-object p1
.end method

.method private d()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/phone/libphone/prefixmapper/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/phone/libphone/prefixmapper/d;->b:Lcom/phone/libphone/prefixmapper/MappingFileProvider;

    invoke-virtual {v0, v1}, Lcom/phone/libphone/prefixmapper/MappingFileProvider;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    :try_start_2
    const-string v2, "wbb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    invoke-static {v1}, Lcom/phone/libphone/prefixmapper/d;->a(Ljava/io/InputStream;)V

    return-void

    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/phone/libphone/prefixmapper/d;->a(Ljava/io/InputStream;)V

    throw v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/phone/libphone/prefixmapper/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Lcom/phone/libphone/prefixmapper/PhonePrefixMap;

    invoke-direct {v0}, Lcom/phone/libphone/prefixmapper/PhonePrefixMap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/phone/libphone/prefixmapper/PhonePrefixMap;->readExternal(Ljava/io/ObjectInput;)V

    iget-object v2, p0, Lcom/phone/libphone/prefixmapper/d;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/phone/libphone/prefixmapper/d;->a(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    sget-object v1, Lcom/phone/libphone/prefixmapper/d;->d:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lcom/phone/libphone/prefixmapper/d;->a(Ljava/io/InputStream;)V

    :goto_1
    return-void

    :goto_2
    invoke-static {v0}, Lcom/phone/libphone/prefixmapper/d;->a(Ljava/io/InputStream;)V

    throw p1
.end method

.method private f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ja"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ko"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public b(Lcom/phone/libphone/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lcom/phone/libphone/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/phone/libphone/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    const-wide/32 v2, 0x989680

    div-long/2addr v0, v2

    long-to-int v1, v0

    add-int/lit16 v0, v1, 0x3e8

    :goto_0
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/phone/libphone/prefixmapper/d;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/phone/libphone/prefixmapper/PhonePrefixMap;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3, p1}, Lcom/phone/libphone/prefixmapper/PhonePrefixMap;->lookup(Lcom/phone/libphone/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    const-string p4, ""

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    invoke-direct {p0, p2}, Lcom/phone/libphone/prefixmapper/d;->f(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "en"

    invoke-direct {p0, v0, p2, p4, p4}, Lcom/phone/libphone/prefixmapper/d;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/phone/libphone/prefixmapper/PhonePrefixMap;

    move-result-object p2

    if-nez p2, :cond_3

    return-object p4

    :cond_3
    invoke-virtual {p2, p1}, Lcom/phone/libphone/prefixmapper/PhonePrefixMap;->lookup(Lcom/phone/libphone/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p3

    :cond_4
    if-eqz p3, :cond_5

    move-object p4, p3

    :cond_5
    return-object p4
.end method
