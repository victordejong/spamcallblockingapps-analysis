.class public final Lcom/dropbox/core/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/dropbox/core/json/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonWriter<",
            "Lcom/dropbox/core/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Long;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/dropbox/core/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lcom/dropbox/core/DbxAuthInfo$1;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAuthInfo$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/d;->a:Lcom/dropbox/core/json/JsonReader;

    .line 138
    new-instance v0, Lcom/dropbox/core/DbxAuthInfo$2;

    invoke-direct {v0}, Lcom/dropbox/core/DbxAuthInfo$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/d;->b:Lcom/dropbox/core/json/JsonWriter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/e;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/dropbox/core/d;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/dropbox/core/e;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/dropbox/core/e;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    .line 45
    iput-object p1, p0, Lcom/dropbox/core/d;->c:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/dropbox/core/d;->d:Ljava/lang/Long;

    .line 47
    iput-object p3, p0, Lcom/dropbox/core/d;->e:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/dropbox/core/d;->f:Lcom/dropbox/core/e;

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'host\' can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'accessToken\' can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/dropbox/core/d;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/dropbox/core/d;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/d;)Ljava/lang/Long;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/dropbox/core/d;->d:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/d;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/dropbox/core/d;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/dropbox/core/d;)Lcom/dropbox/core/e;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/dropbox/core/d;->f:Lcom/dropbox/core/e;

    return-object p0
.end method
