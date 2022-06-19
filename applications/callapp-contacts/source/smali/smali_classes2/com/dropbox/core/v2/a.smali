.class public final Lcom/dropbox/core/v2/a;
.super Lcom/dropbox/core/v2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/dropbox/core/h;Lcom/dropbox/core/oauth/a;)V
    .locals 6

    .line 66
    sget-object v3, Lcom/dropbox/core/e;->a:Lcom/dropbox/core/e;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/a;-><init>(Lcom/dropbox/core/h;Lcom/dropbox/core/oauth/a;Lcom/dropbox/core/e;Ljava/lang/String;Lcom/dropbox/core/v2/c/a;)V

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/core/h;Lcom/dropbox/core/oauth/a;Lcom/dropbox/core/e;Ljava/lang/String;Lcom/dropbox/core/v2/c/a;)V
    .locals 7

    .line 108
    new-instance v6, Lcom/dropbox/core/v2/a$a;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/a$a;-><init>(Lcom/dropbox/core/h;Lcom/dropbox/core/oauth/a;Lcom/dropbox/core/e;Ljava/lang/String;Lcom/dropbox/core/v2/c/a;)V

    invoke-direct {p0, v6}, Lcom/dropbox/core/v2/b;-><init>(Lcom/dropbox/core/v2/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/h;Ljava/lang/String;)V
    .locals 2

    .line 36
    sget-object v0, Lcom/dropbox/core/e;->a:Lcom/dropbox/core/e;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/dropbox/core/v2/a;-><init>(Lcom/dropbox/core/h;Ljava/lang/String;Lcom/dropbox/core/e;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/h;Ljava/lang/String;Lcom/dropbox/core/e;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v2/a;-><init>(Lcom/dropbox/core/h;Ljava/lang/String;Lcom/dropbox/core/e;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/h;Ljava/lang/String;Lcom/dropbox/core/e;Ljava/lang/String;)V
    .locals 6

    .line 99
    new-instance v2, Lcom/dropbox/core/oauth/a;

    invoke-direct {v2, p2}, Lcom/dropbox/core/oauth/a;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/a;-><init>(Lcom/dropbox/core/h;Lcom/dropbox/core/oauth/a;Lcom/dropbox/core/e;Ljava/lang/String;Lcom/dropbox/core/v2/c/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 51
    sget-object v0, Lcom/dropbox/core/e;->a:Lcom/dropbox/core/e;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/dropbox/core/v2/a;-><init>(Lcom/dropbox/core/h;Ljava/lang/String;Lcom/dropbox/core/e;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/dropbox/core/v2/c;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/b;-><init>(Lcom/dropbox/core/v2/c;)V

    return-void
.end method
