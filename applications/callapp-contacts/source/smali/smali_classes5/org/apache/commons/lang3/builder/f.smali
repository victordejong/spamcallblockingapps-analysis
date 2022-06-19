.class public final Lorg/apache/commons/lang3/builder/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static volatile c:Lorg/apache/commons/lang3/builder/ToStringStyle;


# instance fields
.field public final a:Ljava/lang/StringBuffer;

.field public final b:Lorg/apache/commons/lang3/builder/ToStringStyle;

.field private final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    sput-object v0, Lorg/apache/commons/lang3/builder/f;->c:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/commons/lang3/builder/f;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V
    .locals 1

    const/4 v0, 0x0

    .line 235
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/f;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .locals 1

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 1117
    sget-object p2, Lorg/apache/commons/lang3/builder/f;->c:Lorg/apache/commons/lang3/builder/ToStringStyle;

    :cond_0
    if-nez p3, :cond_1

    .line 254
    new-instance p3, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 256
    :cond_1
    iput-object p3, p0, Lorg/apache/commons/lang3/builder/f;->a:Ljava/lang/StringBuffer;

    .line 257
    iput-object p2, p0, Lorg/apache/commons/lang3/builder/f;->b:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 258
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/f;->d:Ljava/lang/Object;

    .line 260
    invoke-virtual {p2, p3, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 2019
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/f;->d:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2028
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/f;->a:Ljava/lang/StringBuffer;

    .line 2040
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/f;->b:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 1056
    invoke-virtual {v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1058
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/lang3/builder/f;->b:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 3028
    iget-object v2, p0, Lorg/apache/commons/lang3/builder/f;->a:Ljava/lang/StringBuffer;

    .line 1058
    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 4028
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/f;->a:Ljava/lang/StringBuffer;

    .line 1060
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
