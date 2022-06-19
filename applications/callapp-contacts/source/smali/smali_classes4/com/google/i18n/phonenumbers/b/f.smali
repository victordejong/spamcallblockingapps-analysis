.class public Lcom/google/i18n/phonenumbers/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lcom/google/i18n/phonenumbers/b/c;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/i18n/phonenumbers/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/google/i18n/phonenumbers/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/b/f;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/google/i18n/phonenumbers/b/c;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/b/c;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b/f;->c:Lcom/google/i18n/phonenumbers/b/c;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b/f;->d:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/b/f;->b:Ljava/lang/String;

    .line 1052
    const-class v0, Lcom/google/i18n/phonenumbers/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "config"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1053
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, 0x0

    .line 1056
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1057
    :try_start_1
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/b/f;->c:Lcom/google/i18n/phonenumbers/b/c;

    invoke-virtual {p1, v1}, Lcom/google/i18n/phonenumbers/b/c;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1061
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/b/f;->a(Ljava/io/InputStream;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1059
    :goto_0
    :try_start_2
    sget-object v1, Lcom/google/i18n/phonenumbers/b/f;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1061
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/b/f;->a(Ljava/io/InputStream;)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/b/f;->a(Ljava/io/InputStream;)V

    throw p1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/b/d;
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b/f;->c:Lcom/google/i18n/phonenumbers/b/c;

    .line 1157
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_9

    .line 1160
    iget-object v1, v0, Lcom/google/i18n/phonenumbers/b/c;->a:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_9

    .line 1164
    iget-object v0, v0, Lcom/google/i18n/phonenumbers/b/c;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1165
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 1220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1221
    invoke-static {p3, v1}, Lcom/google/i18n/phonenumbers/b/c;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1222
    invoke-static {p4, v1}, Lcom/google/i18n/phonenumbers/b/c;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 1179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1180
    sget-object v3, Lcom/google/i18n/phonenumbers/b/c;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0x5f

    if-eqz v3, :cond_0

    .line 1182
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object p2, v3

    goto/16 :goto_2

    .line 1186
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p2, v1

    goto/16 :goto_2

    .line 2215
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 2216
    :cond_2
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 1191
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_2

    .line 1194
    :cond_5
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 1195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1197
    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    move-object p2, p3

    goto :goto_2

    .line 1201
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1203
    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    goto :goto_1

    .line 1207
    :cond_7
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_2

    :cond_8
    move-object p2, v2

    .line 1167
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_9

    .line 1168
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1169
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_a

    return-object p2

    .line 71
    :cond_a
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/b/f;->d:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 3078
    const-class p1, Lcom/google/i18n/phonenumbers/b/f;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/google/i18n/phonenumbers/b/f;->b:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3079
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 3082
    :try_start_0
    new-instance p3, Ljava/io/ObjectInputStream;

    invoke-direct {p3, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3083
    :try_start_1
    new-instance p1, Lcom/google/i18n/phonenumbers/b/d;

    invoke-direct {p1}, Lcom/google/i18n/phonenumbers/b/d;-><init>()V

    .line 3084
    invoke-virtual {p1, p3}, Lcom/google/i18n/phonenumbers/b/d;->readExternal(Ljava/io/ObjectInput;)V

    .line 3085
    iget-object p2, p0, Lcom/google/i18n/phonenumbers/b/f;->d:Ljava/util/Map;

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3089
    invoke-static {p3}, Lcom/google/i18n/phonenumbers/b/f;->a(Ljava/io/InputStream;)V

    goto :goto_5

    :catchall_0
    move-exception p1

    move-object p2, p3

    goto :goto_4

    :catch_0
    move-exception p1

    move-object p2, p3

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 3087
    :goto_3
    :try_start_2
    sget-object p3, Lcom/google/i18n/phonenumbers/b/f;->a:Ljava/util/logging/Logger;

    sget-object p4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3089
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/b/f;->a(Ljava/io/InputStream;)V

    goto :goto_5

    :goto_4
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/b/f;->a(Ljava/io/InputStream;)V

    throw p1

    .line 74
    :cond_b
    :goto_5
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/b/f;->d:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/i18n/phonenumbers/b/d;

    return-object p1
.end method

.method private static a(Ljava/io/InputStream;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 98
    sget-object v0, Lcom/google/i18n/phonenumbers/b/f;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "zh"

    .line 143
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ja"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ko"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/google/i18n/phonenumbers/k$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 4047
    iget v0, p1, Lcom/google/i18n/phonenumbers/k$a;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4063
    :cond_0
    iget-wide v0, p1, Lcom/google/i18n/phonenumbers/k$a;->b:J

    const-wide/32 v2, 0x989680

    .line 122
    div-long/2addr v0, v2

    long-to-int v1, v0

    add-int/lit16 v0, v1, 0x3e8

    .line 124
    :goto_0
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/i18n/phonenumbers/b/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/b/d;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 126
    invoke-virtual {p3, p1}, Lcom/google/i18n/phonenumbers/b/d;->a(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    const-string p4, ""

    if-eqz p3, :cond_2

    .line 128
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    invoke-static {p2}, Lcom/google/i18n/phonenumbers/b/f;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "en"

    .line 129
    invoke-direct {p0, v0, p2, p4, p4}, Lcom/google/i18n/phonenumbers/b/f;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/b/d;

    move-result-object p2

    if-nez p2, :cond_3

    return-object p4

    .line 133
    :cond_3
    invoke-virtual {p2, p1}, Lcom/google/i18n/phonenumbers/b/d;->a(Lcom/google/i18n/phonenumbers/k$a;)Ljava/lang/String;

    move-result-object p3

    :cond_4
    if-eqz p3, :cond_5

    return-object p3

    :cond_5
    return-object p4
.end method
