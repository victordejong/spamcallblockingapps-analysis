.class public abstract Lcom/verizon/ads/Plugin;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/verizon/ads/Logger;


# instance fields
.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/net/URI;

.field final f:Ljava/net/URL;

.field final g:I

.field final h:Landroid/content/Context;

.field public final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/verizon/ads/Plugin;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/Plugin;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/net/URL;I)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/verizon/ads/Plugin;->h:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/verizon/ads/Plugin;->id:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/verizon/ads/Plugin;->b:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/verizon/ads/Plugin;->c:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/verizon/ads/Plugin;->d:Ljava/lang/String;

    .line 56
    iput-object p6, p0, Lcom/verizon/ads/Plugin;->e:Ljava/net/URI;

    .line 57
    iput-object p7, p0, Lcom/verizon/ads/Plugin;->f:Ljava/net/URL;

    .line 58
    iput p8, p0, Lcom/verizon/ads/Plugin;->g:I

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Class;Ljava/lang/Class;Lcom/verizon/ads/ContentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/verizon/ads/AdAdapter;",
            ">;",
            "Lcom/verizon/ads/ContentFilter;",
            ")V"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/verizon/ads/Plugin;->id:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lcom/verizon/ads/VASAds;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/verizon/ads/ContentFilter;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 214
    :cond_0
    instance-of v0, p1, Lcom/verizon/ads/Plugin;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 218
    :cond_1
    check-cast p1, Lcom/verizon/ads/Plugin;

    .line 220
    iget-object v0, p0, Lcom/verizon/ads/Plugin;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/verizon/ads/Plugin;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/verizon/ads/Plugin;->h:Landroid/content/Context;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/verizon/ads/Plugin;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/net/URI;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/verizon/ads/Plugin;->e:Ljava/net/URI;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/verizon/ads/Plugin;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMinApiLevel()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/verizon/ads/Plugin;->g:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/verizon/ads/Plugin;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/verizon/ads/Plugin;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/net/URL;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/verizon/ads/Plugin;->f:Ljava/net/URL;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/verizon/ads/Plugin;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected abstract onPluginDisabled()V
.end method

.method protected abstract onPluginEnabled()V
.end method

.method protected abstract prepare()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Plugin{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/verizon/ads/Plugin;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/verizon/ads/Plugin;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", version=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/verizon/ads/Plugin;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", author=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/verizon/ads/Plugin;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", email=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/verizon/ads/Plugin;->e:Ljava/net/URI;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", website=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/verizon/ads/Plugin;->f:Ljava/net/URL;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", minApiLevel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/verizon/ads/Plugin;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", applicationContext =\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/verizon/ads/Plugin;->h:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
