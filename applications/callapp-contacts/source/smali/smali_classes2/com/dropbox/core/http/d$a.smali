.class public final Lcom/dropbox/core/http/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/http/d$a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/dropbox/core/http/d$a;


# instance fields
.field final b:Ljava/net/Proxy;

.field final c:J

.field final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1324
    new-instance v0, Lcom/dropbox/core/http/d$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dropbox/core/http/d$a$a;-><init>(Lcom/dropbox/core/http/d$1;)V

    .line 1428
    new-instance v1, Lcom/dropbox/core/http/d$a;

    iget-object v3, v0, Lcom/dropbox/core/http/d$a$a;->a:Ljava/net/Proxy;

    iget-wide v4, v0, Lcom/dropbox/core/http/d$a$a;->b:J

    iget-wide v6, v0, Lcom/dropbox/core/http/d$a$a;->c:J

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/dropbox/core/http/d$a;-><init>(Ljava/net/Proxy;JJLcom/dropbox/core/http/d$1;)V

    .line 258
    sput-object v1, Lcom/dropbox/core/http/d$a;->a:Lcom/dropbox/core/http/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/net/Proxy;JJ)V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/dropbox/core/http/d$a;->b:Ljava/net/Proxy;

    .line 268
    iput-wide p2, p0, Lcom/dropbox/core/http/d$a;->c:J

    .line 269
    iput-wide p4, p0, Lcom/dropbox/core/http/d$a;->d:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/net/Proxy;JJLcom/dropbox/core/http/d$1;)V
    .locals 0

    .line 253
    invoke-direct/range {p0 .. p5}, Lcom/dropbox/core/http/d$a;-><init>(Ljava/net/Proxy;JJ)V

    return-void
.end method
