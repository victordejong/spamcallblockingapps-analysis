.class public final Lscala/collection/immutable/StringOps$;
.super Ljava/lang/Object;
.source "StringOps.scala"


# static fields
.field public static final MODULE$:Lscala/collection/immutable/StringOps$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/StringOps$;

    invoke-direct {v0}, Lscala/collection/immutable/StringOps$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    return-void
.end method


# virtual methods
.method public final apply$extension(Ljava/lang/String;I)C
    .locals 0

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public final equals$extension(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    .line 30
    instance-of v0, p2, Lscala/collection/immutable/StringOps;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    check-cast p2, Lscala/collection/immutable/StringOps;

    invoke-virtual {p2}, Lscala/collection/immutable/StringOps;->repr()Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method public final hashCode$extension(Ljava/lang/String;)I
    .locals 0

    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    return p1
.end method

.method public final length$extension(Ljava/lang/String;)I
    .locals 0

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method public final newBuilder$extension(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 36
    sget-object p1, Lscala/collection/mutable/StringBuilder$;->MODULE$:Lscala/collection/mutable/StringBuilder$;

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder$;->newBuilder()Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final seq$extension(Ljava/lang/String;)Lscala/collection/immutable/WrappedString;
    .locals 1

    .line 50
    new-instance v0, Lscala/collection/immutable/WrappedString;

    invoke-direct {v0, p1}, Lscala/collection/immutable/WrappedString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final slice$extension(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    if-le p3, p2, :cond_3

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0, p1}, Lscala/collection/immutable/StringOps$;->length$extension(Ljava/lang/String;)I

    move-result v0

    if-le p3, v0, :cond_2

    invoke-virtual {p0, p1}, Lscala/collection/immutable/StringOps$;->length$extension(Ljava/lang/String;)I

    move-result p3

    .line 45
    :cond_2
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public final thisCollection$extension(Ljava/lang/String;)Lscala/collection/immutable/WrappedString;
    .locals 1

    .line 32
    new-instance v0, Lscala/collection/immutable/WrappedString;

    invoke-direct {v0, p1}, Lscala/collection/immutable/WrappedString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toCollection$extension(Ljava/lang/String;Ljava/lang/String;)Lscala/collection/immutable/WrappedString;
    .locals 0

    .line 33
    new-instance p1, Lscala/collection/immutable/WrappedString;

    invoke-direct {p1, p2}, Lscala/collection/immutable/WrappedString;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public final toString$extension(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
