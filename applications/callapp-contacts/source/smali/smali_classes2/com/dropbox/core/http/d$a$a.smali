.class public final Lcom/dropbox/core/http/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Ljava/net/Proxy;

.field b:J

.field c:J


# direct methods
.method private constructor <init>()V
    .locals 6

    .line 336
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    sget-wide v2, Lcom/dropbox/core/http/a;->a:J

    sget-wide v4, Lcom/dropbox/core/http/a;->b:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/http/d$a$a;-><init>(Ljava/net/Proxy;JJ)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/http/d$1;)V
    .locals 0

    .line 330
    invoke-direct {p0}, Lcom/dropbox/core/http/d$a$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/net/Proxy;JJ)V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Lcom/dropbox/core/http/d$a$a;->a:Ljava/net/Proxy;

    .line 341
    iput-wide p2, p0, Lcom/dropbox/core/http/d$a$a;->b:J

    .line 342
    iput-wide p4, p0, Lcom/dropbox/core/http/d$a$a;->c:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/Proxy;JJLcom/dropbox/core/http/d$1;)V
    .locals 0

    .line 330
    invoke-direct/range {p0 .. p5}, Lcom/dropbox/core/http/d$a$a;-><init>(Ljava/net/Proxy;JJ)V

    return-void
.end method
