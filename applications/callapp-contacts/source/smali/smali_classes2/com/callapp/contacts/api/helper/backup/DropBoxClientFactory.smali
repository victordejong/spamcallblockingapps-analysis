.class public final Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;
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
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u0006\u001a\u00020\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;",
        "",
        "()V",
        "sDbxClient",
        "Lcom/dropbox/core/v2/DbxClientV2;",
        "getClient",
        "resetClient",
        "",
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
.field public static final a:Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;

.field private static b:Lcom/dropbox/core/v2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;

    invoke-direct {v0}, Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;-><init>()V

    sput-object v0, Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;->a:Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClient()Lcom/dropbox/core/v2/a;
    .locals 3

    .line 11
    sget-object v0, Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;->b:Lcom/dropbox/core/v2/a;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/dropbox/core/v2/a;

    sget-object v1, Lcom/callapp/contacts/api/helper/backup/DropBoxConfigFactory;->a:Lcom/callapp/contacts/api/helper/backup/DropBoxConfigFactory;

    invoke-virtual {v1}, Lcom/callapp/contacts/api/helper/backup/DropBoxConfigFactory;->getRequestConfig()Lcom/dropbox/core/h;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->hG:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/a;-><init>(Lcom/dropbox/core/h;Ljava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;->b:Lcom/dropbox/core/v2/a;

    .line 14
    :cond_0
    sget-object v0, Lcom/callapp/contacts/api/helper/backup/DropBoxClientFactory;->b:Lcom/dropbox/core/v2/a;

    return-object v0
.end method
