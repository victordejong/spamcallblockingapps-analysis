.class public final Lorg/apache/commons/lang3/c/a/e;
.super Lorg/apache/commons/lang3/c/a/j;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/c/a/j;-><init>(IIZ)V

    return-void
.end method

.method public static a()Lorg/apache/commons/lang3/c/a/e;
    .locals 4

    .line 83
    new-instance v0, Lorg/apache/commons/lang3/c/a/e;

    const/16 v1, 0x20

    const/16 v2, 0x7f

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/lang3/c/a/e;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method protected final b(I)Ljava/lang/String;
    .locals 3

    .line 113
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-char v2, p1, v2

    invoke-static {v2}, Lorg/apache/commons/lang3/c/a/e;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-char p1, p1, v1

    invoke-static {p1}, Lorg/apache/commons/lang3/c/a/e;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
