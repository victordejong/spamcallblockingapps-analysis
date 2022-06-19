.class public final Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0007R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;",
        "",
        "()V",
        "OAUTH_CALLBACK_URL",
        "",
        "getOAUTH_CALLBACK_URL$annotations",
        "getOAUTH_CALLBACK_URL",
        "()Ljava/lang/String;",
        "setOAUTH_CALLBACK_URL",
        "(Ljava/lang/String;)V",
        "packageName",
        "get",
        "Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;
    .locals 2

    .line 45
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    const-string v1, "Singletons.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getDropBoxHelper()Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;

    move-result-object v0

    const-string v1, "Singletons.get().dropBoxHelper"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getOAUTH_CALLBACK_URL()Ljava/lang/String;
    .locals 1

    .line 40
    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/DropBoxHelper;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
