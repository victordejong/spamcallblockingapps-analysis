.class public abstract Lcom/callapp/contacts/api/helper/backup/BaseBackup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/api/helper/backup/BaseBackup$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0008\u0010\r\u001a\u00020\nH&J\u0016\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H&J\u0008\u0010\u0013\u001a\u00020\u0014H&J\u0008\u0010\u0015\u001a\u00020\u0016H&J\u0006\u0010\u0017\u001a\u00020\nJ.\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00112\u0006\u0010\u0019\u001a\u00020\u00122\u0016\u0010\u001a\u001a\u0012\u0012\u0004\u0012\u00020\u001c0\u001bj\u0008\u0012\u0004\u0012\u00020\u001c`\u001dH&R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/callapp/contacts/api/helper/backup/BaseBackup;",
        "",
        "()V",
        "loginListener",
        "Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;",
        "getLoginListener",
        "()Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;",
        "setLoginListener",
        "(Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;)V",
        "doLogin",
        "",
        "activity",
        "Landroid/app/Activity;",
        "doLogout",
        "doUploadSync",
        "Lcom/callapp/contacts/api/helper/backup/BackUpResultData;",
        "backupDataList",
        "",
        "Lcom/callapp/contacts/api/helper/backup/BackUpData;",
        "getName",
        "",
        "isLoggedIn",
        "",
        "removeLoginListener",
        "updateExistingFiles",
        "backupData",
        "finishUploadList",
        "Ljava/util/ArrayList;",
        "Lcom/callapp/contacts/api/helper/backup/BackupUploadFileData;",
        "Lkotlin/collections/ArrayList;",
        "Companion",
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
.field public static final b:Lcom/callapp/contacts/api/helper/backup/BaseBackup$Companion;


# instance fields
.field a:Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/api/helper/backup/BaseBackup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/api/helper/backup/BaseBackup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/api/helper/backup/BaseBackup;->b:Lcom/callapp/contacts/api/helper/backup/BaseBackup$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/List;)Lcom/callapp/contacts/api/helper/backup/BackUpResultData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/api/helper/backup/BackUpData;",
            ">;)",
            "Lcom/callapp/contacts/api/helper/backup/BackUpResultData;"
        }
    .end annotation
.end method

.method public abstract d()V
.end method

.method public final getLoginListener()Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/BaseBackup;->a:Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public final setLoginListener(Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/BaseBackup;->a:Lcom/callapp/contacts/api/helper/backup/BackupLoginCallBack;

    return-void
.end method
