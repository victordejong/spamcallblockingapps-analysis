.class public final Lcom/dropbox/core/a/d$i;
.super Lcom/dropbox/core/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/a/c<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/a/d$i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 212
    new-instance v0, Lcom/dropbox/core/a/d$i;

    invoke-direct {v0}, Lcom/dropbox/core/a/d$i;-><init>()V

    sput-object v0, Lcom/dropbox/core/a/d$i;->a:Lcom/dropbox/core/a/d$i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Lcom/dropbox/core/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .line 1221
    invoke-static {p1}, Lcom/dropbox/core/a/d$i;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 2216
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    return-void
.end method
