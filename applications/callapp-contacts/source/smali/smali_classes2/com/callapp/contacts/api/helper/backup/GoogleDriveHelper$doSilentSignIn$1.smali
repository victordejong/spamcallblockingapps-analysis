.class final Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$doSilentSignIn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/d<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012*\u0010\u0002\u001a&\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004 \u0005*\u0012\u0012\u000c\u0012\n \u0005*\u0004\u0018\u00010\u00040\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/google/android/gms/tasks/Task;",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        "kotlin.jvm.PlatformType",
        "onComplete"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

.field final synthetic b:Lkotlin/jvm/internal/ab$e;

.field final synthetic c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;Lkotlin/jvm/internal/ab$e;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$doSilentSignIn$1;->a:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    iput-object p2, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$doSilentSignIn$1;->b:Lkotlin/jvm/internal/ab$e;

    iput-object p3, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$doSilentSignIn$1;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 89
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$doSilentSignIn$1;->b:Lkotlin/jvm/internal/ab$e;

    iget-object v1, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$doSilentSignIn$1;->a:Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-static {v1, p1}, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;->a(Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/api/services/drive/Drive;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/ab$e;->a:Ljava/lang/Object;

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/api/helper/backup/GoogleDriveHelper$doSilentSignIn$1;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
