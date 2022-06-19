.class public final synthetic Lcom/callapp/contacts/activity/contact/list/-$$Lambda$UpdateManager$V-aKy69aSH_A_zaokbHLHJzBaro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/play/core/install/b;


# instance fields
.field public final synthetic f$0:Lcom/google/android/play/core/appupdate/c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/appupdate/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$UpdateManager$V-aKy69aSH_A_zaokbHLHJzBaro;->f$0:Lcom/google/android/play/core/appupdate/c;

    return-void
.end method


# virtual methods
.method public final onStateUpdate(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$UpdateManager$V-aKy69aSH_A_zaokbHLHJzBaro;->f$0:Lcom/google/android/play/core/appupdate/c;

    check-cast p1, Lcom/google/android/play/core/install/a;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/list/UpdateManager;->lambda$V-aKy69aSH_A_zaokbHLHJzBaro(Lcom/google/android/play/core/appupdate/c;Lcom/google/android/play/core/install/a;)V

    return-void
.end method
