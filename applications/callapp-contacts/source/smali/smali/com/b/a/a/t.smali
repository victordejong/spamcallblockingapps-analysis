.class public final Lcom/b/a/a/t;
.super Lcom/b/a/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "nmhd"

    .line 29
    invoke-direct {p0, v0}, Lcom/b/a/a/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/b/a/a/t;->a(Ljava/nio/ByteBuffer;)J

    return-void
.end method

.method public final getContent(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/b/a/a/t;->b(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public final getContentSize()J
    .locals 2

    const-wide/16 v0, 0x4

    return-wide v0
.end method
