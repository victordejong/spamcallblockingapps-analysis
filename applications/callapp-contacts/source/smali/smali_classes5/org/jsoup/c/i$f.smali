.class final Lorg/jsoup/c/i$f;
.super Lorg/jsoup/c/i$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 249
    invoke-direct {p0}, Lorg/jsoup/c/i$h;-><init>()V

    .line 250
    sget-object v0, Lorg/jsoup/c/i$i;->EndTag:Lorg/jsoup/c/i$i;

    iput-object v0, p0, Lorg/jsoup/c/i$f;->a:Lorg/jsoup/c/i$i;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "</"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/c/i$f;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jsoup/c/i$f;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "(unset)"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
