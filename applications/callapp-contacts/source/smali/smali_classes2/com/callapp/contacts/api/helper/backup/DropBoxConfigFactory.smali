.class public final Lcom/callapp/contacts/api/helper/backup/DropBoxConfigFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/callapp/contacts/api/helper/backup/DropBoxConfigFactory;",
        "",
        "()V",
        "sDbxRequestConfig",
        "Lcom/dropbox/core/DbxRequestConfig;",
        "getRequestConfig",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/callapp/contacts/api/helper/backup/DropBoxConfigFactory;

.field private static b:Lcom/dropbox/core/h;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 6
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/DropBoxConfigFactory;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/backup/DropBoxConfigFactory;-><init>()V

    sput-object v0, Lcom/callapp/contacts/api/helper/backup/DropBoxConfigFactory;->a:Lcom/callapp/contacts/api/helper/backup/DropBoxConfigFactory;

    .line 1177
    new-instance v0, Lcom/dropbox/core/h$a;

    const-string v1, "callapp"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/h$a;-><init>(Ljava/lang/String;Lcom/dropbox/core/h$1;)V

    .line 9
    new-instance v1, Lcom/dropbox/core/http/b;

    invoke-static {}, Lcom/dropbox/core/http/b;->a()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dropbox/core/http/b;-><init>(Lokhttp3/OkHttpClient;)V

    check-cast v1, Lcom/dropbox/core/http/a;

    .line 1311
    iput-object v1, v0, Lcom/dropbox/core/h$a;->c:Lcom/dropbox/core/http/a;

    .line 1381
    new-instance v1, Lcom/dropbox/core/h;

    iget-object v3, v0, Lcom/dropbox/core/h$a;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/h$a;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/dropbox/core/h$a;->c:Lcom/dropbox/core/http/a;

    iget v6, v0, Lcom/dropbox/core/h$a;->d:I

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/dropbox/core/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/http/a;ILcom/dropbox/core/h$1;)V

    const-string v0, "DbxRequestConfig.newBuil\u2026()))\n            .build()"

    .line 10
    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/api/helper/backup/DropBoxConfigFactory;->b:Lcom/dropbox/core/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRequestConfig()Lcom/dropbox/core/h;
    .locals 1

    .line 13
    sget-object v0, Lcom/callapp/contacts/api/helper/backup/DropBoxConfigFactory;->b:Lcom/dropbox/core/h;

    return-object v0
.end method
