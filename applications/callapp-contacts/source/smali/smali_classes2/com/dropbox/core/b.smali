.class public final Lcom/dropbox/core/b;
.super Lcom/dropbox/core/util/c;
.source "SourceFile"


# static fields
.field public static final a:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/dropbox/core/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Lcom/dropbox/core/DbxAppInfo$1;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAppInfo$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/b;->a:Lcom/dropbox/core/json/JsonReader;

    .line 194
    new-instance v0, Lcom/dropbox/core/DbxAppInfo$2;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAppInfo$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/b;->b:Lcom/dropbox/core/json/JsonReader;

    .line 214
    new-instance v0, Lcom/dropbox/core/DbxAppInfo$3;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAppInfo$3;-><init>()V

    sput-object v0, Lcom/dropbox/core/b;->c:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/dropbox/core/util/c;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/dropbox/core/b;->c(Ljava/lang/String;)V

    .line 43
    invoke-static {p2}, Lcom/dropbox/core/b;->d(Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/dropbox/core/b;->d:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/dropbox/core/b;->e:Ljava/lang/String;

    .line 47
    sget-object p1, Lcom/dropbox/core/e;->a:Lcom/dropbox/core/e;

    iput-object p1, p0, Lcom/dropbox/core/b;->f:Lcom/dropbox/core/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/e;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/dropbox/core/util/c;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/dropbox/core/b;->c(Ljava/lang/String;)V

    .line 57
    invoke-static {p2}, Lcom/dropbox/core/b;->d(Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/dropbox/core/b;->d:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/dropbox/core/b;->e:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/dropbox/core/b;->f:Lcom/dropbox/core/e;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 129
    invoke-static {p0}, Lcom/dropbox/core/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 238
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "can\'t be empty"

    return-object p0

    :cond_1
    const/4 v1, 0x0

    .line 239
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 240
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x21

    if-lt v2, v3, :cond_3

    const/16 v3, 0x7e

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "invalid character at index "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/util/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "can\'t be null"

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {p0}, Lcom/dropbox/core/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    return-void

    .line 260
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Bad \'key\': "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d(Ljava/lang/String;)V
    .locals 2

    .line 265
    invoke-static {p0}, Lcom/dropbox/core/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Bad \'secret\': "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/util/b;)V
    .locals 2

    const-string v0, "key"

    .line 114
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->d(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    const-string v0, "secret"

    .line 115
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object p1

    iget-object v0, p0, Lcom/dropbox/core/b;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->d(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    return-void
.end method
