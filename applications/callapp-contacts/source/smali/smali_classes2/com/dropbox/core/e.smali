.class public final Lcom/dropbox/core/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/dropbox/core/e;

.field public static final f:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lcom/dropbox/core/json/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonWriter<",
            "Lcom/dropbox/core/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lcom/dropbox/core/e;

    const-string v1, "api.dropboxapi.com"

    const-string v2, "content.dropboxapi.com"

    const-string v3, "www.dropbox.com"

    const-string v4, "notify.dropboxapi.com"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/core/e;->a:Lcom/dropbox/core/e;

    .line 114
    new-instance v0, Lcom/dropbox/core/DbxHost$1;

    invoke-direct {v0}, Lcom/dropbox/core/DbxHost$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/e;->f:Lcom/dropbox/core/json/JsonReader;

    .line 184
    new-instance v0, Lcom/dropbox/core/DbxHost$2;

    invoke-direct {v0}, Lcom/dropbox/core/DbxHost$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/e;->g:Lcom/dropbox/core/json/JsonWriter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/dropbox/core/e;->b:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/dropbox/core/e;->c:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/dropbox/core/e;->d:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/dropbox/core/e;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/dropbox/core/e;
    .locals 5

    .line 1111
    new-instance v0, Lcom/dropbox/core/e;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "api-"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "api-content-"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "meta-"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "api-notify-"

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/dropbox/core/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/core/e;)Ljava/lang/String;
    .locals 4

    .line 1172
    iget-object v0, p0, Lcom/dropbox/core/e;->d:Ljava/lang/String;

    const-string v1, "meta-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/e;->b:Ljava/lang/String;

    const-string v1, "api-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/e;->c:Ljava/lang/String;

    const-string v1, "api-content-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dropbox/core/e;->e:Ljava/lang/String;

    const-string v1, "api-notify-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/dropbox/core/e;->d:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1174
    iget-object v1, p0, Lcom/dropbox/core/e;->b:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1175
    iget-object v2, p0, Lcom/dropbox/core/e;->c:Ljava/lang/String;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1176
    iget-object p0, p0, Lcom/dropbox/core/e;->e:Ljava/lang/String;

    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1177
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/e;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/dropbox/core/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/e;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/dropbox/core/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/dropbox/core/e;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/dropbox/core/e;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/dropbox/core/e;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/dropbox/core/e;->e:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 99
    :cond_0
    instance-of v1, p1, Lcom/dropbox/core/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 100
    check-cast p1, Lcom/dropbox/core/e;

    .line 101
    iget-object v1, p1, Lcom/dropbox/core/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/dropbox/core/e;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/e;->c:Ljava/lang/String;

    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/dropbox/core/e;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/e;->d:Ljava/lang/String;

    .line 103
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/dropbox/core/e;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/dropbox/core/e;->e:Ljava/lang/String;

    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/dropbox/core/e;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/e;->c:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/e;->d:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/dropbox/core/e;->e:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
