.class final Lorg/jsoup/c/i$c;
.super Lorg/jsoup/c/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field b:Z

.field private final c:Ljava/lang/StringBuilder;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 272
    invoke-direct {p0, v0}, Lorg/jsoup/c/i;-><init>(Lorg/jsoup/c/i$1;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/c/i$c;->c:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 262
    iput-boolean v0, p0, Lorg/jsoup/c/i$c;->b:Z

    .line 273
    sget-object v0, Lorg/jsoup/c/i$i;->Comment:Lorg/jsoup/c/i$i;

    iput-object v0, p0, Lorg/jsoup/c/i$c;->a:Lorg/jsoup/c/i$i;

    return-void
.end method

.method private i()V
    .locals 2

    .line 298
    iget-object v0, p0, Lorg/jsoup/c/i$c;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 299
    iget-object v1, p0, Lorg/jsoup/c/i$c;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lorg/jsoup/c/i$c;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method final a(C)Lorg/jsoup/c/i$c;
    .locals 1

    .line 291
    invoke-direct {p0}, Lorg/jsoup/c/i$c;->i()V

    .line 292
    iget-object v0, p0, Lorg/jsoup/c/i$c;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method final a(Ljava/lang/String;)Lorg/jsoup/c/i$c;
    .locals 1

    .line 281
    invoke-direct {p0}, Lorg/jsoup/c/i$c;->i()V

    .line 282
    iget-object v0, p0, Lorg/jsoup/c/i$c;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iput-object p1, p0, Lorg/jsoup/c/i$c;->d:Ljava/lang/String;

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lorg/jsoup/c/i$c;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-object p0
.end method

.method final a()Lorg/jsoup/c/i;
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/jsoup/c/i$c;->c:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/jsoup/c/i$c;->a(Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lorg/jsoup/c/i$c;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lorg/jsoup/c/i$c;->b:Z

    return-object p0
.end method

.method final h()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/jsoup/c/i$c;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jsoup/c/i$c;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<!--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/c/i$c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
