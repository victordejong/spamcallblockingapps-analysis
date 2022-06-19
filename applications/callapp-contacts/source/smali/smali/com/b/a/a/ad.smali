.class public Lcom/b/a/a/ad;
.super Lcom/b/a/a/a;
.source "SourceFile"


# static fields
.field private static final a:Lorg/mp4parser/aspectj/lang/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/b/a/a/ad;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "sthd"

    .line 13
    invoke-direct {p0, v0}, Lcom/b/a/a/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a()V
    .locals 9

    .line 1
    new-instance v8, Lorg/mp4parser/aspectj/a/b/b;

    const-class v0, Lcom/b/a/a/ad;

    const-string v1, "SubtitleMediaHeaderBox.java"

    invoke-direct {v8, v1, v0}, Lorg/mp4parser/aspectj/a/b/b;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "1"

    const-string v2, "toString"

    const-string v3, "com.coremedia.iso.boxes.SubtitleMediaHeaderBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/c;

    move-result-object v0

    const-string v1, "method-execution"

    const/16 v2, 0x1e

    invoke-virtual {v8, v1, v0, v2}, Lorg/mp4parser/aspectj/a/b/b;->a(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/c;I)Lorg/mp4parser/aspectj/lang/a$a;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/ad;->a:Lorg/mp4parser/aspectj/lang/a$a;

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/b/a/a/ad;->a(Ljava/nio/ByteBuffer;)J

    return-void
.end method

.method public getContent(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/b/a/a/ad;->b(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public getContentSize()J
    .locals 2

    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/b/a/a/ad;->a:Lorg/mp4parser/aspectj/lang/a$a;

    invoke-static {v0, p0, p0}, Lorg/mp4parser/aspectj/a/b/b;->a(Lorg/mp4parser/aspectj/lang/a$a;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mp4parser/aspectj/lang/a;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/googlecode/mp4parser/h;->a()Lcom/googlecode/mp4parser/h;

    invoke-static {v0}, Lcom/googlecode/mp4parser/h;->a(Lorg/mp4parser/aspectj/lang/a;)V

    const-string v0, "SubtitleMediaHeaderBox"

    return-object v0
.end method
