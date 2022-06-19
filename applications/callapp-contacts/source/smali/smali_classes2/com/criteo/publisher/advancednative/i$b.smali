.class final Lcom/criteo/publisher/advancednative/i$b;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/advancednative/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/net/URL;

.field private final b:Lcom/criteo/publisher/j0/g;


# direct methods
.method private constructor <init>(Ljava/net/URL;Lcom/criteo/publisher/j0/g;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/i$b;->a:Ljava/net/URL;

    .line 91
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/i$b;->b:Lcom/criteo/publisher/j0/g;

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/URL;Lcom/criteo/publisher/j0/g;Lcom/criteo/publisher/advancednative/i$a;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/criteo/publisher/advancednative/i$b;-><init>(Ljava/net/URL;Lcom/criteo/publisher/j0/g;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/i$b;->b:Lcom/criteo/publisher/j0/g;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/i$b;->a:Ljava/net/URL;

    const/4 v2, 0x0

    .line 1135
    invoke-virtual {v0, v1, v2}, Lcom/criteo/publisher/j0/g;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method
