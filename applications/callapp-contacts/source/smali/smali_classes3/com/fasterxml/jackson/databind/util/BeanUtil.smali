.class public Lcom/fasterxml/jackson/databind/util/BeanUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUnsupportedType(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;
    .locals 4

    .line 298
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->isJava8TimeClass(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/16 v1, 0x2e

    const/16 v3, 0xa

    .line 304
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_0

    return-object v2

    :cond_0
    const-string v0, "Java 8 date/time"

    const-string v1, "com.fasterxml.jackson.datatype:jackson-datatype-jsr310"

    goto :goto_0

    .line 309
    :cond_1
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->isJodaTimeClass(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Joda date/time"

    const-string v1, "com.fasterxml.jackson.datatype:jackson-datatype-joda"

    :goto_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    .line 316
    invoke-static {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getTypeDescription(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    const/4 p0, 0x2

    aput-object v1, v2, p0

    const-string p0, "%s type %s not supported by default: add Module \"%s\" to enable handling"

    .line 315
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2
.end method

.method public static getDefaultValue(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 3

    .line 139
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->primitiveType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JavaType;->isReferenceType()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_2

    const-string p0, ""

    return-object p0

    .line 155
    :cond_2
    const-class v0, Ljava/util/Date;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    .line 156
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object p0

    .line 158
    :cond_3
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 159
    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 160
    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0

    .line 148
    :cond_5
    :goto_0
    sget-object p0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    return-object p0
.end method

.method private static isJava8TimeClass(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "java.time."

    .line 327
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isJodaTimeClass(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "org.joda.time."

    .line 338
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
