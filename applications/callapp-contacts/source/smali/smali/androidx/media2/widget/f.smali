.class final Landroidx/media2/widget/f;
.super Landroidx/media2/widget/o$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/f$a;,
        Landroidx/media2/widget/f$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroidx/media2/widget/f$a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroidx/media2/widget/o$d;-><init>()V

    .line 61
    iput-object p1, p0, Landroidx/media2/widget/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/MediaFormat;)Z
    .locals 2

    const-string v0, "mime"

    .line 66
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "text/cea-708"

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Landroid/media/MediaFormat;)Landroidx/media2/widget/p;
    .locals 3

    const-string v0, "mime"

    .line 75
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/cea-708"

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Landroidx/media2/widget/f;->b:Landroidx/media2/widget/f$a;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Landroidx/media2/widget/f$a;

    iget-object v1, p0, Landroidx/media2/widget/f;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/media2/widget/f$a;-><init>(Landroidx/media2/widget/f;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media2/widget/f;->b:Landroidx/media2/widget/f$a;

    .line 80
    :cond_0
    new-instance v0, Landroidx/media2/widget/f$b;

    iget-object v1, p0, Landroidx/media2/widget/f;->b:Landroidx/media2/widget/f$a;

    invoke-direct {v0, v1, p1}, Landroidx/media2/widget/f$b;-><init>(Landroidx/media2/widget/f$a;Landroid/media/MediaFormat;)V

    return-object v0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No matching format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
