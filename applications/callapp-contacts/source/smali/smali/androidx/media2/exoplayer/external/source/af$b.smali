.class final Landroidx/media2/exoplayer/external/source/af$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:Landroidx/media2/exoplayer/external/extractor/g;

.field private final b:[Landroidx/media2/exoplayer/external/extractor/g;


# direct methods
.method public constructor <init>([Landroidx/media2/exoplayer/external/extractor/g;)V
    .locals 0

    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af$b;->b:[Landroidx/media2/exoplayer/external/extractor/g;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/i;Landroid/net/Uri;)Landroidx/media2/exoplayer/external/extractor/g;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1076
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af$b;->a:Landroidx/media2/exoplayer/external/extractor/g;

    if-eqz v0, :cond_0

    return-object v0

    .line 1079
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/af$b;->b:[Landroidx/media2/exoplayer/external/extractor/g;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1080
    aget-object p1, v0, v2

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af$b;->a:Landroidx/media2/exoplayer/external/extractor/g;

    goto :goto_2

    .line 1082
    :cond_1
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 1084
    :try_start_0
    invoke-interface {v3, p1}, Landroidx/media2/exoplayer/external/extractor/g;->a(Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1085
    iput-object v3, p0, Landroidx/media2/exoplayer/external/source/af$b;->a:Landroidx/media2/exoplayer/external/extractor/g;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    throw p2

    :catch_0
    :cond_2
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1094
    :cond_3
    :goto_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/af$b;->a:Landroidx/media2/exoplayer/external/extractor/g;

    if-eqz p1, :cond_4

    .line 1102
    :goto_2
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/af$b;->a:Landroidx/media2/exoplayer/external/extractor/g;

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/g;->a(Landroidx/media2/exoplayer/external/extractor/i;)V

    .line 1103
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/af$b;->a:Landroidx/media2/exoplayer/external/extractor/g;

    return-object p1

    .line 1095
    :cond_4
    new-instance p1, Landroidx/media2/exoplayer/external/source/UnrecognizedInputFormatException;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/af$b;->b:[Landroidx/media2/exoplayer/external/extractor/g;

    .line 1097
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/ac;->b([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "None of the available extractors ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") could read the stream."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Landroidx/media2/exoplayer/external/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p1
.end method
