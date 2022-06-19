.class public Landroidx/media2/exoplayer/external/source/UnrecognizedInputFormatException;
.super Landroidx/media2/exoplayer/external/ParserException;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    .line 43
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/UnrecognizedInputFormatException;->a:Landroid/net/Uri;

    return-void
.end method
