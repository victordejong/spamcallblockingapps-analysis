.class public Lp7/d$h;
.super Ljava/net/CacheResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public final a:Lp7/d$g;

.field public final b:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>(Lp7/d$g;Ljava/io/FileInputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    .line 2
    iput-object p1, p0, Lp7/d$h;->a:Lp7/d$g;

    .line 3
    iput-object p2, p0, Lp7/d$h;->b:Ljava/io/FileInputStream;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp7/d$h;->b:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp7/d$h;->a:Lp7/d$g;

    .line 2
    iget-object v0, v0, Lp7/d$g;->d:Lp7/b;

    .line 3
    invoke-virtual {v0}, Lp7/b;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
