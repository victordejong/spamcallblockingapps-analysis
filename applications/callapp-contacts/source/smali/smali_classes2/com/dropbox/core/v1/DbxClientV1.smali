.class public final Lcom/dropbox/core/v1/DbxClientV1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v1/DbxClientV1$b;,
        Lcom/dropbox/core/v1/DbxClientV1$IODbxException;,
        Lcom/dropbox/core/v1/DbxClientV1$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z = true

.field private static e:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/dropbox/core/h;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/dropbox/core/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1673
    new-instance v0, Lcom/dropbox/core/v1/DbxClientV1$11;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxClientV1$11;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxClientV1;->e:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/h;Ljava/lang/String;)V
    .locals 1

    .line 54
    sget-object v0, Lcom/dropbox/core/e;->a:Lcom/dropbox/core/e;

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v1/DbxClientV1;-><init>(Lcom/dropbox/core/h;Ljava/lang/String;Lcom/dropbox/core/e;)V

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/h;Ljava/lang/String;Lcom/dropbox/core/e;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 68
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1;->b:Lcom/dropbox/core/h;

    .line 69
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxClientV1;->c:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/dropbox/core/v1/DbxClientV1;->d:Lcom/dropbox/core/e;

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'host\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'accessToken\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'requestConfig\' is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
