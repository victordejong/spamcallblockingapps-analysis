.class public Lcom/callapp/repackaged/org/apache/commons/codec/Charsets;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Ljava/nio/charset/Charset;

.field public static final c:Ljava/nio/charset/Charset;

.field public static final d:Ljava/nio/charset/Charset;

.field public static final e:Ljava/nio/charset/Charset;

.field public static final f:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ISO-8859-1"

    .line 101
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/callapp/repackaged/org/apache/commons/codec/Charsets;->a:Ljava/nio/charset/Charset;

    const-string v0, "US-ASCII"

    .line 114
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/callapp/repackaged/org/apache/commons/codec/Charsets;->b:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16"

    .line 128
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/callapp/repackaged/org/apache/commons/codec/Charsets;->c:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16BE"

    .line 141
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/callapp/repackaged/org/apache/commons/codec/Charsets;->d:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16LE"

    .line 154
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/callapp/repackaged/org/apache/commons/codec/Charsets;->e:Ljava/nio/charset/Charset;

    const-string v0, "UTF-8"

    .line 167
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/callapp/repackaged/org/apache/commons/codec/Charsets;->f:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
