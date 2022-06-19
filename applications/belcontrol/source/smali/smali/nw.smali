.class public Lnw;
.super Lex$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnw$a;,
        Lnw$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lnw$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lex$f;-><init>()V

    iput-object p1, p0, Lnw;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaFormat;)Lfx;
    .locals 3

    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/cea-608"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnw;->b:Lnw$a;

    if-nez v0, :cond_0

    new-instance v0, Lnw$a;

    iget-object v1, p0, Lnw;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lnw$a;-><init>(Lnw;Landroid/content/Context;)V

    iput-object v0, p0, Lnw;->b:Lnw$a;

    :cond_0
    new-instance v0, Lnw$b;

    iget-object v1, p0, Lnw;->b:Lnw$a;

    invoke-direct {v0, v1, p1}, Lnw$b;-><init>(Lnw$a;Landroid/media/MediaFormat;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroid/media/MediaFormat;)Z
    .locals 2

    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "text/cea-608"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
