.class final Landroidx/media2/widget/d;
.super Landroidx/media2/widget/o$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/d$a;,
        Landroidx/media2/widget/d$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroidx/media2/widget/d$a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroidx/media2/widget/o$d;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/media2/widget/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/MediaFormat;)Z
    .locals 2

    const-string v0, "mime"

    .line 55
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "text/cea-608"

    .line 57
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

    .line 64
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/cea-608"

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Landroidx/media2/widget/d;->b:Landroidx/media2/widget/d$a;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroidx/media2/widget/d$a;

    iget-object v1, p0, Landroidx/media2/widget/d;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/media2/widget/d$a;-><init>(Landroidx/media2/widget/d;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media2/widget/d;->b:Landroidx/media2/widget/d$a;

    .line 69
    :cond_0
    new-instance v0, Landroidx/media2/widget/d$b;

    iget-object v1, p0, Landroidx/media2/widget/d;->b:Landroidx/media2/widget/d$a;

    invoke-direct {v0, v1, p1}, Landroidx/media2/widget/d$b;-><init>(Landroidx/media2/widget/d$a;Landroid/media/MediaFormat;)V

    return-object v0

    .line 71
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
