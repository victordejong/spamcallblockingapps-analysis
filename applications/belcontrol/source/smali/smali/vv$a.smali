.class public final Lvv$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lkv;

.field public final c:I

.field public final d:I

.field public final e:Landroidx/media2/exoplayer/external/Format;


# direct methods
.method public constructor <init>(IILandroidx/media2/exoplayer/external/Format;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lvv$a;->a:I

    const/4 p1, 0x1

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_1

    if-ne p4, p1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget p1, p3, Landroidx/media2/exoplayer/external/Format;->c:I

    :goto_0
    if-nez p3, :cond_3

    const-string v0, "und"

    goto :goto_1

    :cond_3
    iget-object v0, p3, Landroidx/media2/exoplayer/external/Format;->C:Ljava/lang/String;

    :goto_1
    invoke-static {p2, v0, p1}, Lvv$a;->a(ILjava/lang/String;I)Lkv;

    move-result-object p1

    iput-object p1, p0, Lvv$a;->b:Lkv;

    iput p2, p0, Lvv$a;->c:I

    iput p4, p0, Lvv$a;->d:I

    iput-object p3, p0, Lvv$a;->e:Landroidx/media2/exoplayer/external/Format;

    return-void
.end method

.method public static a(ILjava/lang/String;I)Lkv;
    .locals 5

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const/4 v1, 0x2

    const-string v2, "mime"

    const/4 v3, 0x1

    if-nez p0, :cond_0

    const-string v4, "text/cea-608"

    :goto_0
    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-ne p0, v3, :cond_1

    const-string v4, "text/cea-708"

    goto :goto_0

    :cond_1
    if-ne p0, v1, :cond_6

    const-string v4, "text/vtt"

    goto :goto_0

    :goto_1
    const-string v2, "language"

    invoke-virtual {v0, v2, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 p1, p2, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    const-string v4, "is-forced-subtitle"

    invoke-virtual {v0, v4, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    and-int/lit8 p1, p2, 0x4

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    const-string v4, "is-autoselect"

    invoke-virtual {v0, v4, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    const-string p1, "is-default"

    invoke-virtual {v0, p1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    if-ne p0, v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x4

    :goto_5
    new-instance p0, Lkv;

    invoke-direct {p0, v2, v0}, Lkv;-><init>(ILandroid/media/MediaFormat;)V

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
