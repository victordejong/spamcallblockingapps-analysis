.class public final Lsv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgo;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/exoplayer/external/Format;)Z
    .locals 1

    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->k:Ljava/lang/String;

    const-string v0, "application/id3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Landroidx/media2/exoplayer/external/Format;)Lfo;
    .locals 0

    new-instance p1, Lsv$a;

    invoke-direct {p1, p0}, Lsv$a;-><init>(Lsv;)V

    return-object p1
.end method
